class TerraformerRootly < Formula
  desc "Generate Terraform configuration from Rootly"
  homepage "https://rootly.com"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v1.0.1/terraformer-rootly-darwin-arm64"
      sha256 "0c3ddfca75d762f31bc686ea76807a4e7f2b86c537c87840e33056c647f22b67"

      def install
        bin.install "terraformer-rootly-darwin-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v1.0.1/terraformer-rootly-darwin-amd64"
      sha256 "42dba3375ee4329346e3ba4386316b8fc741c5319c367e3f1c166e6e744b8d70"

      def install
        bin.install "terraformer-rootly-darwin-amd64" => "terraformer-rootly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v1.0.1/terraformer-rootly-linux-arm64"
      sha256 "4e025bebf75c7355d7a4fd0bfc9253dc39192d42cb56131f4bcca96b04d643fe"

      def install
        bin.install "terraformer-rootly-linux-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v1.0.1/terraformer-rootly-linux-amd64"
      sha256 "f01139b3c8385fb03217c0b1c10aa591b13b0b5349ced5502843ee31bae95cb5"

      def install
        bin.install "terraformer-rootly-linux-amd64" => "terraformer-rootly"
      end
    end
  end
end
