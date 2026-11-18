class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.3/ce-osx-arm64.tar.gz"
      sha256 "f953bef7410e1b1818a4b0bd9b07486bfd8c19d0077095bf8999fb2403ba9a07"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.3/ce-osx-x64.tar.gz"
      sha256 "112e45999951c336fa5f219e58591203f463c38c6e5db4e5340d14874f1ac8a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.3/ce-linux-arm64.tar.gz"
      sha256 "abf8dacb25736be25144c662b4d725af7eefca67ef711479309e19286413ad85"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.3/ce-linux-x64.tar.gz"
      sha256 "2378a9e146c669cde103250c2ed878055fefea741a330f43c2383bb178d66f40"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
