cask "port-port-app" do
  version "1.3.2"
  sha256 "7b105534ed97a0617b6fd94525e7911abbb4f666d8a3f054b098cbfccd29fb74"

  url "https://github.com/ljack/port-port/releases/download/v1.3.2/Port-Port-v1.3.2.zip"
  name "PortPort"
  desc "Menu bar app for monitoring listening ports on macOS"
  homepage "https://github.com/ljack/port-port"

  depends_on macos: ">= :sequoia"

  app "PortPort.app"

  zap trash: [
    "~/Library/Application Support/port-port",
  ]
end
