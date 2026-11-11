class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.80.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.1/ce-osx-arm64.tar.gz"
      sha256 "bd561de6db23f139f8106ab0d376089fefcd0dbb9c9845fd27d3d9a71f5d623b"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.1/ce-osx-x64.tar.gz"
      sha256 "138b59ff7f81fbdbfe6985dd4bc7e2787c7ff14c2d98d8c6bcc3912e1fe4926e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.1/ce-linux-arm64.tar.gz"
      sha256 "ca0c38968de5f90531379ac8c6ca0ad6d97588e42cf8bd07aee5528f0161ca72"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.1/ce-linux-x64.tar.gz"
      sha256 "74e12ea037231b70fd52207e559312f9d9b5350616a366b4f323198477fba62b"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
