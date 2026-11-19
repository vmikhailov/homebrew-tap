class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.11/ce-osx-arm64.tar.gz"
      sha256 "0abb3c4e3c735de68e3dc4c6574726261ad7ba709ede02e0d348133ab3ef2580"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.11/ce-osx-x64.tar.gz"
      sha256 "e11344476eff7914cdf68600afcb3178bfd14af6baa7717b6fc6702ced26fda2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.11/ce-linux-arm64.tar.gz"
      sha256 "fa527ef96da9a91a060e3ceec2be0e7ee338fc6ebedeec3b023c430191d45aba"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.11/ce-linux-x64.tar.gz"
      sha256 "a74c56b275aaa7b36e437fe3625e2a5c31f4fa684f1642d5856ea6c2cdb7f2df"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
