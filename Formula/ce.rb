class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.108.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.2/ce-osx-arm64.tar.gz"
      sha256 "c5c00c788d51c3a0beefad7961deb2456a9afa09a5dca083b2cf723677d72257"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.2/ce-osx-x64.tar.gz"
      sha256 "f1f3e2b5a2cf1469500d5442eeaaec7f93ac86c8658c7bccebc8ab09bed2dbdc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.2/ce-linux-arm64.tar.gz"
      sha256 "0f5e6d16fc3f593bdf7190fce32ffe8f1d535d4c092b3bdf255dae776416572d"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.2/ce-linux-x64.tar.gz"
      sha256 "11c31e24276abe74b38faa4b4ccc786a66a8a12796766c985dc5fdab190c7150"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
