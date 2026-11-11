# typed: false
# frozen_string_literal: true

class GoHasprCli < Formula
  desc "A CLI tool to interact with Passbolt, an open source password manager for teams"
  homepage "https://github.com/haspr-dev/go-haspr-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/haspr-dev/go-haspr-cli/releases/download/v0.6.0/pbolt_0.6.0_darwin_amd64.tar.gz"
      sha256 "9eae4d5643c8b9defc7a20756d14e263d3be712e521fbf9cdf9b8c4776b59f1b"

      define_method(:install) do
        bin.install "pbolt" => "haspr"
        bin.install "git-credential-pbolt" => "git-credential-haspr"
        bin.install "docker-credential-pbolt" => "docker-credential-haspr"
        bin.install_symlink "haspr" => "pbolt"
        bin.install_symlink "haspr" => "passbolt"
        bin.install_symlink "git-credential-haspr" => "git-credential-pbolt"
        bin.install_symlink "git-credential-haspr" => "git-credential-passbolt"
        bin.install_symlink "docker-credential-haspr" => "docker-credential-pbolt"
        bin.install_symlink "docker-credential-haspr" => "docker-credential-passbolt"
        bash_completion.install "completion/bash" => "haspr"
        zsh_completion.install "completion/zsh" => "_haspr"
        fish_completion.install "completion/fish" => "haspr.fish"
        man1.install Dir["man/*"]
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/haspr-dev/go-haspr-cli/releases/download/v0.6.0/pbolt_0.6.0_darwin_arm64.tar.gz"
      sha256 "7042f002a0316fca68768085c1e9f7959ddce8668a1e25e33475d20b99f34790"

      define_method(:install) do
        bin.install "pbolt" => "haspr"
        bin.install "git-credential-pbolt" => "git-credential-haspr"
        bin.install "docker-credential-pbolt" => "docker-credential-haspr"
        bin.install_symlink "haspr" => "pbolt"
        bin.install_symlink "haspr" => "passbolt"
        bin.install_symlink "git-credential-haspr" => "git-credential-pbolt"
        bin.install_symlink "git-credential-haspr" => "git-credential-passbolt"
        bin.install_symlink "docker-credential-haspr" => "docker-credential-pbolt"
        bin.install_symlink "docker-credential-haspr" => "docker-credential-passbolt"
        bash_completion.install "completion/bash" => "haspr"
        zsh_completion.install "completion/zsh" => "_haspr"
        fish_completion.install "completion/fish" => "haspr.fish"
        man1.install Dir["man/*"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/haspr-dev/go-haspr-cli/releases/download/v0.6.0/pbolt_0.6.0_linux_amd64.tar.gz"
      sha256 "a374719637b1369a1a8d8bcaec0361d90840a626c4e479c631252befb5d8b9e8"

      define_method(:install) do
        bin.install "pbolt" => "haspr"
        bin.install "git-credential-pbolt" => "git-credential-haspr"
        bin.install "docker-credential-pbolt" => "docker-credential-haspr"
        bin.install_symlink "haspr" => "pbolt"
        bin.install_symlink "haspr" => "passbolt"
        bin.install_symlink "git-credential-haspr" => "git-credential-pbolt"
        bin.install_symlink "git-credential-haspr" => "git-credential-passbolt"
        bin.install_symlink "docker-credential-haspr" => "docker-credential-pbolt"
        bin.install_symlink "docker-credential-haspr" => "docker-credential-passbolt"
        bash_completion.install "completion/bash" => "haspr"
        zsh_completion.install "completion/zsh" => "_haspr"
        fish_completion.install "completion/fish" => "haspr.fish"
        man1.install Dir["man/*"]
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/haspr-dev/go-haspr-cli/releases/download/v0.6.0/pbolt_0.6.0_linux_arm64.tar.gz"
      sha256 "597ba52ab173deeef045d7de99afdc06d755c7412ac3051238824cc1d8832b70"

      define_method(:install) do
        bin.install "pbolt" => "haspr"
        bin.install "git-credential-pbolt" => "git-credential-haspr"
        bin.install "docker-credential-pbolt" => "docker-credential-haspr"
        bin.install_symlink "haspr" => "pbolt"
        bin.install_symlink "haspr" => "passbolt"
        bin.install_symlink "git-credential-haspr" => "git-credential-pbolt"
        bin.install_symlink "git-credential-haspr" => "git-credential-passbolt"
        bin.install_symlink "docker-credential-haspr" => "docker-credential-pbolt"
        bin.install_symlink "docker-credential-haspr" => "docker-credential-passbolt"
        bash_completion.install "completion/bash" => "haspr"
        zsh_completion.install "completion/zsh" => "_haspr"
        fish_completion.install "completion/fish" => "haspr.fish"
        man1.install Dir["man/*"]
      end
    end
  end
end
