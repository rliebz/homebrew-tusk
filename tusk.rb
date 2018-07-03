class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.4.1/tusk_0.4.1_darwin_amd64.tar.gz"
  version "0.4.1"
  sha256 "527a8d01043b2ec87af35e858aac7519b0eead6a8c348aeb26ea53a69321fe84"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
