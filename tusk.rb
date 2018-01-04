class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.3.0/tusk_0.3.0_darwin_amd64.tar.gz"
  version "0.3.0"
  sha256 "7f8968854e10bdeaba5c70f6c0cea98ec62034e4b8035d79e733f5baeb0bfd4e"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
