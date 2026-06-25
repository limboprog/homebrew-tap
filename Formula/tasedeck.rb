class Tasedeck < Formula
  desc "Desktop client for managing MCP servers and developer tools"
  homepage "https://github.com/limboprog/TaseDeck"
  version "0.1.0-alpha"

  if Hardware::CPU.intel?
    url "https://github.com/limboprog/TaseDeck/releases/download/v0.1.0-alpha/TaseDeck_0.1.0_x64.dmg"
    sha256 "02af637bfb06ac0cf07163b39ad9e1d5526cf57fa8f2c846d97161d1c84b1efb"
  elsif Hardware::CPU.arm?
    url "https://github.com/limboprog/TaseDeck/releases/download/v0.1.0-alpha/TaseDeck_0.1.0_aarch64.dmg"
    sha256 "15a48788bc4cae2e4580f59045a147c74b034bc0cbbf88f6518784f002c7d7cc"
  end

def install
    # Находим любую папку, которая заканчивается на .app, как бы она ни называлась
    app_path = Dir["*.app"].first

    if app_path.nil?
      raise "Не удалось найти файл .app внутри распакованного архива!"
    end

    # Устанавливаем именно то, что нашли
    prefix.install app_path
  end

  def caveats
    <<~EOS
      TaseDeck was successfully installed into your Applications folder!
    EOS
  end
end

