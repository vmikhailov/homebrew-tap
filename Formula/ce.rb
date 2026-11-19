class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.7/ce-osx-arm64.tar.gz"
      sha256 "d8a3588f43517b3d6a892567bc8b400d1f85dad52b4a06bcf8aea6591afe6d47"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.7/ce-osx-x64.tar.gz"
      sha256 "10533e23c26d08f1ebba6f6c8a5e1033e97d5e0f2425dfb90ae9b8dac8945b14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.7/ce-linux-arm64.tar.gz"
      sha256 "fae6b5d9294799632295f762c867f2020acff9235f4e62159ea9e52cc404f0cf"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.7/ce-linux-x64.tar.gz"
      sha256 "b9c2c4237d864861844c4d207b43743caaae080072f91832bba3a75000b1b021"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
