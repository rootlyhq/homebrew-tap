# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rootly < Formula
  desc "Command line tool for rootly.com"
  homepage "https://rootly.com"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rootlyhq/cli/releases/download/v1.2.0/rootly_1.2.0_darwin_amd64.tar.gz"
      sha256 "c7d162df20d7d95743994a73e53a9d396eb06cff6bda3a32b8cdf8294e759e33"

      def install
        bin.install "rootly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rootlyhq/cli/releases/download/v1.2.0/rootly_1.2.0_darwin_arm64.tar.gz"
      sha256 "bce1234664e382a530056b26c874a6cb0d291a1062146b8c8bf085641ed74dc4"

      def install
        bin.install "rootly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/cli/releases/download/v1.2.0/rootly_1.2.0_linux_arm64.tar.gz"
      sha256 "348acb1905f8e01cb3c5b51617cb036e4af332132107c87bf648914f8eed810e"

      def install
        bin.install "rootly"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/cli/releases/download/v1.2.0/rootly_1.2.0_linux_armv6.tar.gz"
      sha256 "c5543c646b1026ae5007876aa37f6b9c5bc4cae8860408945de05909387313ea"

      def install
        bin.install "rootly"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rootlyhq/cli/releases/download/v1.2.0/rootly_1.2.0_linux_amd64.tar.gz"
      sha256 "a19b594c7c70ad59d09456d1a46cae042cd75e2c719de1c154ce6416e58db71b"

      def install
        bin.install "rootly"
      end
    end
  end
end
