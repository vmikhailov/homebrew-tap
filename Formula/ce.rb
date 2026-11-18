class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.0/ce-osx-arm64.tar.gz"
      sha256 "15e322a659d761d62f490cf508c7ee1182ec51c6de22b3d7dd02a979f94d30e0"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.0/ce-osx-x64.tar.gz"
      sha256 "0bbc3ad86b49d97d79ab349ca303697fd10914c4fa04a95570c99a6130843fa6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.0/ce-linux-arm64.tar.gz"
      sha256 "244845b9897cf2e6b83f709b8953cdeaf46f719e72db014dc745b029408385a5"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.0/ce-linux-x64.tar.gz"
      sha256 "6a3e99d64e52d2122cd871b17d62006a15527affbb2f2f8638a0cad31fbf0137"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
