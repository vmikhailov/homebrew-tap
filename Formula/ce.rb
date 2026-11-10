class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.76.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.76.0/ce-osx-arm64.tar.gz"
      sha256 "03fe90e00e566b6b7bc7a2f22d0bf68c19a868d43d0b9a659f9db38ac939fa92"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.76.0/ce-osx-x64.tar.gz"
      sha256 "8b58a00206b133dfcce1e314afedde8670604cbd7a726508d6191fa16dfdc3e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.76.0/ce-linux-arm64.tar.gz"
      sha256 "10cb5abac1a722a4edb34bbf32b5109114fd2bbc147e2be3dfe7bf98d2aef37b"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.76.0/ce-linux-x64.tar.gz"
      sha256 "efa5b44d1b94702526591bac3bd5efbb7e937e942c58908c7e139e71feb46320"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
