class Tusk < Formula
  desc "The modern task runner"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.4.4/tusk_0.4.4_darwin_amd64.tar.gz"
  version "0.4.4"
  sha256 "d154b44da8d6ad5589c3883ad263a3cfc3c23c8bc862e727706c1c6ae60e5b37"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
