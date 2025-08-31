# Simplicity for EVM Developers

<div class="video-wrapper">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/8Q1JPKvp7TE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

Welcome, Solidity and EVM developers! You're used to a world of account-based models, Turing-complete languages, and sophisticated state management.

Simplicity, a new programming language from Blockstream Research, offers a fundamentally different approach, bringing high-assurance smart contracting to Bitcoin-style UTXO-based blockchains like Liquid.


While it operates on different principles, Simplicity aims to provide expressiveness **without sacrificing reliability**. Its design allows you to build sophisticated smart contracts and be confident in their outcomes.


This guide will help you navigate the key conceptual shifts as you transition into the Simplicity world.

## Key Differences: Simplicity vs. EVM/Solidity

| Aspect               | Simplicity (UTXO) | EVM / Solidity (Account) | Practical Migration Tip |
|-----------------------|------------------|--------------------------|--------------------------|
| **State Model**       | UTXO-based       | Account-based            | Replace global variables with UTXOs carrying contract data. To update state, consume the old UTXO and create a new one with the new state. |
| **Language**          | Simplicity (low-level, combinator-based) | Solidity (high-level, imperative) | Simplicity programs are pure, side-effect-free functions. Build logic by composing small operations instead of writing imperative code. Shift from “writing instructions” to “connecting transformations.” |
| **Turing Completeness** | No (bounded programs only) | Yes (limited by gas) | Rewrite loops as fixed-size unrolled logic; precompute where possible. |
| **Persistence**       | Stateless; data in UTXOs only | Contracts have permanent storage | Store state as commitments inside UTXOs. Carry forward data explicitly via transactions. |
| **Smart Contract Calls** | No native inter-contract calls | Inter-contract calls, libraries | Use transaction chaining to compose logic; each step handled by a different UTXO. |
| **Gas Model**         | Static resource bounds | Runtime gas estimation | Bounds (e.g. bit usage) are known at compile time → predictability. |
| **Determinism**       | Fully deterministic | Some non-deterministic values (`block.timestamp`) | Use pre-committed data and covenant-based enforcement. |
| **Security Model**    | No shared state; no reentrancy | Reentrancy, shared mutable state | No need for reentrancy guards; logic is isolated by design. |
| **Verification**      | Built-in formal verification support | Optional, often post-hoc | Simplicity enables **formal proofs of behavior upfront**. |
| **Deployment**        | Commit code hashes only | Deploy full code on-chain | Prepare full expressions off-chain; deploy only program commitments. |
| **Data Input/Output** | All inputs explicit | Calldata, storage reads | Define inputs/outputs clearly; all data must come via inputs/UTXOs. |
| **Oracles**           | Pre-committed or covenant-enforced | Chainlink & external calls | Use pre-signed data or UTXO conditions for oracle inputs. |

