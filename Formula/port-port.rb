class PortPort < Formula
  desc "CLI tools for monitoring and managing listening ports on macOS"
  homepage "https://github.com/ljack/port-port"
  url "https://github.com/ljack/port-port/releases/download/v1.4.0/port-port-v1.4.0-macos.tar.gz"
  sha256 "7a0a58dbe20957aaec1a946d9b1127d7831de8663b0b68150611a27222849baf"
  version "1.4.0"
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
