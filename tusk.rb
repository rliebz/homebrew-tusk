class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.2.0/tusk_0.2.0_darwin_amd64.tar.gz"
  version "0.2.0"
  sha256 "ca8aba798d9ee00952e6d59dcf886be18184c4dce52df80c68ee459dd17ebcae"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
