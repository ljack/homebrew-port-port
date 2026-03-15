class PortPort < Formula
  desc "CLI tools for monitoring and managing listening ports on macOS"
  homepage "https://github.com/ljack/port-port"
  url "https://github.com/ljack/port-port/releases/download/v1.1.0/port-port-v1.1.0-macos.tar.gz"
  sha256 "420486328faaa5191b7a99dee8b99ab01d122a8daa0dc7283d4abece38d75e7d"
  version "1.1.0"
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
