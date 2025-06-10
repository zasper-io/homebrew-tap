# typed: false
# frozen_string_literal: true

class Zasper < Formula
  desc "Zasper is a High Performance IDE for Jupyter Notebooks"
  homepage "https://zasper.io"
  version "0.2.0-beta"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/zasper-io/zasper/releases/download/v#{version}/zasper-webapp-darwin-amd64.tar.gz"
      sha256 "7235bc44f4cea5229324b92fb2c9f7019a3646cfc5c31c5c77b5e0a92bd6dd9a"

      def install
        bin.install "zasper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/zasper-io/zasper/releases/download/v#{version}/zasper-webapp-darwin-arm64.tar.gz"
      sha256 "0c5341db703e84106f4798de028104ec932ee0932c0f2cd3527d7a80f50e92f6"

      def install
        bin.install "zasper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/zasper-io/zasper/releases/download/v#{version}/zasper-webapp-linux-amd64.tar.gz"
        sha256 "eec5bfb8667d9ec3a28581b2b38fe3c99256c9531da84fbc12ddbca27e47c481"

        def install
          bin.install "zasper"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/zasper-io/zasper/releases/download/v#{version}/zasper-webapp-linux-arm64.tar.gz"
        sha256 "4710be7d32a7d29e3db0d3dcec0a0207a501366adc68bd3445c96ce5e6b630d8"

        def install
          bin.install "zasper"
        end
      end
    end
  end
end
