class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.2.2/tusk_0.2.2_darwin_amd64.tar.gz"
  version "0.2.2"
  sha256 "352ad7cf0a10a45c40a7f390606efa163accd48b09c1414f8f076daf00031887"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
