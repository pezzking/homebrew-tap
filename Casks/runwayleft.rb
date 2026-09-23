cask "runwayleft" do
  version "1.13.2"
  sha256 "ff9b0d41df328b3ff648c2d97d03eb4699a198638fa45a44e70f1b9d09d981ea"

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
