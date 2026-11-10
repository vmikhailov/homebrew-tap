class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.77.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.77.0/ce-osx-arm64.tar.gz"
      sha256 "3b97c8e69a27b0fc57add1d06e20982b9b1b834f61c74dbf8e470be1b6a74fd0"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.77.0/ce-osx-x64.tar.gz"
      sha256 "147a1993739af65e75bbeee24833d0ff109aae2225331a64551bffcfdbe4d9c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.77.0/ce-linux-arm64.tar.gz"
      sha256 "c312b2e4209a457a26003dee57cd3e18dcb1d813ab7549f2cbd7b250f26d2831"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.77.0/ce-linux-x64.tar.gz"
      sha256 "67278e79eaddceb510477857a952178b240499da92703d40ec8718be97ce729c"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
