class TerraformerRootly < Formula
  desc "Generate Terraform configuration from Rootly"
  homepage "https://rootly.com"
  version "2.8.0"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.8.0/terraformer-rootly-darwin-arm64"
      sha256 "1e20128ec1bf7aaf2be9310c76c91396a7167f6d6a4393cc6b4b605e0bc4f9fe"

      def install
        bin.install "terraformer-rootly-darwin-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.8.0/terraformer-rootly-darwin-amd64"
      sha256 "53598559e2140eb002be89ebdf738634296c3d553926e65950c51765ccae613f"

      def install
        bin.install "terraformer-rootly-darwin-amd64" => "terraformer-rootly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.8.0/terraformer-rootly-linux-arm64"
      sha256 "b90f39563b71d3fd08ce58f4b259acbc0d09cf1634e5c47b21ce135e3c6ca352"

      def install
        bin.install "terraformer-rootly-linux-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.7.1/terraformer-rootly-linux-amd64"
      sha256 "cd51da18775febe38468a36ec73fd0c84c9fdbe324d8db2ed769feaf18540316"

      def install
        bin.install "terraformer-rootly-linux-amd64" => "terraformer-rootly"
      end
    end
  end
end
