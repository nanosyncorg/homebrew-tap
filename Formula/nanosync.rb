class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.7"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.7/nanosync_v0.0.7_darwin_arm64.tar.gz"
      sha256 "9c620bb32453ee56eecf973ae3b8eec818a3a620770efdbd3b7617e249ea1b46"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.7/nanosync_v0.0.7_darwin_amd64.tar.gz"
      sha256 "f568738ca7bb419412827f67cdee57b1030638c79aae5f4edccd62069ec57c08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.7/nanosync_v0.0.7_linux_arm64.tar.gz"
      sha256 "ab884ca99f46f0f5f0fc35806fea3b29d14d98e9abd4f18c70ea303add99c6f3"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.7/nanosync_v0.0.7_linux_amd64.tar.gz"
      sha256 "384bd0cb4830e7982f6ba1f266fee1ed3aeb002ffa622a6685152fc5a7e3c1aa"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
