class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.101.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.3/ce-osx-arm64.tar.gz"
      sha256 "74d39a0256bd39d10b935396c7506db695dc44ff7ce7e6538367c25dd9e23110"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.3/ce-osx-x64.tar.gz"
      sha256 "b8cb758a59b1480480f494adb4a44cc9dd914d5984ce364296aec95fae0d3f3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.3/ce-linux-arm64.tar.gz"
      sha256 "8017778acf5588f8eac7da2af3806350eed97af63a682af1bd6f38e40efa76aa"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.3/ce-linux-x64.tar.gz"
      sha256 "0c20abf4f6295b4542b052d4eb46cf3592fda2b0960015155a7fad56e6b4f2aa"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
