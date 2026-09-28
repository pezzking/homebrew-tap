cask "runwayleft" do
  version "1.13.3"
  sha256 "0139b76840f0c24edb76a00831d12535f8234e428b4bdc2b2bdd8496a800f6b5"

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
