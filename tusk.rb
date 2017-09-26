class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage ""
  url "https://github.com/rliebz/tusk/releases/download/v0.1.2/tusk_0.1.2_darwin_amd64.tar.gz"
  version "0.1.2"
  sha256 "47667f0c3686c73f8647e8acd1722125d303d3e4e78dde642ed06ccae81134f1"

  def install
    bin.install "tusk"
  end

  test do
    tusk --version
  end
end
