class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.87.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.1/ce-osx-arm64.tar.gz"
      sha256 "372db4c31b77fc3d4eeaaf5932a3970b14238baff786a2b3057b895bd07f99e5"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.1/ce-osx-x64.tar.gz"
      sha256 "923f4ee08df11c6aa55186a56a5135ded2a8a5045e5e79a19daf32571a7a952e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.1/ce-linux-arm64.tar.gz"
      sha256 "a376c44dad39e7885b9929cdf7762f17a75f288cd46ec52b9c368d73b797b5d4"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.1/ce-linux-x64.tar.gz"
      sha256 "d0b72144cfbcc3bca7f8252a206c4c21491d9259b2520c3087bcffe9c609c06f"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
