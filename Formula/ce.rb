class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.12/ce-osx-arm64.tar.gz"
      sha256 "d25745f85d2b5207b2b759402e07b974a3473898027b1d8e8ca2276dc5767cb8"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.12/ce-osx-x64.tar.gz"
      sha256 "4e7a202b50f041cb181d0da08df344e12853e199bc8a179baf3dc0cd1441dfa7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.12/ce-linux-arm64.tar.gz"
      sha256 "dbad58445c492445406445218f2078d6bd033b0500212124b0db813952e7b7f7"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.12/ce-linux-x64.tar.gz"
      sha256 "cc555c6dc54f98bd98abc46b31c68b6bb8a14b56649581759cfe9092715bea0d"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
