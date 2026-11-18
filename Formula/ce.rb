class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.89.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.7/ce-osx-arm64.tar.gz"
      sha256 "562783354ae9bb5a1bdd90fc7fdede81bcb6b004ddc6a009cb68d93ea4d9b0e3"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.7/ce-osx-x64.tar.gz"
      sha256 "1375d9d820619dbb06a4ebd506366f475df3e3fef70c09d51eccce954e4c3e7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.7/ce-linux-arm64.tar.gz"
      sha256 "b813637c455c860b3de8d967eb88ccc97646a8f547635611feb530f2f17c1874"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.7/ce-linux-x64.tar.gz"
      sha256 "36763ba5a3cf1cdc3fdcd2b288de87ebcecaf082dd548b8d524fbd910664c95b"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
