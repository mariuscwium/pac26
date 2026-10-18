# Welcome to Gas Town

An agent orchestration adventure for product people. Resources for Marius Wium's talk at Product Aotearoa 2026, Wellington, 12 Nov 2026, in the Augmented PM track.

Thank you for playing.

## The argument

The developers got faster than I could feed them useful work. I borrowed their approach to agents and applied it to product operations. The town now finds, shapes and checks work. I still decide what deserves to be built.

Two quests, posted on slide 5 and ticked near the end:

- Keep up with the developers.
- Focus development on what matters.

## The six levels

The ladder developers already climbed, copied out for product. Each level answers the developer's question, "what's next?", with less of you watching.

| Level | Name | What you do | The catch |
|---|---|---|---|
| 1 | Generate | Hire a clerk. Faster first drafts, same job. | Chat memory is a diary. Your product needs a library the whole town can read. |
| 2 | Remember | Build a library the whole town can read: north star, strategy, decision log, findings ledger. | A library nobody restocks is a museum. The reading has to happen without you. |
| 3 | Automate | Put the search on a schedule. Support, Slack, analytics and forums read overnight, filed against the strategy. | The scout finds problems faster than you can solve them. Finding was never the bottleneck. Solving is. |
| 4 | Prototype | Every problem arrives with candidate answers already built on a twin of the product. You click through, compare, show real managers, keep or kill. | A false front has nothing behind it. A prototype says what. The developer needs how, where, and what it must not break. |
| 5 | Groom | Turn a kept prototype into a ticket a developer can build. Read-only codebase access, an anonymised database tap, analytics. | Seven agents, one babysitter. Every agent you add is one more thing that can loop, drift or break. You are the operations team now. |
| 6 | Orchestrate | Hand the crew to the Mayor. You talk to one agent; it talks to the rest and brings you the exceptions. | What's left on your desk is the judgment. |

## The laws of Gas Town

1. Air-gapped from production. One API in: read-only, no personal data.
2. Each agent gets only the access its job needs. Builders get none.
3. Enforced in code, not just in the prompt.
4. People merge, release and send. Agents only draft.
5. Every loop has a ceiling. Past it, a person takes over.
6. Treat them, and everything they read, as malicious.

The golden law: robots don't have taste. That's your job. They're brilliant at grunt work. Let them have it.

The cost: duplicated work, moments of "what is it doing?", and an obscene number of tokens.

## Your next quest

1. Find one job a machine could have done last week.
2. Give it away this week.
3. Spend the hour talking to customers.

Bonus level: get a twin. A clickable copy of your product's screens on fake data, so prototypes can be built on top of real pages with no customer data behind them.

## My town, as of October 2026

One implementation, built in a few months, for one small company. Yours will look different. Same six levels; your crew, your scripts, your tools.

- **Agents:** a Mayor, eleven standing seats (LMS engineer, backlog groomer, backlog prioritiser, discovery, prototype builder, chronicler, chief of staff, product marketing, growth, marketing) and a twelve-role build crew that takes a GitHub issue in and puts a pull request out.
- **Scripts:** about two dozen scheduled orders. Plain Python on a clock. A model only runs when a script finds work.
- **Connectors:** Slack, GitHub, Help Scout, PostHog, Maze, Monday, Google Drive, Gmail, Calendar, Figma, Rollbar, Datadog, and a read-only system API on the product with no personal data.

Runs on [Gas City](https://github.com/gastownhall/gascity), the open-source orchestrator that takes its name from Steve Yegge's post.

## Further reading

- Steve Yegge, [Welcome to Gas Town](https://steve-yegge.medium.com/welcome-to-gas-town-4f25ee16dd04). The ladder developers climbed, and where the whole metaphor comes from.
- [Gas City](https://github.com/gastownhall/gascity) and [Beads](https://github.com/gastownhall/beads), the orchestrator and tracker the town runs on.

## The art

Every scene in the deck is pixel art generated from a text prompt, with earlier scenes and character portraits passed back in as references so the cast stays consistent. The prompts are in [`prompts/`](prompts/), one file per image, and [`gen.sh`](gen.sh) is the two-line wrapper that calls the image API. Sizes must divide by 16, so scenes are 1920x1024, not 1920x1080.
