class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.5"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.5/nanosync_v0.0.5_darwin_arm64.tar.gz"
      sha256 "ae6258cd45b207ce86caf14ccfdbef63734c4106eeea3ed83c1bb73fc71d5042"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.5/nanosync_v0.0.5_darwin_amd64.tar.gz"
      sha256 "4131a60c1f70815ec377156092935be6e618105dbfe028f4bbdbdaa09e7fa93e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.5/nanosync_v0.0.5_linux_arm64.tar.gz"
      sha256 "ecd6cf1d1f3da303c0b0ae520aef8ecbc8ecfc90f632674c9770e974acdf82d7"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.5/nanosync_v0.0.5_linux_amd64.tar.gz"
      sha256 "7d157c12e632da66f405455335c9595dc2d2b983e5eea0bfca426067a3ae8713"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
