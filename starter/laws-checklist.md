# The laws, as a checklist

Answer these for each agent before you connect it to anything. If an answer is "it's in the prompt", the answer is no.

## Law 1: isolated from production
- [ ] Can it reach production data? Through what, exactly?
- [ ] Is that door read-only?
- [ ] Is personal data removed or masked before the agent sees it, not after?

## Law 2: only the access its job needs
- [ ] List every tool and key it has. Which of them does this job use?
- [ ] Remove the rest.
- [ ] Do the agents that write code have any way to message people or read customer data? They shouldn't.

## Law 3: enforced in code, not just in the prompt
- [ ] For each "never" in the brief: is there a tool that would let it do that anyway?
- [ ] Do long sessions restart before they get long enough to forget their rules?

## Law 4: people merge, release and send
- [ ] Does everything it produces arrive as a draft: a draft pull request, an unassigned issue, an unsent email?
- [ ] Is there a named person for each kind of draft?

## Law 5: every loop has a ceiling
- [ ] How many rounds can a review or a retry go before it stops?
- [ ] What happens at the ceiling? It should wait for a person, not try something else.
- [ ] What is the most this could cost in a bad week?

## Law 6: treat them, and everything they read, as malicious
- [ ] Does it read anything written by outsiders: support tickets, forum posts, web pages, email?
- [ ] Does it also have private data and a way to send things out? Any two of the three is fine. All three is a breach waiting to happen. See Simon Willison on [the lethal trifecta](https://simonwillison.net/2025/Jun/16/the-lethal-trifecta/).

## The golden law
The agents prepare the evidence. We stay responsible for the outcomes.
- [ ] For each agent, who is "we"? Write the name down.
