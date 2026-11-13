class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.85.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.85.0/ce-osx-arm64.tar.gz"
      sha256 "5b596964f4de12a6917b74390e17273ca6015170daeb2ecc185732ee60c5b982"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.85.0/ce-osx-x64.tar.gz"
      sha256 "005381610b020a4d0757958d14eab2c452878a0a4e5292495a08013c02ffd616"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.85.0/ce-linux-arm64.tar.gz"
      sha256 "791ead6bcc7568038da6a7ef123d0b63252395940c7aa6604347e1143def2c3e"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.85.0/ce-linux-x64.tar.gz"
      sha256 "d4a7b6bbbd0983ce27bd268f1df8a9e51c6ecebea0d80a228811bdea0c1e3f6c"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
