class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.98.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.98.0/ce-osx-arm64.tar.gz"
      sha256 "b5d6e04ef7d55c6d1be98a8fe55cf7c26e2191e57b9d319da7361a034634e998"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.98.0/ce-osx-x64.tar.gz"
      sha256 "4c9f75f78b8848b0c195d5db0e0cefc5a4ac32294cd9aa4de9191b033b20e151"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.98.0/ce-linux-arm64.tar.gz"
      sha256 "9a96b4d8546d6d81451189603dab3c5a4ceb7134379cb9816a5da51e63ccff40"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.98.0/ce-linux-x64.tar.gz"
      sha256 "269f847abe4f97a73caaafd6c8f2d46fe7a7ca0b27330882d02f125edf256267"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
