# Written by Kubedog's release script; changes made here by hand are lost with the next release.
cask "kubedog-app" do
  version "0.6.1"
  sha256 "d7869f34a998bfabc6db631b69d481dbe9b555987e65ab872f8ec748133cdd28"

  url "https://github.com/pezzking/kubedog/releases/download/v0.6.1/kubedog-0.6.1-macos-arm64.dmg"
  name "Kubedog"
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"

  depends_on arch: :arm64

  app "Kubedog.app"
end
