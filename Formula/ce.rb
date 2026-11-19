class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.91.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.1/ce-osx-arm64.tar.gz"
      sha256 "9e931ecd60e6fb2577b96d82c5811e4d3150b6a2d0cb0d0ca4238d5a7f32d923"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.1/ce-osx-x64.tar.gz"
      sha256 "19b85951f548afdde739dc1046e95b27beeb6e97111071767ace771234a3cd98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.1/ce-linux-arm64.tar.gz"
      sha256 "1f68a34a112d2e654c977dbb47f7881d2d759c90ac53d9d6460febc3117dc35b"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.1/ce-linux-x64.tar.gz"
      sha256 "42b95d358bb6806f67955ff12a9bd5c194ec0e16c8ad60d6a86f00f9bb59387b"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
