class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.3.5/tusk_0.3.5_darwin_amd64.tar.gz"
  version "0.3.5"
  sha256 "41e110f30b80a469f120d48d0c57fe2a60630f1da68b7e9372aab20d4ef40cfc"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
