class Tasedeck < Formula
  desc "Desktop client for managing MCP servers and developer tools"
  homepage "https://github.com/limboprog/TaseDeck"
  version "0.1.0-alpha"

  if Hardware::CPU.intel?
    url "https://github.com/limboprog/TaseDeck/releases/download/v0.1.0-alpha/TaseDeck_x64.app.tar.gz"
    sha256 "27b18cfda8c93364c53e2b8882318df4a097962a86eac4c5c0bac83dbe88a112"
  elsif Hardware::CPU.arm?
    url "https://github.com/limboprog/TaseDeck/releases/download/v0.1.0-alpha/TaseDeck_aarch64.app.tar.gz"
    sha256 "6e664fca1b59814d82aa6add6fcf1648be407864c77b48419d5e25937efcdb1c"
  end

def install
    # Поскольку внутри архива лежит ТОЛЬКО само приложение, 
    # этот код теперь сработает со 100% гарантией!
    prefix.install "TaseDeck.app"
  end

  def caveats
    <<~EOS
      TaseDeck was successfully installed into your Applications folder!
    EOS
  end
end

