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

A person sending money with this contract supplies the receiver's pubkey (`pubkey`) and the funds that they're sending (`funds`). The first thing that `main` does is call the built-in `commit` function. This marks the point where the actual on-chain code begins. Until control flow reaches `commit`, code is merely executing in the sender's wallet. eg. if `main` had instead returned `funds` directly without calling `commit` then the wallet would simply hand the user's money straight back to them without creating a transaction.

The signature of `commit` is:

```rust
fn commit(Witness: Type, funds: Funds) -> struct { witness: Witness, funds: Funds }
```

`Witness` is the type that needs to be satisfied in order to unlock the funds and continue program execution. In this case Witness is `ValidSignature(pubkey, funds)` - ie. a signature (by the owner of `pubkey`) signing the funds (ie. the transaction spending the utxo). Actual validation of the signature happens inside the `ValidSignature` type which would be defined something like this:

```rust
fn ValidSignature(pubkey: Pubkey, funds: Funds) -> Type {
    struct {
        signature: Signature,
        is_valid: true == jet::bip_0340_check(pubkey, jet::sig_all_hash(funds), signature),
    }
}
```

(Note that functions under the BC monad (in this case `jet::sig_all_hash` can be modelled as pure functions which take a `Funds` argument.)

The compiled Simplicity code starts at the point where `commit` returns and immediately verifies that the witness data is a valid value of the SimplicityHL type (which may have less valid values than the low-level Simplicity type used to represent it). In this case, the Simplicity type (sans optimizations) would be `2^512 * 1` since its a struct containing a `Signature` (represented as `2^512`) and an equality (represented as `1`). The only value of an equality is `refl(x)` of type `x == x` represented as the unit value. When `x` and `y` are not equal the type `x == y` is uninhabited and the unit value is not a valid representation of the type. ie. the witness validation code for this program simply calls `bip_0340_check` and asserts that it returns `true`.

`commit` returns both the provided witness data and a new value of type `Funds`. The final thing this program does is to release control of the funds by returning it.