class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_darwin_arm64.tar.gz"
      sha256 "392a0a3564f67375b8b7fa08969061920df9aea499ab63ed5c7dd1ebb3cbe7e7"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_darwin_amd64.tar.gz"
      sha256 "49150dd7150849a95142ccda8c164c51b9f3554ac1209093795b75cb39115268"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_linux_arm64.tar.gz"
      sha256 "09b07529a35b31e1c0d6bfa157dbf71b539038b9fb3ef502c8fd2ce4981321e8"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_linux_amd64.tar.gz"
      sha256 "96050b7df1b3623292c85119c13f711ef0ea87d39a1d0dc5c7415e7527f4bc4c"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
