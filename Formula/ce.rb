class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.101.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.4/ce-osx-arm64.tar.gz"
      sha256 "18d41bab9decfa50da2a0d75251c58921e6d2a974824a22f37731c06de5626b5"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.4/ce-osx-x64.tar.gz"
      sha256 "3b9fa48af8e16d4abdf52e342b60763d1b83e93a13c85d139d2fdc0209984497"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.4/ce-linux-arm64.tar.gz"
      sha256 "0db0af2c94b448a1705e8a8d40b55c699f4fb79ee178b9ab0114919e4e287320"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.4/ce-linux-x64.tar.gz"
      sha256 "2b5956eca5199f751f842e8e8fb8cbecf28907c0080d981fc43b28a9fa804488"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
