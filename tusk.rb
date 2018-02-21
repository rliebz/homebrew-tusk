class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.3.3/tusk_0.3.3_darwin_amd64.tar.gz"
  version "0.3.3"
  sha256 "5454eec661f6cd031b13b8d732b9b221b7c589e5c0c1d8067185e5ad40cade08"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
