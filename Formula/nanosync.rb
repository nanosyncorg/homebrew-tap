class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.8"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.8/nanosync_v0.0.8_darwin_arm64.tar.gz"
      sha256 "c4475c794f38e951535750dc24590ca0c2492ed25a0c051e8e7af3c3e6f065f1"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.8/nanosync_v0.0.8_darwin_amd64.tar.gz"
      sha256 "ff594f469ed68c1a60b4beecc0370fe41c4452f5b837fac93bbba0c56d975053"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.8/nanosync_v0.0.8_linux_arm64.tar.gz"
      sha256 "b72112fe20dfdb0cd14524ba39abadcf7c6c7120cf98ab1f714463b35a48f657"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.8/nanosync_v0.0.8_linux_amd64.tar.gz"
      sha256 "084b206657b8def1be5f9d86d89164319473abf406477efa98eedb8c633d0ad8"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
