---
hide:
  - navigation
  - toc
  - title
---

# A typed, combinator-based, functional smart contract language without loops or recursion, designed for Bitcoin-like blockchains."

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

## Example

A basic pay-to-pubkey SimplicityHL program looks like this:

```rust
fn main(pubkey: Pubkey, funds: Funds) -> Funds {
    let (witness = _, funds) = commit(
        Witness = ValidSignature(pubkey, funds),
        funds,
    );
    funds
}
```

This compiles to Simplicity combinators that can be formally verified and executed on-chain.
