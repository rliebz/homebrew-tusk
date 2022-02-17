# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tusk < Formula
  desc "The modern task runner"
  homepage "https://github.com/rliebz/tusk"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rliebz/tusk/releases/download/v0.6.3/tusk_0.6.3_darwin_arm64.tar.gz"
      sha256 "e72d3e5890d9ba9f6473a2a43daba7c8ebf5df23805070eb47a110e9b9d59e36"

      def install
        bin.install "tusk"

        bash_completion.install "appcli/completion/tusk-completion.bash"
        fish_completion.install "appcli/completion/tusk.fish"
        zsh_completion.install "appcli/completion/_tusk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rliebz/tusk/releases/download/v0.6.3/tusk_0.6.3_darwin_amd64.tar.gz"
      sha256 "9e45d895e13c920509fdb862f79a4f661607eea64a978e9928a488b92ba28104"

      def install
        bin.install "tusk"

        bash_completion.install "appcli/completion/tusk-completion.bash"
        fish_completion.install "appcli/completion/tusk.fish"
        zsh_completion.install "appcli/completion/_tusk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rliebz/tusk/releases/download/v0.6.3/tusk_0.6.3_linux_arm.tar.gz"
      sha256 "e7714ee30d591467e247021726ef278bd38230a5f8e2aa15d0aa0323c5e7ce8b"

      def install
        bin.install "tusk"

        bash_completion.install "appcli/completion/tusk-completion.bash"
        fish_completion.install "appcli/completion/tusk.fish"
        zsh_completion.install "appcli/completion/_tusk"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rliebz/tusk/releases/download/v0.6.3/tusk_0.6.3_linux_arm64.tar.gz"
      sha256 "a486e9ddcbd9e059286243de68885d7dbe6e166de3695e25b8429c5f45597c70"

      def install
        bin.install "tusk"

        bash_completion.install "appcli/completion/tusk-completion.bash"
        fish_completion.install "appcli/completion/tusk.fish"
        zsh_completion.install "appcli/completion/_tusk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rliebz/tusk/releases/download/v0.6.3/tusk_0.6.3_linux_amd64.tar.gz"
      sha256 "50cb4de7f68c2021eeb24d480e1051096680d4b1b1c60005f520fb234b0fcbcd"

      def install
        bin.install "tusk"

        bash_completion.install "appcli/completion/tusk-completion.bash"
        fish_completion.install "appcli/completion/tusk.fish"
        zsh_completion.install "appcli/completion/_tusk"
      end
    end
  end

  test do
    system "#{bin}/tusk --version"
  end
end
