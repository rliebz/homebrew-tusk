class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.3.2/tusk_0.3.2_darwin_amd64.tar.gz"
  version "0.3.2"
  sha256 "9c675280d0c8f52f2ccc51ce453a94738df0929bf16e2b20222dcf2a35a30f12"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
