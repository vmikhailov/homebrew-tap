class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.86.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.86.0/ce-osx-arm64.tar.gz"
      sha256 "c44959dee4be5b3dec2293592a4d720f7f0085f0e377b3379e95fca676d919d9"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.86.0/ce-osx-x64.tar.gz"
      sha256 "fe4ab7c9ec9a0aa354efced7d0314bd7560fc6277db6428553b443ebb7c8e30b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.86.0/ce-linux-arm64.tar.gz"
      sha256 "71f7429448fad5878c097530ba820e800e0871bddc129e2f454740b719179205"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.86.0/ce-linux-x64.tar.gz"
      sha256 "0312bccfee91b3cf197a72775c7e7482ffcf80471d6d92bb09185633981c2c8e"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
