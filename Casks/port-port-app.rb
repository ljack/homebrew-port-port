cask "port-port-app" do
  version "1.2.3"
  sha256 "deb818aae293af355cb3e7a50c3ea04704292973786e8b61a403ba06879d8e88"

  url "https://github.com/ljack/port-port/releases/download/v1.2.3/Port-Port-v1.2.3.zip"
  name "PortPort"
  desc "Menu bar app for monitoring listening ports on macOS"
  homepage "https://github.com/ljack/port-port"

  depends_on macos: ">= :sequoia"

  app "PortPort.app"

  zap trash: [
    "~/Library/Application Support/port-port",
  ]
end
