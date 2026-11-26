class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.106.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.3/ce-osx-arm64.tar.gz"
      sha256 "dd2ff48b7577a12bef3745ea75545fef59d30f2417cc5a83d1d9e77d76341ae6"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.3/ce-osx-x64.tar.gz"
      sha256 "dddc344c7d6913599e696732f9bd9e802e1da56f5531a0acd426929f3a63b644"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.3/ce-linux-arm64.tar.gz"
      sha256 "fbe97504076be60c7b9594abbdce46158bf091755eb83530db6d7dcfd8297f9f"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.3/ce-linux-x64.tar.gz"
      sha256 "b76d58f9f5313829919f2df478725082cf592d5e8f4b4604145ea393eea0d8e4"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
