class TerraformerRootly < Formula
  desc "Generate Terraform configuration from Rootly"
  homepage "https://rootly.com"
  version "2.7.1"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.7.1/terraformer-rootly-darwin-arm64"
      sha256 "f9aaad99ad6b472557ea76bd9a36d49ff1ed96984ac74173a91cd9611e55ce8b"

      def install
        bin.install "terraformer-rootly-darwin-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.7.1/terraformer-rootly-darwin-amd64"
      sha256 "bad5424e6795dc60786abf1cb1f4c31b5f2f56965a7fe8355763d345054600e2"

      def install
        bin.install "terraformer-rootly-darwin-amd64" => "terraformer-rootly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.7.1/terraformer-rootly-linux-arm64"
      sha256 "07765df16d8f043bd8eafaf47b7884154ceeb97387c74d345021e06506a29fa6"

      def install
        bin.install "terraformer-rootly-linux-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.7.1/terraformer-rootly-linux-amd64"
      sha256 "dcaee05e46a858fb2cf65cde689d55cebcb0f87abbcebdf7cdd1f40961e054fe"

      def install
        bin.install "terraformer-rootly-linux-amd64" => "terraformer-rootly"
      end
    end
  end
end
