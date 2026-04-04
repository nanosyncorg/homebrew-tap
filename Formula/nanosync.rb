class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_darwin_arm64.tar.gz"
      sha256 "9d59ea8392d440403db5c0fcb83814e495fab02da65b6fd566d567fff4e5790c"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_darwin_amd64.tar.gz"
      sha256 "139f9b8019f9d37ae5f0d72a6e9233609082b0180c8a5735685d53d807a9061e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_linux_arm64.tar.gz"
      sha256 "5c976cf49787148f40ae6424fba12ec3e0484142948e4b20a5f7519e267d9bf3"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.3/nanosync_v0.0.3_linux_amd64.tar.gz"
      sha256 "a3c0836c39e26b3724b982fb7f02a38b687e70c8c07f06ae488267b6279cfa84"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
