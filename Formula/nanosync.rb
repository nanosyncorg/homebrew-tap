class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.2/nanosync_v0.0.2_darwin_arm64.tar.gz"
      sha256 "f33ae99e602148095df6f0038ad3e272e6ad3927393e22321139bc4b0b9ac5ce"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.2/nanosync_v0.0.2_darwin_amd64.tar.gz"
      sha256 "2dda020f8ff5ef9bb1aec825b6dcc93b0ac6d85fef9f0939a7fa34187ef013e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.2/nanosync_v0.0.2_linux_arm64.tar.gz"
      sha256 "edad79087a7dbce00474999752d112f6bf30295732c02361118d7fb65a7518a6"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.2/nanosync_v0.0.2_linux_amd64.tar.gz"
      sha256 "ce65e804f840eda9afde21a84db2514248fdf9f332f525ad96d2207f18ee59fc"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
