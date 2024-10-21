class TerraformerRootly < Formula
  desc "Generate Terraform configuration from Rootly"
  homepage "https://rootly.com"
  version "2.8.2"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.8.2/terraformer-rootly-darwin-arm64"
      sha256 "1dea90e3b7b161b3b3abf2d7aee65480f65b0dbecfe303dc2b099c012a823496"

      def install
        bin.install "terraformer-rootly-darwin-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.8.2/terraformer-rootly-darwin-amd64"
      sha256 "2dd1572f07fc1f214645096e1fcbdb8284a5ef4f79c1a77e5132dcfc0ad89861"

      def install
        bin.install "terraformer-rootly-darwin-amd64" => "terraformer-rootly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.8.2/terraformer-rootly-linux-arm64"
      sha256 "68452de22fc33d3d1b638c06787b7afa5706102b27965e5575a14bc77faeaf09"

      def install
        bin.install "terraformer-rootly-linux-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.8.2/terraformer-rootly-linux-amd64"
      sha256 "ecdb6171ceaa2b57e880b1ebb00abf82d810285efb00cdbf3ad208d23f2552fe"

      def install
        bin.install "terraformer-rootly-linux-amd64" => "terraformer-rootly"
      end
    end
  end
end
