class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.5/ce-osx-arm64.tar.gz"
      sha256 "5f47de9c860c7e243309e53dd8c9651df552a8c24dd3faec137ddc532bb3078c"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.5/ce-osx-x64.tar.gz"
      sha256 "90e532ea6a971aecc88abe102cb39825f3a1dc1a4495d70a9b5801dd75239335"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.5/ce-linux-arm64.tar.gz"
      sha256 "25184771ffe1573ac4bbe3a3020e6200d13cf9d26e07c41a1ccb20606c9a3776"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.5/ce-linux-x64.tar.gz"
      sha256 "84ce016b4c6d31c47a7cce47edb2074ede7b8f3c92264953bcf2e763cfe9b7d0"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
