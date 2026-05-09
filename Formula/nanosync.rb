class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.6"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.6/nanosync_v0.0.6_darwin_arm64.tar.gz"
      sha256 "6c1ece7101e3c435857dfe96702a67e4c6b0cddc92bee46be8c1c8f9b166f23f"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.6/nanosync_v0.0.6_darwin_amd64.tar.gz"
      sha256 "8c0b2e0cc9478a2016be0186895ec9d2cfcdaa8a422847916f002ec2bab73491"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.6/nanosync_v0.0.6_linux_arm64.tar.gz"
      sha256 "dc0ac6958e373b3202e0659ded93ee4ebcbbe99cfd9708131a02012de0540f6e"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.6/nanosync_v0.0.6_linux_amd64.tar.gz"
      sha256 "c9a9c3b0983ed680e4b69bc6c13109e392a2dac882f637181aecbbb60d8050d0"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
