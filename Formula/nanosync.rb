class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_darwin_arm64.tar.gz"
      sha256 "5ef61c176e15d841629b9858a0dd63d37f53fbfa60c7a87a703cb058576d7eba"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_darwin_amd64.tar.gz"
      sha256 "a64e469a39ae0ce7b558b1409dcae5fed9f723a66d029335b9ac11fa1e2db004"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_linux_arm64.tar.gz"
      sha256 "6344d3f81cb45577ec4c92eaa9c74e0301f6964799b58dbb508dd5d5ebf6d043"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_linux_amd64.tar.gz"
      sha256 "e0a7f58d6a65f3ec286ade2e32ea7d8455dcf0f83356ce4ff14e2fec09cdce96"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
