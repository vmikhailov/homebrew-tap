class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.77.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.77.2/ce-osx-arm64.tar.gz"
      sha256 "62dd4e494e05063266045a4456cd6516360db3d363b81cf2b445adbfed1da371"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.77.2/ce-osx-x64.tar.gz"
      sha256 "42d04dbf8854ec7ac55b5422869effe03a8248cf0e6925bb2ead4badb642cd32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.77.2/ce-linux-arm64.tar.gz"
      sha256 "97b1322ac265b803532fa2a69affc1d0ad71c58de13053b2d97a841a711282db"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.77.2/ce-linux-x64.tar.gz"
      sha256 "990bd246f4e899484ac1ac1332a83e372b231878230560e8ccc4a45ba581e854"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
