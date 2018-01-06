class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.3.1/tusk_0.3.1_darwin_amd64.tar.gz"
  version "0.3.1"
  sha256 "201dc0a8bed2bb875c55e03296fe05b389e5649869c97f5fd9195eefc82b96ab"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
