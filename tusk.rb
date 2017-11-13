class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.2.1/tusk_0.2.1_darwin_amd64.tar.gz"
  version "0.2.1"
  sha256 "776d226d0466dafcd10cdbce3374a2cc52a5affc30faa18ff7b99c3a8f30b352"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
