class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.4.2/tusk_0.4.2_darwin_amd64.tar.gz"
  version "0.4.2"
  sha256 "e6448a6413093cdf78cc61b2ed70c46811e53a8ef0f5fb630b3f1dc2277ae935"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
