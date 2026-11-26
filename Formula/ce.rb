class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.102.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.102.0/ce-osx-arm64.tar.gz"
      sha256 "966ea13df9bf79ba25f089163cbbc2c0cae8f405e90b16d5a5b4f11fb846f590"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.102.0/ce-osx-x64.tar.gz"
      sha256 "ab9bf454d9b8989007eed48f1f0c34ca0ab25562e78cf721bb05b8f67dfb0524"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.102.0/ce-linux-arm64.tar.gz"
      sha256 "0bd6429c4374c51a814629903b76f6bb503e00209701761aa289a065facaf381"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.102.0/ce-linux-x64.tar.gz"
      sha256 "1b6fb02f82fa2a35f25136db73ff474114fa5e104742cdfa354c3f30859491e6"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
