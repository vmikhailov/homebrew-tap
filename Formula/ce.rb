class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.9/ce-osx-arm64.tar.gz"
      sha256 "ea9a37119390c22b645bfc96a6309dfa1f88e2b5a7f2d8e7f47611ea8928cbdc"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.9/ce-osx-x64.tar.gz"
      sha256 "e24d09c402ce7ba5dcb42610baec6bb6fb247f534a231743860ea7d411a532ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.9/ce-linux-arm64.tar.gz"
      sha256 "02f0944c46e503fa79e1e25d7fdfb15f532e72ff88fc270bc144b9b403f8b086"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.9/ce-linux-x64.tar.gz"
      sha256 "b922a5968d123a6a9fdb3830db28dd0ba786e0a363f747804f32a70b1c7bcc8a"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
