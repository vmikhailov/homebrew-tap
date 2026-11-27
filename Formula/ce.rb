class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.107.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.2/ce-osx-arm64.tar.gz"
      sha256 "ffab6713702b3b8d6fad8e7c81dc4673aed5a1b5f52541e5403ca2f0edbc8afa"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.2/ce-osx-x64.tar.gz"
      sha256 "07877b32febf35822a316dbc1aa210097bb8edd4233ac786667d5dcda681df06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.2/ce-linux-arm64.tar.gz"
      sha256 "0fab38f771684aad8228ea95444ba4f61865cf0197bfe75238cd131609825db9"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.2/ce-linux-x64.tar.gz"
      sha256 "5337437f9d61e8916d97438bddd82be91c8b9b7e385be0c258bc43391c42889b"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
