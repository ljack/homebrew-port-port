cask "port-port-app" do
  version "1.3.0"
  sha256 "6e51082a40c34e87abd3dffedf5a092aa0b3a42451dbf652bd8c6d50d50c700a"

  url "https://github.com/ljack/port-port/releases/download/v1.3.0/Port-Port-v1.3.0.zip"
  name "PortPort"
  desc "Menu bar app for monitoring listening ports on macOS"
  homepage "https://github.com/ljack/port-port"

  depends_on macos: ">= :sequoia"

  app "PortPort.app"

  zap trash: [
    "~/Library/Application Support/port-port",
  ]
end
