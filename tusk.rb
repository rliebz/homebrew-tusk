class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage ""
  url "https://github.com/rliebz/tusk/releases/download/v0.1.0/tusk_0.1.0_darwin_amd64.tar.gz"
  version "0.1.0"
  sha256 "874fb28348a83ff3687bd246cc20a68eace69d78519d023b9ba30ce7feba07df"

  def install
    bin.install "tusk"
  end

  test do
    tusk --version
  end
end
