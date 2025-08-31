
### Simplicity is so simple it fits on a T-shirt. Does that mean it's as limited as Bitcoin Script?

No, the “simplicity” refers to its foundational design and formal semantics, not its expressiveness.

- Bitcoin Script is deliberately limited; Simplicity is finitarily complete → it can program any finite computation.

- Complex off-chain (even Turing-complete) computations can be verified on-chain with Simplicity. 


### Is Simplicity Turing-complete like EVM?

No, and that’s a feature!

- **Predictable Resource Costs:** No “out of gas” issues; costs are known at compile-time.

- **Guaranteed Termination:** No unbounded loops/recursion → all programs halt.

- **Enhanced Verifiability:** Programs are analyzable, enabling formal reasoning.

### How does Simplicity handle state? Does it have global state like Ethereum?

No global state. Simplicity is purely functional: each program is a function mapping inputs → outputs.

Operates in the Bitcoin UTXO model:

  - Contracts = small programs guarding coins.

  - Spending = providing witness data so the contract evaluates to true.



### How do I prove my Simplicity contract is correct?

Formal verification happens in [Rocq](https://rocq-prover.org/), not directly in Simplicity.

Process:

  1. Simplicity semantics are modeled in Coq.

  2. You prove correctness properties (safety, termination, resource use).

  3. Proofs give guarantees before deployment — no chance of “oops, can’t patch.”


### Simplicity is low-level. Do I write contracts directly in it?

Not usually. There are higher-level options:

| Tool | Description |
|------|-------------|
| **SimplicityHL** | Rust-like syntax compiling to Simplicity |
| **Web IDE** | Try Simfony examples in the browser |
| **Haskell Implementation** | Build Simplicity expressions in a tagless-final style |

The future vision is that there are multiple high-level languages which all compile down to Simplicity + proofs.


### What are Jets, and how do they make programs efficient?

A [Simplicity jet](jets-explained.md) is a pre-defined, optimized function that replaces an equivalent Simplicity expression to speed up execution without changing its meaning.

Benefits:

  - Programs remain formally verifiable.

  - Heavy operations run in optimized C instead of interpreted combinators.

  - Keeps execution fast, compact, and analyzable.

In the FAQ we need to stress that Simplicity is an enhancement rather than replacement for (move away from all or nothing thinking about Simplicity).
Turn this into a question (From Bitcoin++ interview):
Russell: In a taproot leaf level you can mix and match Bitcoin Script with Simplicity script.
Nifty: With simplicity you get the best of both worlds.
Russell: Yes, we are not competing with bitcoin script, we are collaborating with bitcoin script.
Question: Understand how they would track a futures contract with different strike prices - what’s my position/how exposed am I? 
Question: How to track traction IDs?
More to come…
