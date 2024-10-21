class TerraformerRootly < Formula
  desc "Generate Terraform configuration from Rootly"
  homepage "https://rootly.com"
  version "2.8.1"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.8.1/terraformer-rootly-darwin-arm64"
      sha256 "cebf26cf69a8bbc8dfd2e248ca839f1b76825b9b7460caea28131e07d3b14466"

      def install
        bin.install "terraformer-rootly-darwin-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.8.1/terraformer-rootly-darwin-amd64"
      sha256 "0eede4a260717716f879eddaa150d2eb2142ed1abf8546c2946f2615503e8479"

      def install
        bin.install "terraformer-rootly-darwin-amd64" => "terraformer-rootly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.8.1/terraformer-rootly-linux-arm64"
      sha256 "8207fac47152ea59262019120a0e80a897ace6a6fcfc5c42ce527fb8b084e7dc"

      def install
        bin.install "terraformer-rootly-linux-arm64" => "terraformer-rootly"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rootlyhq/terraformer/releases/download/v2.8.1/terraformer-rootly-linux-amd64"
      sha256 "253aad2e9b8f5583f6188b130717afd87ff593d2bf4924f62d0e5f0a8aed6999"

      def install
        bin.install "terraformer-rootly-linux-amd64" => "terraformer-rootly"
      end
    end
  end
end
