class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.1.3/tusk_0.1.3_darwin_amd64.tar.gz"
  version "0.1.3"
  sha256 "c59f70a35db48b523e5b5ba790d6e6b8522b921baaa24b267f73ff57a6426c63"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
