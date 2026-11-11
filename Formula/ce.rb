class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.81.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.81.0/ce-osx-arm64.tar.gz"
      sha256 "90321e3170e402712050e685aaba71d167c0e0d0d846b1fe09d5450cba0cff80"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.81.0/ce-osx-x64.tar.gz"
      sha256 "85ff83d962fd6cd4b94885a305a59010a7cd956f6be9e6f87dd7cd07e32bea3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.81.0/ce-linux-arm64.tar.gz"
      sha256 "5c2b198410cb042a5f53524a699d0355b688dee069fd886a8a0f8542d409cfcb"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.81.0/ce-linux-x64.tar.gz"
      sha256 "ac077047f2225bfae71a5fe455183a2fa2ed694d4c53d4e95c500658e9b61a34"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
