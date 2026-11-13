class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.84.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.84.1/ce-osx-arm64.tar.gz"
      sha256 "fd8f160c041165d46dd0ca39caff6a0c6195ae6b690b4137ec2737b0a748673e"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.84.1/ce-osx-x64.tar.gz"
      sha256 "80b1dba42232a022d97fda6a7f2d9dab491e0d896d131f855bb26364bbc20e28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.84.1/ce-linux-arm64.tar.gz"
      sha256 "b8c69bdc66d7b87fc449d2adb5f6d87ed845e5d773bc74d3fba2944d39459ef0"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.84.1/ce-linux-x64.tar.gz"
      sha256 "75dcc63ecc6d68b3d5c12fb5f03633f87810faca2ed21bd7b5f1e9d2445cb067"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
