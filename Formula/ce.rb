class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.6/ce-osx-arm64.tar.gz"
      sha256 "f37dbb9d6936367718998fec09a39dff4901a32ff3d26a771b78d046d69c5613"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.6/ce-osx-x64.tar.gz"
      sha256 "83ed3dfe180bdde83001af280aa611537fc1ea43485fab6fca81bb213cc537b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.6/ce-linux-arm64.tar.gz"
      sha256 "73c6b798404a90781f2e26edcb458bab57b0aa40af126f958d5dd2221c7b0828"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.6/ce-linux-x64.tar.gz"
      sha256 "8ec0fcd9ceedab3c94607bece9fa09af9ed42a6670a4e8d7b0be3e025d95b13b"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
