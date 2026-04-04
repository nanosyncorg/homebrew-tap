class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_darwin_arm64.tar.gz"
      sha256 "5f58486c7ad8d9e4f6529ed3aee9135ae3f5ef7f008f52c939b7ce52e31fe8ce"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_darwin_amd64.tar.gz"
      sha256 "c8345217ca7b647dee38b4524b2e7a45ad66f68ca8d20095e3c2f558b0a0c1f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_linux_arm64.tar.gz"
      sha256 "5dfd809edeaae936fe2c7a0aab5a0aade630e179bfd011d25035d74aa76c0d91"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_linux_amd64.tar.gz"
      sha256 "33ded60c4c920c666d5ef74f15f2b5174b84a436123384cdcf2ed981ff01bab5"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
