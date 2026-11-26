class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.105.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.1/ce-osx-arm64.tar.gz"
      sha256 "48078992a0b1b9163aee98731c0fc6c2b28b6283ed069757f85da33cde102061"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.1/ce-osx-x64.tar.gz"
      sha256 "fc3deaf8312b74f16f3fa0bfc314412940f760153faf835b187142b793bbbb2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.1/ce-linux-arm64.tar.gz"
      sha256 "fb3df80514d6653eeb849f6d73929c630a3f9b76552f361953c094128b69eab2"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.1/ce-linux-x64.tar.gz"
      sha256 "8d52791d12357d40233be46e0f37ffae4f91749056c84bc8fde3e22ed9497e72"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
