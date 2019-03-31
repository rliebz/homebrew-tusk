class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.4.3/tusk_0.4.3_darwin_amd64.tar.gz"
  version "0.4.3"
  sha256 "bf5a8f31aa6005c24692ed2ed439f63da102365816e4582a91e7bc920dda6abe"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
