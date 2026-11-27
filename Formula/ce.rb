class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.107.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.3/ce-osx-arm64.tar.gz"
      sha256 "ee1ed67a5786b0af94f868a9096ac344f6b3d02cc06102ce07b237f7fdf8f6d0"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.3/ce-osx-x64.tar.gz"
      sha256 "de66e1bc97fc1ce00b48e0e2588f95f89a74f50c22988b5a3c5db85b7bcfc5da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.3/ce-linux-arm64.tar.gz"
      sha256 "8755ceec1fd6c7761987e405a64650881e1f74b8161582bc1e7188d890159e65"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.3/ce-linux-x64.tar.gz"
      sha256 "9fbc89b634da847e523810771236697fa8594e36e174edc7d708de38a2c1893f"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
