class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.107.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.0/ce-osx-arm64.tar.gz"
      sha256 "4fa27c06852ed31da2ef63efc1bed99aaff6a1bb50d3befe40b492bb8df0b3de"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.0/ce-osx-x64.tar.gz"
      sha256 "9f9d52252678feec2b2b5ce367dedebe3c8a5709220abe0c75c1804997e4ae52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.0/ce-linux-arm64.tar.gz"
      sha256 "cdea5f7d4b9a463576970687f768408d2cb2821edff7095e58536c76ae885cc7"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.0/ce-linux-x64.tar.gz"
      sha256 "17c8785d06e54cd99f95cc213923581b3110dbea8d612b0b505d77710b73f21e"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
