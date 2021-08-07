# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rootly < Formula
  desc "Command line tool for rootly.io"
  homepage "https://rootly.io"
  version "1.1.4"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rootlyhq/cli/releases/download/v1.1.4/rootly_1.1.4_darwin_amd64.tar.gz"
      sha256 "47637a050cf581138c5b8c57b09c77b9aed6037aaa47d59271d9d14b11c7a2e4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/rootlyhq/cli/releases/download/v1.1.4/rootly_1.1.4_darwin_arm64.tar.gz"
      sha256 "6c9d323922cad352038746f6093ce5026c7e07588b265d54b99ba65c612f06a8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rootlyhq/cli/releases/download/v1.1.4/rootly_1.1.4_linux_amd64.tar.gz"
      sha256 "1be35efe4c1d8f6a5ff70b7a7aa3b21b5b73ed90fafdb6951f913314502216e7"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/cli/releases/download/v1.1.4/rootly_1.1.4_linux_armv6.tar.gz"
      sha256 "3df62d7bfaddfe9f715940cb90bbef4e665745db73664131b423c0eab96d9441"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/cli/releases/download/v1.1.4/rootly_1.1.4_linux_arm64.tar.gz"
      sha256 "fca1530b069a9411e6bbf3efd663a35024873807e5431c056c8829b5153c4646"
    end
  end

  def install
    bin.install "rootly"
  end
end
