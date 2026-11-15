class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.89.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.1/ce-osx-arm64.tar.gz"
      sha256 "e9e33468ccaff89fab2f6af32673a2a7f4c951b63fc77d8c2d13189e64bd9ba7"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.1/ce-osx-x64.tar.gz"
      sha256 "44d85533b5dd0c3c696cc4568524101918518197529cb5d3934d41a193686538"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.1/ce-linux-arm64.tar.gz"
      sha256 "903fef88b4c51b1ef192f69c2a8950a756380e0db24896e01cc34de045cd1338"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.1/ce-linux-x64.tar.gz"
      sha256 "8f26b8bb5a54ef7d027b2b654959741d7d5785a285c0973529b2225f8febe23a"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
