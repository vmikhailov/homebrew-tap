class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.8/ce-osx-arm64.tar.gz"
      sha256 "bf65bb260a54d1b732effce974d8bc1d6d7187aa3940799cb37faf7ec67b8362"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.8/ce-osx-x64.tar.gz"
      sha256 "f97ecd1110fc13de19548b5d537c8a1db30af60613b312666ce684ec198cf2ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.8/ce-linux-arm64.tar.gz"
      sha256 "e6ecc50aca2627583e2c01262a9bc696bac497e8764afd5fa09eb3cbb8b9ccef"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.8/ce-linux-x64.tar.gz"
      sha256 "766af4928bb4a5c3434434bbc724ffef0fb4c022d8935c741139b246579ebb34"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
