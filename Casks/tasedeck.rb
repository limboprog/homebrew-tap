cask "tasedeck" do
  version "0.1.0-alpha"

  on_intel do
    url "https://github.com/limboprog/TaseDeck/releases/download/v0.1.0-alpha/TaseDeck_x64.app.tar.gz"
    sha256 "27b18cfda8c93364c53e2b8882318df4a097962a86eac4c5c0bac83dbe88a112"
  end
  on_arm do
    url "https://github.com/limboprog/TaseDeck/releases/download/v0.1.0-alpha/TaseDeck_aarch64.app.tar.gz"
    sha256 "6e664fca1b59814d82aa6add6fcf1648be407864c77b48419d5e25937efcdb1c"
  end

  name "TaseDeck"
  desc "Desktop client for managing MCP servers and developer tools"
  homepage "https://github.com/limboprog/TaseDeck"

  app "TaseDeck.app"
end

