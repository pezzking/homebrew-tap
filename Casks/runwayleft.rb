cask "runwayleft" do
  version "1.14.0"
  sha256 "d0de51265adde3a7560f2e4a7deb4de049387aba40d971358bcc7313bdf07412"

  url "https://github.com/pezzking/runwayleft/releases/download/v#{version}/RunwayLeft-#{version}.zip"
  name "RunwayLeft"
  desc "Menu bar meter for Claude Code, Codex, and LiteLLM quotas"
  homepage "https://github.com/pezzking/runwayleft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "RunwayLeft.app"

  uninstall quit: "dev.runwayleft.app"

  zap trash: [
    "~/Library/Application Support/RunwayLeft",
    "~/Library/Preferences/dev.runwayleft.app.plist",
  ]
end
