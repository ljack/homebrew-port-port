class PortPort < Formula
  desc "CLI tools for monitoring and managing listening ports on macOS"
  homepage "https://github.com/ljack/port-port"
  url "https://github.com/ljack/port-port/releases/download/v1.2.0/port-port-v1.2.0-macos.tar.gz"
  sha256 "417f90c2183b5fac9945f43263deffbe5fac46a77447ed8c03eb2ef9e13005dc"
  version "1.2.0"
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
