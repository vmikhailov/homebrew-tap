class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.77.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.77.1/ce-osx-arm64.tar.gz"
      sha256 "58fbd16f33087bbcc81f394cb642603c9ab760fb2d2ee8d18513c2b12a957bbb"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.77.1/ce-osx-x64.tar.gz"
      sha256 "e9b7a7752283bbb9578155e9403381203daccff5b0fa7896459cb793f53c2438"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.77.1/ce-linux-arm64.tar.gz"
      sha256 "c59b5dd8302e51b28cbf3095ea2a5289ad15a27097e853f50118f92850c2a125"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.77.1/ce-linux-x64.tar.gz"
      sha256 "d4c7aa6b6dcfd0ba743fad44351e15332cba11394c2a4531add78e60b0926df4"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
