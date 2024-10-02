# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sonr < Formula
  desc "Sonr is a decentralized, permissionless, and censorship-resistant identity network."
  homepage "https://sonr.io/"
  version "0.5.2"

  depends_on "ipfs"

  on_macos do
    on_intel do
      url "https://github.com/onsonr/sonr/releases/download/v0.5.2/sonr_0.5.2_darwin_amd64.tar.gz"
      sha256 "60e10d369f932bbca27952507403e53e6e86a272a4e6d0ee39c967c9e77e3ec2"

      def install
        bin.install "sonrd"
      end
    end
    on_arm do
      url "https://github.com/onsonr/sonr/releases/download/v0.5.2/sonr_0.5.2_darwin_arm64.tar.gz"
      sha256 "80530e3f835125edeb03c7e7480e16d060a664c40acb8eedfed53e33292d4b0c"

      def install
        bin.install "sonrd"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.5.2/sonr_0.5.2_linux_amd64.tar.gz"
        sha256 "bafa13bda9437b4bf0a5e623014be8f30083713fefd22d04a5cf2e3881eb7a65"

        def install
          bin.install "sonrd"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.5.2/sonr_0.5.2_linux_arm64.tar.gz"
        sha256 "796f0d2fea6a703c675a0b881a5c6373747fcdc36c379058807435d74bd8ae4c"

        def install
          bin.install "sonrd"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Run a local sonr node and access it with the hway proxy
    EOS
  end
end
