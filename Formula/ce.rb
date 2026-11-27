class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.108.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.0/ce-osx-arm64.tar.gz"
      sha256 "fdea87f90ac0671fe2c2ce06adc37622948ca6d8abab588052e346a09a52e888"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.0/ce-osx-x64.tar.gz"
      sha256 "e49105015f0dea9c755d55b66a714d7cf438dd970d813f7e2c377262b7695374"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.0/ce-linux-arm64.tar.gz"
      sha256 "74e04a83a209b0c625cc6314b73b7d4dd2af7722f000940c77bee8f1e774ef47"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.0/ce-linux-x64.tar.gz"
      sha256 "294c8e19178e9c7e5f960d14b761abeb21ba0356946bfb913ab8f67b3343618a"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
