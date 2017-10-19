class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.1.4/tusk_0.1.4_darwin_amd64.tar.gz"
  version "0.1.4"
  sha256 "75b5c21e8251a5417924315ee1ce3c6841407381c80ddbbd8d407e472c87c81f"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
