class Tasedeck < Formula
  desc "Desktop client for managing MCP servers and developer tools"
  homepage "https://github.com/limboprog/TaseDeck"
  version "0.1.0-alpha"

  if Hardware::CPU.intel?
    url "https://github.com/limboprog/TaseDeck/releases/download/v0.1.0-alpha/TaseDeck_0.1.0_x64.dmg"
    sha256 "02af637fb06ac0f7163b396e133c94473ce47a1da67b2d56a06644f849646c27"
  elsif Hardware::CPU.arm?
    url "https://github.com/limboprog/TaseDeck/releases/download/v0.1.0-alpha/TaseDeck_0.1.0_aarch64.dmg"
    sha256 "15a48788bc4cae2e4580f59048a94689cbfa75904eb2023d53b9777bd3681cc0"
  end

  def install
    prefix.install "TaseDeck.app"
  end

  def caveats
    <<~EOS
      TaseDeck was successfully installed into your Applications folder!
    EOS
  end
end
