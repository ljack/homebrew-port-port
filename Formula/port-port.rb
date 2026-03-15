class PortPort < Formula
  desc "CLI tools for monitoring and managing listening ports on macOS"
  homepage "https://github.com/ljack/port-port"
  url "https://github.com/ljack/port-port/releases/download/v1.3.2/port-port-v1.3.2-macos.tar.gz"
  sha256 "713856657341c9fa5c878ec7194cb1822a8a412798479e93fa8ca0a9c936ad12"
  version "1.3.2"
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
