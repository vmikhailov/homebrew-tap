class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.101.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.2/ce-osx-arm64.tar.gz"
      sha256 "d9d4f0e7bbda009e60226a0d5252bae6af7f2d0d1bb6388989c1f6637ce740bd"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.2/ce-osx-x64.tar.gz"
      sha256 "89525b52eda8d37e3ef31ddd6d263c48c2ba8e6b36c6553559ac38779cc5ad25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.2/ce-linux-arm64.tar.gz"
      sha256 "2d728c3f0215a41447f1f6a75e0895fd170d3a1145e7ee0a9fe1a0ac8e221ac8"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.2/ce-linux-x64.tar.gz"
      sha256 "7e1c0800481b53302bb14045c7dbd7c7ffbd54a4afdfadd5dd989aa27bd4580e"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
