# Welcome to Gas Town

An agent orchestration adventure for product people. Resources for Marius Wium's talk at Product Aotearoa 2026, Wellington, 12 Nov 2026, in the Augmented PM track.

Thank you for playing.

## Start here

Scanned the QR code in the room? Three things, in order of effort:

1. **Do the quest.** [`starter/first-job.md`](starter/first-job.md) is a ten-minute worksheet for picking the one job to give away this week.
2. **Hire your first agent.** [`starter/seat-brief.md`](starter/seat-brief.md) is the four-part template every seat in my town uses: a brief, a drawer, a clock and a line to the Mayor. Copy it, fill it in, paste it into the tool you already have.
3. **Read the laws before you give it access.** [`starter/laws-checklist.md`](starter/laws-checklist.md) is the six laws as questions to answer for each agent.

I'll be posting more detail on LinkedIn after the conference: what I built, what broke, and what I'd do differently. [Follow me there](https://www.linkedin.com/in/mariuswium/) to get it, or message me if you get stuck on a level.

## The argument

Our developers learned to build almost anything, fast. Pull requests merged each month went from about 50 to 356, then levelled off once the obvious things were built. The question became: what should we build next?

The game gives you three tries. Say yes to every idea and build it fast: you end up owning everything. Read every signal and explore every idea yourself: you become the queue and burn out. Or learn from the developers. They stopped watching the robots, shaped what went in and checked what came out. Attention is the bottleneck.

The quest: agentic product ops. Extend the software factory to the rest of the town, deciding what to build and telling people about it. We still decide.

## The six levels

Each level hands the machine a bit more of the work, with less of you watching. We keep the judgment.

| Level | Name | What it does | The catch |
|---|---|---|---|
| 1 | The Chatbot | Drafts, questions and compares ideas when you ask. A sharper first version in minutes. | It only moves while you're talking to it. And there's only one of you. |
| 2 | The Vault | Keeps strategy, evidence and decisions, including the ideas you stopped, in one shared place. Every agent starts from what you know. | It's only as fresh as you keep it. Take four days off and it goes stale. |
| 3 | The Messenger | Reads support, Slack, the forums and usage on a schedule, and files what it finds in the vault. | Soon there's more than anyone can read, and every idea still waits for you. |
| 4 | The Prototyper | Builds clickable versions of the top problems in a copy of the product, on made-up data. You test, take forward or stop. | A painted front. Nobody has checked what's behind it. |
| 5 | The Engineer | Checks each prototype against the real code while it's cheap to change, then readies the ticket. | Agents break: credits run out, connectors stop, loops repeat. And you're the one fixing them. |
| 6 | The Mayor | Runs the other agents and reads every report. You talk to one agent; only the decisions that need you come back. | What's left on your desk is the judgment. |

## The laws of Gas Town

1. Isolated from production. One API in: read-only, no personal data.
2. Each agent gets only the access its job needs. Builders get none.
3. Enforced in code, not just in the prompt.
4. People merge, release and send. Agents only draft.
5. Every loop has a ceiling. Past it, a person takes over.
6. Treat them, and everything they read, as malicious.

The golden law: the agents prepare the evidence. We stay responsible for the outcomes. "We" is product, design and engineering, together.

The cost: three or four of the top Claude plans (Max 20x), plus team accounts for everyone else. Also duplicated work, and moments of "what is it doing?".

## Your next quest

1. Find one job a machine could have done last week.
2. Give it away this week.
3. Spend the hour talking to customers.

Bonus level: build a twin to explore a question you haven't answered yet. A clickable copy of your product's screens on made-up data, so prototypes land on real-looking pages with no customer data behind them.

## My town, as of November 2026

One implementation, built over about a year, for one small company. Yours will look different. Same six levels; your crew, your scripts, your tools.

- **Agents:** a Mayor and twelve seats: messenger, prototyper, engineer, prioritiser, groomer, chronicler (the weekly note), chief of staff (who's working on what), product marketing, growth, marketing and a SOC 2 steward, plus a build crew that takes a GitHub issue in and puts a draft pull request out.
- **Scripts:** about two dozen scheduled jobs. Plain Python on a clock. A model only runs when a script finds work.
- **Connectors:** Slack, GitHub, Help Scout, PostHog, Maze, Monday, Google Drive, Gmail, Calendar, Figma, Rollbar, Datadog, and a read-only system API on the product with no personal data.

Runs on [Gas City](https://github.com/gastownhall/gascity), the open-source orchestrator that takes its name from Steve Yegge's post.

## Further reading

Where the metaphor comes from:

- Steve Yegge, [Welcome to Gas Town](https://steve-yegge.medium.com/welcome-to-gas-town-4f25ee16dd04) (Jan 2026). The ladder developers climbed, and the whole metaphor.
- Dan Shapiro, [The Five Levels: from Spicy Autocomplete to the Dark Factory](https://www.danshapiro.com/blog/2026/01/the-five-levels-from-spicy-autocomplete-to-the-software-factory/) (Jan 2026). The same ladder as the levels of a self-driving car, from manual to a dark factory where nobody reads the code. Almost everyone stops at level three.
- Steve Yegge, [Welcome to Gas City](https://steve-yegge.medium.com/welcome-to-gas-city-57f564bb3607) (Apr 2026). The toolkit the town runs on. Code: [Gas City](https://github.com/gastownhall/gascity) and [Beads](https://github.com/gastownhall/beads).
- Steve Yegge, [The Shape of Things to Come, Part 1: The Continuous Thunderdome](https://yegge.ai/essays/the-shape-of-things-to-come/) (Aug 2026). Where his own Gas Town fell apart and what he built next. Read this one too. The honeymoon ends for everyone.

How to build the crew:

- Anthropic, [Building effective agents](https://www.anthropic.com/engineering/building-effective-agents). Workflows before agents. Start with the simplest thing that works. Most of my orders are plain scripts for this reason.
- Anthropic, [How we built our multi-agent research system](https://www.anthropic.com/engineering/multi-agent-research-system). The Mayor pattern: one lead, parallel workers, and the token bill that comes with it.
- Mike Mason, [AI coding agents in 2026: coherence through orchestration, not autonomy](https://mikemason.ca/writing/ai-coding-agents-jan-2026/) (Jan 2026). Supervision is the product. Same argument as the ladder, from the engineering side.

The laws:

- Simon Willison, [The lethal trifecta for AI agents](https://simonwillison.net/2025/Jun/16/the-lethal-trifecta/) (Jun 2025). Private data, untrusted content, a way out. Any two is fine. All three is a breach waiting to happen. Law six, in one page.
- Simon Willison, [Highlights from my conversation about agentic engineering on Lenny's Podcast](https://simonw.substack.com/p/highlights-from-my-conversation-about) (Apr 2026). Building is cheap now, so testing and deciding are the bottleneck. The golden law, from someone who ships a lot.

For product people:

- Marty Cagan, [A vision for product teams](https://www.svpg.com/a-vision-for-product-teams/) (Feb 2025). Delivery gets automated, the trio does discovery. The quest, before the tooling existed.
- Tal Raviv, [Make product management fun again with AI agents](https://www.lennysnewsletter.com/p/make-product-management-fun-again) (Lenny's Newsletter, Apr 2025, paid). Levels one to three for a PM, with worked examples.
- Colin Matthews, [How to get your entire team prototyping with AI](https://www.lennysnewsletter.com/p/how-to-get-your-entire-team-prototyping) (Lenny's Newsletter, Jun 2025, paid). Level four: component libraries, baselines and forks, so prototypes land on real pages.

## The art

Every scene in the deck is pixel art generated from a text prompt, with earlier scenes and character portraits passed back in as references so the cast stays consistent. Ask me if you want the prompts.

## Who made this

I'm Marius Wium, Head of Product at RedSeed in Christchurch, New Zealand. I've spent about a year building the town in this talk alongside the day job, and I've made most of the mistakes in it at least once.

I like comparing notes with other teams doing this. If you're setting up something similar, want this talk or a hands-on session for your team or meetup, or think I've got something wrong, [find me on LinkedIn](https://www.linkedin.com/in/mariuswium/). Corrections and better ideas are also welcome as issues on this repository.
