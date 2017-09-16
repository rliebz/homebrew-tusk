class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage ""
  url "https://github.com/rliebz/tusk/releases/download/v0.1.1/tusk_0.1.1_darwin_amd64.tar.gz"
  version "0.1.1"
  sha256 "1b2f628303583aba0cf3bff3148bda65c8902b093436b44755b7c90bbc8516ef"

  def install
    bin.install "tusk"
  end

  test do
    tusk --version
  end
end
