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
    # Выводим в терминал список ВСЕХ файлов и папок, которые распаковались
    all_files = Dir["**/*"]
    opoo "ВНУТРИ АРХИВА ЛЕЖИТ ВОТ ЧТО: #{all_files.inspect}"
    
    # Чтобы Брю не падал, просто создадим пустой файл для вида
    touch "dummy"
    bin.install "dummy"
  end
end

