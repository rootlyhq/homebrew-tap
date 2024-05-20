class TerraformerRootly < Formula
  desc "Generate Terraform configuration from Rootly"
  homepage "https://rootly.com"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.1.0/terraformer-rootly-darwin-arm64"
      sha256 "be43e82e0d8e4fbd3329ce62c2a810b69a2efb4c0c3f43689703ef6fed35aca8"

      def install
        bin.install "terraformer-rootly-darwin-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.1.0/terraformer-rootly-darwin-amd64"
      sha256 "c269cddea01c647f5bd9cccae5653e1326385198c82765410edee5de9aeb3b7e"

      def install
        bin.install "terraformer-rootly-darwin-amd64" => "terraformer-rootly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.1.0/terraformer-rootly-linux-arm64"
      sha256 "8d7c8232e282e4f5e9f614412c2266e4a4c2d4ace22a54e316f934e7d55a0815"

      def install
        bin.install "terraformer-rootly-linux-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.1.0/terraformer-rootly-linux-amd64"
      sha256 "89e83d95f2fa019bbd40e6394c8530f75239f3c783c799ac2b99232a7ec0aa56"

      def install
        bin.install "terraformer-rootly-linux-amd64" => "terraformer-rootly"
      end
    end
  end
end
