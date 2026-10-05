class CypherMcp < Formula
  desc "Zero-CGO Model Context Protocol (MCP) server & CLI for SQLite with OpenCypher"
  homepage "https://github.com/vmikhailov/cypher-mcp"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/cypher-mcp/releases/download/v#{version}/cypher-mcp-darwin-arm64"
      sha256 "6d7b3cd0b94e410e66ed74f408435944760ad9546b0bc8e18a24e723941f54e8"
    else
      url "https://github.com/vmikhailov/cypher-mcp/releases/download/v#{version}/cypher-mcp-darwin-amd64"
      sha256 "4aae10a985d0ba4fc39e3d1adaad2d459caa3575029f7b77b1bb79f2823ae6a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/cypher-mcp/releases/download/v#{version}/cypher-mcp-linux-arm64"
      sha256 "db18a8e62ef667774fc43e9f84dfe56b776ba4b0ac51c889c5e55a2c5a875e76"
    else
      url "https://github.com/vmikhailov/cypher-mcp/releases/download/v#{version}/cypher-mcp-linux-amd64"
      sha256 "ff24c6f67ec27504e6e9012cb5af39c589440b47402c5f031ff7bd86a08ea7ae"
    end
  end

  def install
    bin_name = if OS.mac?
      Hardware::CPU.arm? ? "cypher-mcp-darwin-arm64" : "cypher-mcp-darwin-amd64"
    else
      Hardware::CPU.arm? ? "cypher-mcp-linux-arm64" : "cypher-mcp-linux-amd64"
    end
    bin.install bin_name => "cypher-mcp"
  end

  test do
    assert_match "cypher-mcp", shell_output("#{bin}/cypher-mcp version")
  end
end
