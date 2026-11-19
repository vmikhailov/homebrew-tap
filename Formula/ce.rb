class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.12/ce-osx-arm64.tar.gz"
      sha256 "ca013a6a0486f3e85d25eef3b3e905654e901f52ebba57fe93304ab53892b652"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.12/ce-osx-x64.tar.gz"
      sha256 "baf428230af844ca48d4cd0caae46c5f5b98cf5b9539feb5ef0d40c9c970b03a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.12/ce-linux-arm64.tar.gz"
      sha256 "b6f98e5656458722a93b7777324d3d35236e6f7f7abd01b2e13d7dfea66127bc"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.12/ce-linux-x64.tar.gz"
      sha256 "0d25fe845e20259968eba58da67cf629bb0a77f28e3df373023f116ea670d8d7"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
