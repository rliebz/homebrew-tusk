class Tusk < Formula
  desc "The modern task runner"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.4.5/tusk_0.4.5_darwin_amd64.tar.gz"
  version "0.4.5"
  sha256 "5d79aa8cfef53b7c1d6a5ead7a7fdd8aa81f943d186418a4552689a7afbbea1c"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
