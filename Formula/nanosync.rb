class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.9"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.9/nanosync_v0.0.9_darwin_arm64.tar.gz"
      sha256 "351ff242dea50c72d1a73ee2b53327c99860255e3f6ba29de4057baaad395455"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.9/nanosync_v0.0.9_darwin_amd64.tar.gz"
      sha256 "d20e8df26fcc2e66f0649d57e4b25302d22ba452cf7e430715540fbd13d6b3bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.9/nanosync_v0.0.9_linux_arm64.tar.gz"
      sha256 "a0aaeb3a6b34c5c8cf655319f6f57b44baeed9dfada8c22f328a4adc4ab67933"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.9/nanosync_v0.0.9_linux_amd64.tar.gz"
      sha256 "1319e38d302ff3ccb27acc80e90e141fc8e4ce35fdcd26551a3e935baa45f612"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
