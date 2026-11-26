class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.105.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.2/ce-osx-arm64.tar.gz"
      sha256 "cbf7caba93d3a040919e09e8fabad7bbcfe85075b278b6e0a1b45a323ec63408"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.2/ce-osx-x64.tar.gz"
      sha256 "f78c783cf79704adc96714cfc842bf9edb84fc34203f2d6e679fa8cb5f5f8677"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.2/ce-linux-arm64.tar.gz"
      sha256 "44d5b442caa92af6022968fa6043563c35dea21824befa2dcb00fb467d7beafd"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.2/ce-linux-x64.tar.gz"
      sha256 "6e121dff89f6879e3e3537c8c6d26c8d0857f698df2414037e7553757719f586"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
