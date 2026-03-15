cask "port-port-app" do
  version "1.2.0"
  sha256 "5190ea4f7241566b094e724517d02d9aa20666cffbec0d47d71b93ded8ebdc9f"

  url "https://github.com/ljack/port-port/releases/download/v1.2.0/Port-Port-v1.2.0.zip"
  name "Port Port"
  desc "Menu bar app for monitoring listening ports on macOS"
  homepage "https://github.com/ljack/port-port"

  depends_on macos: ">= :sequoia"

  app "Port Port.app"

  zap trash: [
    "~/Library/Application Support/port-port",
  ]
end
