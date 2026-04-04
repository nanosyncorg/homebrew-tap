class Nanosync < Formula
  desc "Ultra-low-latency data replication platform"
  homepage "https://nanosync.dev"
  version "0.0.2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.2/nanosync_v0.0.2_darwin_arm64.tar.gz"
      sha256 "d79b4a00febd830c0a7009cc9cbe58d83561135201855b95ac76a0fb99b84d1e"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.2/nanosync_v0.0.2_darwin_amd64.tar.gz"
      sha256 "91b0d24f9e788f44b6273da02699bfefddeb48640ba8e26f84dda311abe05093"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.2/nanosync_v0.0.2_linux_arm64.tar.gz"
      sha256 "3e9409fd245678cf3deedd891085f040a22f2b289c61ccb35e03c43667bdfb67"
    end
    on_intel do
      url "https://github.com/nanosyncorg/nanosync-public/releases/download/v0.0.2/nanosync_v0.0.2_linux_amd64.tar.gz"
      sha256 "ba8b8d376af93cf6058a5a3c55ec78c4b874e85b6d5cffbfe298b16bb8582598"
    end
  end

  def install
    bin.install "nanosync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanosync version 2>&1")
  end
end
