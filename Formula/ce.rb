class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.105.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.3/ce-osx-arm64.tar.gz"
      sha256 "178351355b178863deb579842ebe59b6b9eca4c95d4a27dc220f6a1535488515"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.3/ce-osx-x64.tar.gz"
      sha256 "bd5d1f7ffa607fc427fa94a3e2941a1e54ac5d8f793e7dca1604277fd0a44f79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.3/ce-linux-arm64.tar.gz"
      sha256 "1070d1b2f289aeed25b2f136e1839c0be5d3c41b6b414870ecba7818ea937433"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.3/ce-linux-x64.tar.gz"
      sha256 "13220f4721da89098c9bd933546938722dea215b4703782efb48a6970a4bca57"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
