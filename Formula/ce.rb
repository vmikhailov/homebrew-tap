class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.106.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.0/ce-osx-arm64.tar.gz"
      sha256 "31117d1507960fcf39c8f0e1ffdcae4d10baa0a88dc69c43e35a00fd177750bc"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.0/ce-osx-x64.tar.gz"
      sha256 "5f29d5be8cb7f35c29af0636a7f9f7cdd8bfb18df67555508239a7886cbe6c14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.0/ce-linux-arm64.tar.gz"
      sha256 "6fcded66f848068a3178b54ae15930f12576e4c8f05929b466f68ab2ac1a7798"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.0/ce-linux-x64.tar.gz"
      sha256 "d20480d88a9f869cd447c0db339c92453b8f8c8dbce82d4fda3344532251b92e"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
