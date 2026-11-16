class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.89.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.3/ce-osx-arm64.tar.gz"
      sha256 "e6d6730875f4efc45fbeea564be3e94c8741d9d5fd71cf39165bfd37d7e6c919"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.3/ce-osx-x64.tar.gz"
      sha256 "347e08445dc4362ff94c0ed766515ae037a6da7e0a0d905cef4ffc23964b4ec9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.3/ce-linux-arm64.tar.gz"
      sha256 "f7a9898ad58f2aa9b212d6adbcd36a97932f233410cd40fdbb71ff51c7c6da91"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.3/ce-linux-x64.tar.gz"
      sha256 "8a55b239034ca8738c05b647d3dadc4cbe24df92f1e4b3435b18f045dc43a77d"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
