class PortPort < Formula
  desc "CLI tools for monitoring and managing listening ports on macOS"
  homepage "https://github.com/ljack/port-port"
  url "https://github.com/ljack/port-port/releases/download/v1.2.2/port-port-v1.2.2-macos.tar.gz"
  sha256 "61f7d9acc0f8073fd76006af8cf45f035ecdc6f6c3af35c97bf01892840528e1"
  version "1.2.2"
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
