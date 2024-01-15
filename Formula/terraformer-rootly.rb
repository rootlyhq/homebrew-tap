class TerraformerRootly < Formula
  desc "Generate Terraform configuration from Rootly"
  homepage "https://rootly.com"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v1.0.2/terraformer-rootly-darwin-arm64"
      sha256 "de5793e43e8fc311c05b7edc14668d967f259d3f78e44c2a778ba58563e6e31f"

      def install
        bin.install "terraformer-rootly-darwin-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v1.0.2/terraformer-rootly-darwin-amd64"
      sha256 "cea878263e8752521f855177a01c8c6651ddfe14093394f386b0391912a0dd44"

      def install
        bin.install "terraformer-rootly-darwin-amd64" => "terraformer-rootly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v1.0.2/terraformer-rootly-linux-arm64"
      sha256 "5668f1e50a564c385bb6b62c697826bd4b8a379f04fc2452626c2d3a5c8544dc"

      def install
        bin.install "terraformer-rootly-linux-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v1.0.2/terraformer-rootly-linux-amd64"
      sha256 "f7060b45fc236af27fd063631b4b5b19adf6d18a14e0039bade56769e25e2295"

      def install
        bin.install "terraformer-rootly-linux-amd64" => "terraformer-rootly"
      end
    end
  end
end
