class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.87.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.0/ce-osx-arm64.tar.gz"
      sha256 "fffa46184a4a46920a1473f621c86bad7d1a74032891826c3858999f959956e2"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.0/ce-osx-x64.tar.gz"
      sha256 "fd4ca5278dd5ab7912fa46bce687439c3ed555dfa355825315a7b48051db6495"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.0/ce-linux-arm64.tar.gz"
      sha256 "975b82bc3024ec99f71f2b7fa436c400fcb4490727f732be6a7834c858b17199"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.0/ce-linux-x64.tar.gz"
      sha256 "f190f3f93f8ebdd8e088b67cf576cfd0c62073e533b07375993c5cea9a7404a7"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
