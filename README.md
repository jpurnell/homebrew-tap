# jpurnell/homebrew-tap

Homebrew formulae for the quality-gate ecosystem.

## quality-gate

Static analysis for Swift 6, on SwiftSyntax and the index store.

```
brew install jpurnell/tap/quality-gate
quality-gate                        # the default checker set
quality-gate --check all --strict   # everything, warnings gate the exit code
quality-gate --check safety --check concurrency
```

Requires macOS 15 or newer. The bottles are built on our own hardware and pinned
by tag — there is deliberately no floating "latest". Linux is a supported
platform for the package itself (CI gates Swift 6.2 and 6.4), but it is built
from source there rather than installed from this tap:

```
git clone https://github.com/jpurnell/quality-gate-swift.git
cd quality-gate-swift
swift build -c release --disable-automatic-resolution \
  -Xcxx -I/usr/lib/swift -Xcxx -I/usr/lib/swift/Block
```

## swift-vigil

Flakiness and concurrency auditing — flip detection, stress runs, temporal
determinism.

```
brew install jpurnell/tap/swift-vigil
vigil scan .        # temporal determinism + cancellation checkpoints
vigil watch .       # cross-run outcome flips on identical code
vigil stress .      # // TIMING:-tagged tests under CPU contention
```
