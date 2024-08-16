# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hckctl < Formula
  desc "The declarative HaCKing Tool"
  homepage "https://github.com/hckops/hckctl"
  version "0.14.0"

  depends_on "docker" => :optional
  depends_on "kubectl" => :optional

  on_macos do
    on_intel do
      url "https://github.com/hckops/hckctl/releases/download/v0.14.0/hckctl-0.14.0-darwin-x86_64.tar.gz"
      sha256 "e6c810ee35925af18faee428f17ccb615d2077ba5cfc4ead19c758f30dad13a9"

      def install
        bin.install "hckctl"
      end
    end
    on_arm do
      url "https://github.com/hckops/hckctl/releases/download/v0.14.0/hckctl-0.14.0-darwin-arm64.tar.gz"
      sha256 "7836377bb81e7230787347180532d9994b4fe8fcc3e8dabfa33ab1ccde4ec65c"

      def install
        bin.install "hckctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hckops/hckctl/releases/download/v0.14.0/hckctl-0.14.0-linux-x86_64.tar.gz"
        sha256 "7c7f0260a47b0ac45ff508085cc7dc939dcfa7d34afb30b12260c98eb1c19c11"

        def install
          bin.install "hckctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hckops/hckctl/releases/download/v0.14.0/hckctl-0.14.0-linux-arm64.tar.gz"
        sha256 "b0de8fa7d7c5531288beaae6b5f28cbb7505ff22ad058605b74e644ff4d66418"

        def install
          bin.install "hckctl"
        end
      end
    end
  end

  test do
    hckctl version
  end
end
