# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rootly < Formula
  desc "Command line tool for rootly.io"
  homepage "https://rootly.io"
  version "1.0.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rootly-io/cli/releases/download/v1.0.0/rootly_1.0.0_darwin_amd64.tar.gz"
    sha256 "d1e9f9340c2b917633aa4a2822ae7f98561df41601689b416bdfcf74523df5ab"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rootly-io/cli/releases/download/v1.0.0/rootly_1.0.0_darwin_arm64.tar.gz"
    sha256 "fd1722e03de28475d4060d30e32df146e2752ac304a2294d3c8701722810d179"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rootly-io/cli/releases/download/v1.0.0/rootly_1.0.0_linux_amd64.tar.gz"
    sha256 "f4944d07df0b82a0fa66b6a9267cd25e4fa9fd2027bec759a63b9e6819d7931c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/rootly-io/cli/releases/download/v1.0.0/rootly_1.0.0_linux_armv6.tar.gz"
    sha256 "85c433144a846984c0de2284d94d14dc456bd7886fb8113a60e661dec47f6a83"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/rootly-io/cli/releases/download/v1.0.0/rootly_1.0.0_linux_arm64.tar.gz"
    sha256 "a97ffe53d78a7dbd5b859c0994ad9a66b181b23a590a2adc999511919efac50a"
  end

  def install
    bin.install "rootly"
  end
end
