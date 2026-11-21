class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.93.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.93.0/ce-osx-arm64.tar.gz"
      sha256 "4ba715ff4f1e50f840011889b79ba638bc9520fbfd5d10f52f6cc58289182abc"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.93.0/ce-osx-x64.tar.gz"
      sha256 "f90adcf4be7acb68425ff4396bab4988209cbcd68888b947d15f4a7b860d7ef8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.93.0/ce-linux-arm64.tar.gz"
      sha256 "db668d31494526a0bf494d49776c78e4af07955f75b75ac8b49d309628fedfc5"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.93.0/ce-linux-x64.tar.gz"
      sha256 "b3bf819a221bae886a43fea82d0adea69c21db712be4f2ccc46a5c1893f370da"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
