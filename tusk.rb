class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.4.0/tusk_0.4.0_darwin_amd64.tar.gz"
  version "0.4.0"
  sha256 "50e737e8d04880fec355cd046abfcbc44d94e91401ff1afe8ee4069e1d3d0cb9"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
