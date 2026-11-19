class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.91.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.0/ce-osx-arm64.tar.gz"
      sha256 "5b6faa7b69a2c7bb68ec1099e291ec95a168ab3a675809563851cb448f164b29"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.0/ce-osx-x64.tar.gz"
      sha256 "7b2e77d3f242306a96152d6d9fc4154af53db1839bfe972b1baa079ba662cf8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.0/ce-linux-arm64.tar.gz"
      sha256 "8dc0fe9d8cf65e958a1b27ca47c7a811bc03c09f7ba173b960bd303a54d2e2ca"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.0/ce-linux-x64.tar.gz"
      sha256 "5efbf4df1c61c65f1b3aef754538a6a66d6dd893c4af2061395e4c73d54962f2"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
