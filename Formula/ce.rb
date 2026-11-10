class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.79.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.79.0/ce-osx-arm64.tar.gz"
      sha256 "0e30f22971cc02304c4fa4874ce3f261530c935e7d4111ba6a0958c0f162d5b2"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.79.0/ce-osx-x64.tar.gz"
      sha256 "c9baa3b909c01f91c6fd53d42c6ab21f08378e473acf551b324bee68a7b33b5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.79.0/ce-linux-arm64.tar.gz"
      sha256 "2d5740a630e32ef2b2ebfff2da9170ef2753ba30690c9985269c03cc3139d364"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.79.0/ce-linux-x64.tar.gz"
      sha256 "d8ba225b01e7addde545977f98c041124ff43a6d7fc2c59c39bcd40181ea8f55"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
