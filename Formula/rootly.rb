# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rootly < Formula
  desc "Command line tool for rootly.com"
  homepage "https://rootly.com"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rootlyhq/cli/releases/download/v1.2.1/rootly_1.2.1_darwin_amd64.tar.gz"
      sha256 "af76c5a72390d7f7a1c8caa989eb47590dfc72d2281f4d696012ec1b799cc851"

      def install
        bin.install "rootly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rootlyhq/cli/releases/download/v1.2.1/rootly_1.2.1_darwin_arm64.tar.gz"
      sha256 "6734ec1be1c7c8254ac2f67cd2e133d8cfc6ccda3b1734ec1e6a82907a0c37bd"

      def install
        bin.install "rootly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/cli/releases/download/v1.2.1/rootly_1.2.1_linux_arm64.tar.gz"
      sha256 "f87d8b9134925fe8335533007c14522f52539f9c65196bf20a977301170c8eef"

      def install
        bin.install "rootly"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rootlyhq/cli/releases/download/v1.2.1/rootly_1.2.1_linux_amd64.tar.gz"
      sha256 "59b01647a3d5a16ccf6b1c77382204bf0a91ff7d44cc1b120db17e99462120dd"

      def install
        bin.install "rootly"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/cli/releases/download/v1.2.1/rootly_1.2.1_linux_armv6.tar.gz"
      sha256 "22a35be6efb013355486ce13f549d53b0829785142fd12e294849c2d4d2632da"

      def install
        bin.install "rootly"
      end
    end
  end
end
