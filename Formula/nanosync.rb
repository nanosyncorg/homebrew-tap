class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_darwin_arm64.tar.gz"
      sha256 "53994c18f6ec97c95f7378110ac2a4c96732d440ff33cbedc44f15a7da7b8f06"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_darwin_amd64.tar.gz"
      sha256 "fd148c340eccea508c7a2e32a5dfc56751e36dc682e5fb5e4fa68c2a6bc02dd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_linux_arm64.tar.gz"
      sha256 "f02254c524a491c93d4a2de563caf1e0a1ae48577686a4339300e71fc9f1ddc6"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_linux_amd64.tar.gz"
      sha256 "72a72316fffdf7eb21acd3e869b3b0cb758f84f9845b9e260875bf5f8fd53436"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
