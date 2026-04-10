class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.4"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.4/nanosync_v0.0.4_darwin_arm64.tar.gz"
      sha256 "cf69377af7f085b5ad786cebcf67f7e67d75d4f6f4efeee1f6f8fe2a58873697"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.4/nanosync_v0.0.4_darwin_amd64.tar.gz"
      sha256 "9ba2b5be808a4a2ccd605d36ddd4a48ba5797109746f4fdd7216d9cf0998d694"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.4/nanosync_v0.0.4_linux_arm64.tar.gz"
      sha256 "8bab5e2ffe8e1b122dbf2b939cf60d8b179241adff110f90cf417d83c3f47fad"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.4/nanosync_v0.0.4_linux_amd64.tar.gz"
      sha256 "323303e7bf90c90911f3503223a5d994987dac659275b88472e8921fa1016dfc"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
