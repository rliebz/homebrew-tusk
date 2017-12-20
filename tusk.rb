class Tusk < Formula
  desc "A tusk runner built with simplicity in mind"
  homepage "https://github.com/rliebz/tusk"
  url "https://github.com/rliebz/tusk/releases/download/v0.2.3/_0.2.3_darwin_amd64.tar.gz"
  version "0.2.3"
  sha256 "2931e24dd6565253661368fe5171e1d03d70f627ff5ab73e06de5396be978cc1"

  def install
    bin.install "tusk"
    
    bash_completion.install "completion/tusk-completion.bash"
    zsh_completion.install "completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
