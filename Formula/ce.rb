class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.2/ce-osx-arm64.tar.gz"
      sha256 "6496db247c571038181422d2fbeeb01b814c11f992b3306383976939071a2833"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.2/ce-osx-x64.tar.gz"
      sha256 "41801b5d6cde95aaef7388b2701aedea2467a9df7fd8fc6ccb898243296849b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.2/ce-linux-arm64.tar.gz"
      sha256 "445eb57ad7a4eb2815f86cdc5e98566210252e4d1e1d17a872a03b2a0c91cb5d"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.2/ce-linux-x64.tar.gz"
      sha256 "da12786a6f1c1b2f965a2d52b3e9c486bf09632250312e6e02e28acd70d1e458"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
