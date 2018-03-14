class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.3.4/tusk_0.3.4_darwin_amd64.tar.gz"
  version "0.3.4"
  sha256 "b08c34857926a55b344ae43fdfeb4ddc10dc0dd31e4dea69169ee7e15746c8c4"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
