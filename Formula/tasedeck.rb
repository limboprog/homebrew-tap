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
    (prefix/"TaseDeck.app").install "Contents"
  end

  # Этот блок заставит Homebrew связать приложение с папкой Программы
  def post_install
    app_dir = "/Applications"
    if File.exist?(app_dir) && !File.exist?("#{app_dir}/TaseDeck.app")
      ln_sf "#{prefix}/TaseDeck.app", app_dir
    end
  end

  def caveats
    <<~EOS
      TaseDeck.app was linked to your /Applications folder!
      You can now launch it from Finder or Launchpad.
    EOS
  end
end
