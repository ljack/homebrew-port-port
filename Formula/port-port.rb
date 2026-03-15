class PortPort < Formula
  desc "CLI tools for monitoring and managing listening ports on macOS"
  homepage "https://github.com/ljack/port-port"
  url "https://github.com/ljack/port-port/releases/download/v1.3.1/port-port-v1.3.1-macos.tar.gz"
  sha256 "a5108262fbbc3c80d16e489abde45c8f7e693beced3d517e6c475014465a3d2b"
  version "1.3.1"
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
