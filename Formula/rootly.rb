# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rootly < Formula
  desc "Command line tool for rootly.com"
  homepage "https://rootly.com"
  version "1.2.4"

  on_macos do
    on_intel do
      url "https://github.com/rootlyhq/cli/releases/download/v1.2.4/rootly_1.2.4_darwin_amd64.tar.gz"
      sha256 "d2d4c509ec7de6433dc9f4896babefbc9817bf22e4c5c86f5fc937a024abd689"

      def install
        bin.install "rootly"
      end
    end
    on_arm do
      url "https://github.com/rootlyhq/cli/releases/download/v1.2.4/rootly_1.2.4_darwin_arm64.tar.gz"
      sha256 "6daddf6899a9f24fe82ec8f76507b7e38c7cad8c441f0fe094701cc92b3a34ec"

      def install
        bin.install "rootly"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rootlyhq/cli/releases/download/v1.2.4/rootly_1.2.4_linux_amd64.tar.gz"
        sha256 "bd76abc58389bc1433873818379b65e3e3eea1ada55816987a26414b7cf2d27c"

        def install
          bin.install "rootly"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/rootlyhq/cli/releases/download/v1.2.4/rootly_1.2.4_linux_armv6.tar.gz"
        sha256 "20bc7964941a6bcd3d445af99b5f540ddcebb6f196427d4c10f39061d7d34a9b"

        def install
          bin.install "rootly"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rootlyhq/cli/releases/download/v1.2.4/rootly_1.2.4_linux_arm64.tar.gz"
        sha256 "77af08004236fdd1270368ee5763fd6b75121403945ea6b5f5ae1c0b33e91850"

        def install
          bin.install "rootly"
        end
      end
    end
  end
end
