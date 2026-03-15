class PortPort < Formula
  desc "CLI tools for monitoring and managing listening ports on macOS"
  homepage "https://github.com/ljack/port-port"
  url "https://github.com/ljack/port-port/releases/download/v1.2.3/port-port-v1.2.3-macos.tar.gz"
  sha256 "86340e3cc0f510639a62bdbc18b163c20162e0eb18c309bd7985f71a01f3cce2"
  version "1.2.3"
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
