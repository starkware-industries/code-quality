#import "../src/block_by_block.typ": *

#set page(
  margin: (
    top: 30pt,
    bottom: 30pt,
    left: 50pt,
    right: 50pt,
  )
)
#set text(size: 14pt)

#logo

// Add name + block number here
#block_header(2, [Depecency Injection])

// Fill text in the 'what' section
#what
\ Dependency Injection (DI) is a design pattern where an object receives its dependencies from an external source rather than creating them itself. It is like giving your code a toolbox instead of making it build its own tools.

// Fill text in the 'why' section
#why
\ *Decouples components* –  making it way easier to swap parts without breaking everything.\ 
*Improves testability* - you can inject fake dependencies (mocks or stubs) when testing.

// Fill text in the 'how' section
#how
#set text(size: 7pt)
\ #code[```rust
// Without DI
struct WalletService {
  provider: BlockchainProvider,
}

impl WalletService {
  fn new() -> Self {
    WalletService { 
      // hard-coded dependency
      provider: BlockchainProvider::connect() 
    } 
  }
}
```]

\ #code[```rust
// With DI
struct WalletServiceDI<'a> {
  provider: &'a dyn BlockchainProviderTrait,
}

impl<'a> WalletServiceDI<'a> {
  fn new(provider: &'a dyn BlockchainProviderTrait) -> Self {
    // The provider is passed in
    WalletServiceDI { provider }
  }
}
```]

\ #code[```rust
// DI usage

// In production
struct RealProvider;
impl BlockchainProviderTrait for RealProvider {
  fn query_balance(&self, address: &str) -> u64 {
    // Real chain logic here
  }
}

// In tests
struct MockProvider;
impl BlockchainProviderTrait for MockProvider {
  fn query_balance(&self, _address: &str) -> u64 {
    // return mock balance
  }
}
```]