#!/bin/zsh
# usage: gen.sh <out.png> <size> <prompt-file> [reference images...]
# ponytail: no retries; rerun on failure
out=$1 size=$2 promptfile=$3; shift 3
# ponytail: parses the export line in ~/.zshrc; zsh -ic hangs when run in the background
K=${OPENAI_API_KEY:-$(sed -nE 's/^[[:space:]]*export[[:space:]]+OPENAI_API_KEY=["'"'"']?([^"'"'"' ]+).*/\1/p' ~/.zshrc | tail -1)}
[[ -n $K ]] || { echo "no OPENAI_API_KEY" >&2; exit 1; }
refs=(); for r in "$@"; do refs+=(-F "image[]=@$r"); done
if (( $#refs )); then url=https://api.openai.com/v1/images/edits; else url=https://api.openai.com/v1/images/generations; fi
if (( $#refs )); then
  curl -s $url -H "Authorization: Bearer $K" -F model=${MODEL:-gpt-image-2.5-sunburst} -F size=$size -F quality=high -F "prompt=<$promptfile" $refs > $out.json
else
  python3 -c "import json,sys,os;print(json.dumps({'model':os.environ.get('MODEL','gpt-image-2.5-sunburst'),'size':sys.argv[1],'quality':'high','prompt':open(sys.argv[2]).read()}))" $size $promptfile |
    curl -s $url -H "Authorization: Bearer $K" -H "Content-Type: application/json" -d @- > $out.json
fi
python3 -c "
import json,sys,base64
d=json.load(open(sys.argv[1]))
if 'error' in d: sys.exit('API error: '+d['error']['message'])
open(sys.argv[2],'wb').write(base64.b64decode(d['data'][0]['b64_json'])); print('saved',sys.argv[2])
" $out.json $out && rm $out.json
