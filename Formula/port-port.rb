class PortPort < Formula
  desc "CLI tools for monitoring and managing listening ports on macOS"
  homepage "https://github.com/ljack/port-port"
  url "https://github.com/ljack/port-port/releases/download/v1.2.1/port-port-v1.2.1-macos.tar.gz"
  sha256 "dcb2cb3fc690b64055692d86bba06825f36650498227125904f1f588fe400fb9"
  version "1.2.1"
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
