class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.108.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.3/ce-osx-arm64.tar.gz"
      sha256 "17261e7875ad34b06138924046016978f39062171dcc4654b87aba6e51bdc23b"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.3/ce-osx-x64.tar.gz"
      sha256 "bdeb95ebf5bfc7f0410f5fff7cfd8efe5b173a59346d0045ea7f1ec919ca8df2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.3/ce-linux-arm64.tar.gz"
      sha256 "fb82d43288034af2614bfdc430a746029eaf8144651919cb9a14fe5d89968663"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.3/ce-linux-x64.tar.gz"
      sha256 "7f93596cba2c4b280062c7b82f399fa034b3e30b9039199590760d6027b05d2f"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
