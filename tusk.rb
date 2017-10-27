class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.1.5/tusk_0.1.5_darwin_amd64.tar.gz"
  version "0.1.5"
  sha256 "de5878cf14d2a7ef2c7314f987fc0b5b901af14ce4c53f3363dcadf68d5d572a"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
