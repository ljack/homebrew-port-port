cask "port-port-app" do
  version "1.2.4"
  sha256 "2b541769b7ca72a4cfe9a3f565d52452622b34d1d0667f344b83fcd54c0a2172"

  url "https://github.com/ljack/port-port/releases/download/v1.2.4/Port-Port-v1.2.4.zip"
  name "PortPort"
  desc "Menu bar app for monitoring listening ports on macOS"
  homepage "https://github.com/ljack/port-port"

  depends_on macos: ">= :sequoia"

  app "PortPort.app"

  zap trash: [
    "~/Library/Application Support/port-port",
  ]
end
