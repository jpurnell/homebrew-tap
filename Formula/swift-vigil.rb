class SwiftVigil < Formula
  desc "Flakiness & concurrency auditing for Swift — flip detection, stress runs, temporal determinism"
  homepage "https://github.com/jpurnell/swift-vigil"
  url "https://github.com/jpurnell/swift-vigil/releases/download/0.6.0/vigil-macos-universal.tar.gz"
  sha256 "fc4f1134a49eb41375e9c9ddb2fea82e07f5d1ccafef4d825f3c47a5e7a3bb5e"
  license "MIT"
  version "0.6.0"

  def install
    bin.install "vigil"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/vigil --version")
  end
end
