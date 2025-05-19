# typed: false
# frozen_string_literal: true

class Zasper < Formula
  desc "Zasper is a High Performance IDE for Jupyter Notebooks"
  homepage "https://zasper.io"
  version "0.1.0-alpha"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/zasper-io/zasper/releases/download/v0.1.0-alpha/zasper-webapp-darwin-amd64.tar.gz"
      sha256 "9f0c91592115f9d069337ba27e99507981c767eddc129b733f6c51d5d4cf9a34"

      def install
        bin.install "zasper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/zasper-io/zasper/releases/download/v0.1.0-alpha/zasper-webapp-darwin-arm64.tar.gz"
      sha256 "d6ab8b02c9bba20dfb00cb1a69729f135d0ed3376a1100435d22b3d2ac289aa8"

      def install
        bin.install "zasper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/zasper-io/zasper/releases/download/v0.1.0-alpha/zasper-webapp-linux-amd64.tar.gz"
        sha256 "213d7d2ad41b0744efdaafafcd2f432fd527ccaff902e41302b86db6698aa6bd"

        def install
          bin.install "zasper"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/zasper-io/zasper/releases/download/v0.1.0-alpha/zasper-webapp-linux-arm64.tar.gz"
        sha256 "d2157aee770b8536dbdfc88d367cebee9b8f5fb7b4648165e61eae3556ea09f0"

        def install
          bin.install "zasper"
        end
      end
    end
  end
end
