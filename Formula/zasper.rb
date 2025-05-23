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
      sha256 "6653b382d661bbc0abb753491f1ccaf8b0430d764d59d3ba278d45f5cae00e8c"

      def install
        bin.install "zasper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/zasper-io/zasper/releases/download/v0.1.0-alpha/zasper-webapp-darwin-arm64.tar.gz"
      sha256 "4664c106c8ef4b17e9c3dcbf4d838998403d5a3f3e8730007198b8f082ca26af"

      def install
        bin.install "zasper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/zasper-io/zasper/releases/download/v0.1.0-alpha/zasper-webapp-linux-amd64.tar.gz"
        sha256 "4ac402d058176a002b8e78217206a38557ba14b3c12b78c105763a9f12c0e18b"

        def install
          bin.install "zasper"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/zasper-io/zasper/releases/download/v0.1.0-alpha/zasper-webapp-linux-arm64.tar.gz"
        sha256 "fd67969d1e4881fe8805ec3168befdcac2f623dcb558a245c915a18871591697"

        def install
          bin.install "zasper"
        end
      end
    end
  end
end
