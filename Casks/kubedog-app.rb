# Written by Kubedog's release script; changes made here by hand are lost with the next release.
cask "kubedog-app" do
  version "0.9.0"
  sha256 "7bef93b9709dff123af004a37e04ef9c7f8793c26005034c2e0068ce1b581300"

  url "https://github.com/pezzking/kubedog/releases/download/v0.9.0/kubedog-0.9.0-macos-arm64.dmg"
  name "Kubedog"
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"

  depends_on arch: :arm64

  app "Kubedog.app"
end
