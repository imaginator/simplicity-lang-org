---
title: "Simplicity Programming Language"
description: "A typed, combinator-based, functional smart contract language without loops or recursion, designed for Bitcoin-like blockchains."
hide:
  - navigation
  - toc
---

<div class="hero-section" markdown>

# Simplicity

## A typed functional smart contract language designed for Bitcoin

Simplicity is a low-level, typed, functional, native smart contract language designed to improve upon Bitcoin Script while maintaining its security model and simplicity.

<div class="hero-buttons" markdown>
[Get Started :material-rocket-launch:](getting-started.md){ .md-button .md-button--primary }
[View Documentation :material-book-open-variant:](documentation.md){ .md-button }
</div>

</div>

---

## Key Features

### Expressive Smart Contracts

Simplicity allows developers to write contracts that go beyond the limitations of Bitcoin Script. Complex financial workflows, conditional payments, and tokenized assets can all be encoded efficiently and safely.


### Predictable Resource Usage
Every Simplicity contract has clearly bounded computational costs. This ensures contracts run reliably on-chain without unexpected fees or execution failures.


### Formally Specified
Simplicity smart contracts can be formally specified using mathematical proof assistants, enabling rigorous verification of their behavior. This ensures that contracts behave exactly as intended, significantly reducing the risk of critical bugs and security vulnerabilities.

### Enhanced Security
Contracts are designed to behave exactly as written, reducing the risk of bugs or unintended outcomes. Users and institutions can trust that their rules and conditions will be enforced correctly.


### Seamless Bitcoin and Liquid Integration
Simplicity is built for Bitcoin-style blockchains and Liquid, making it easy to integrate with existing blockchain infrastructure. Tokenized assets, settlements, and decentralized finance workflows can leverage its native compatibility.


### Support for Conditional Logic
Developers can encode conditional payments, options, and automated triggers directly into contracts. This enables more sophisticated financial products without relying on external intermediaries.


### Compact and Efficient Design
Contracts are optimized for on-chain execution, keeping size and operational overhead minimal. This allows for faster transaction processing and reduced blockchain load.


### Compatibility with Multi-Party Workflows
Simplicity can handle multi-party agreements, such as escrow-free marketplaces or collaborative finance operations. Parties can interact securely without giving up control to a central authority.


## Getting Started

For Bitcoiners
Simplicity for Solidity Devs
Simplicity for Finance
Simplicity for Formal Verificationers…
Simplicity for Functional Programers..




<div class="grid cards" markdown>

-   :material-web: **Try Online**
    
    ---
    
    Experiment with Simplicity in your browser
    
    [:material-arrow-right: Web IDE](https://webide.simplicity-lang.org){ .md-button }

-   :material-rocket-launch: **SimplicityHL**
    
    ---
    
    Start with our Rust-like high-level language
    
    [:material-arrow-right: Learn SimplicityHL](simplicityhl.md){ .md-button }

-   :material-lambda: **Core Language**
    
    ---
    
    Dive into the core Simplicity combinators
    
    [:material-arrow-right: Language Reference](language-reference.md){ .md-button }

</div>

---

## Example

```rust
// SimplicityHL example - a simple payment condition
fn main(ctx: Context) -> bool {
    let signature_valid = check_sig(ctx.signature, ctx.pubkey, ctx.message);
    let timelock_passed = ctx.block_height > 750000;
    
    signature_valid && timelock_passed
}
```
This compiles to Simplicity combinators that can be formally verified and executed on-chain.

Community & Resources
<div class="grid cards" markdown>
:fontawesome-brands-github: GitHub

Source code and implementations

:material-arrow-right: BlockstreamResearch{ .md-button }

:material-chat: Discussions

Join the community discussions

:material-arrow-right: GitHub Discussions{ .md-button }

:material-file-document: Research Papers

Academic papers and formal specifications

:material-arrow-right: Research{ .md-button }

</div>