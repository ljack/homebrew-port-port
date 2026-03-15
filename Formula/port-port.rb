class PortPort < Formula
  desc "CLI tools for monitoring and managing listening ports on macOS"
  homepage "https://github.com/ljack/port-port"
  url "https://github.com/ljack/port-port/releases/download/v1.3.3/port-port-v1.3.3-macos.tar.gz"
  sha256 "624ad27e86426d82c22aadef27bba876c84012e6483dd813eef58a4b9aebb307"
  version "1.3.3"
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
