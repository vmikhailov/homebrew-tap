class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.89.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.5/ce-osx-arm64.tar.gz"
      sha256 "7d73d80527e4ee7986dd789bc9957483e6a9ca9ea460218bc838feb46bfd9543"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.5/ce-osx-x64.tar.gz"
      sha256 "9e62689d377f080cacb3649f7b4238affb023022540a03b3e53fe8620c89b2bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.5/ce-linux-arm64.tar.gz"
      sha256 "5b16d2bb7ef92a12ea83e253c079bad71549121bec5e0998a73d7b803e3ead05"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.5/ce-linux-x64.tar.gz"
      sha256 "0ba24b60f3c636c9eb7157fdbf98848b7250ea637d2f5fc729667bf68797bb58"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
