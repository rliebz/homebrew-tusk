# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tusk < Formula
  desc "The modern task runner"
  homepage "https://github.com/rliebz/tusk"
  version "0.6.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rliebz/tusk/releases/download/v0.6.2/tusk_0.6.2_darwin_amd64.tar.gz"
    sha256 "28bd010344c209e40f3dc0dabcede30eeab767d7a49b001d0f6e782261ad2b9c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rliebz/tusk/releases/download/v0.6.2/tusk_0.6.2_darwin_arm64.tar.gz"
    sha256 "1ea91a78be1434e112fe3641b7fbe08f7674e4f70d880f76d5879ca4e24a4c6c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rliebz/tusk/releases/download/v0.6.2/tusk_0.6.2_linux_amd64.tar.gz"
    sha256 "65d6745f9a03e986ef7b93ba2418b44548f142e499886e002afa4dbb5da8c6c6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/rliebz/tusk/releases/download/v0.6.2/tusk_0.6.2_linux_arm.tar.gz"
    sha256 "97b434f4dd821d9b79c01c69d4b1cd11dee7fe8cb7cc7095759f874a07ce4b5f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/rliebz/tusk/releases/download/v0.6.2/tusk_0.6.2_linux_arm64.tar.gz"
    sha256 "5a3b42022e7e2438b56294a3c8f2b529b20848ff98cad37419f52f97e72285bc"
  end

  def install
    bin.install "tusk"

    bash_completion.install "appcli/completion/tusk-completion.bash"
    fish_completion.install "appcli/completion/tusk.fish"
    zsh_completion.install "appcli/completion/_tusk"
  end

  test do
    system "#{bin}/tusk --version"
  end
end
