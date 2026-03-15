class PortPort < Formula
  desc "CLI tools for monitoring and managing listening ports on macOS"
  homepage "https://github.com/ljack/port-port"
  url "https://github.com/ljack/port-port/releases/download/v1.0.0/port-port-v1.0.0-macos.tar.gz"
  sha256 "283c30b53880b40a6b8ab2e198e1e2af1a03fac63d0a06e65daa0a180ede2f4e"
  version "1.0.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "port-port-cli"
    bin.install "port-port-mcp"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/port-port-cli --help")
  end
end
