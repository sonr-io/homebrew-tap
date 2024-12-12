# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hway < Formula
  desc "Sonr is a decentralized, permissionless, and censorship-resistant identity network."
  homepage "https://onsonr.dev"
  version "0.5.25"

  depends_on "ipfs"

  on_macos do
    on_intel do
      url "https://github.com/onsonr/sonr/releases/download/v0.5.25/hway_0.5.25_Darwin_x86_64.tar.gz"
      sha256 "045ffb1c4756f484e5942f43aa694b4faadc2de65e969133f3eae48332c57397"

      def install
        bin.install "hway"
      end
    end
    on_arm do
      url "https://github.com/onsonr/sonr/releases/download/v0.5.25/hway_0.5.25_Darwin_arm64.tar.gz"
      sha256 "0bd78a3ee052b72c7174e7c8ab5afe55aacfd1f98b51ee5305fb9a39802ccc72"

      def install
        bin.install "hway"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.5.25/hway_0.5.25_Linux_x86_64.tar.gz"
        sha256 "c307a1d6f5daf49bd4f7c4bd966322565159f8244707ef8c209e820e044325c9"

        def install
          bin.install "hway"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.5.25/hway_0.5.25_Linux_arm64.tar.gz"
        sha256 "899c662604abee9361f0fa5b7882f0f44e82690a746a883249b41a29d703e785"

        def install
          bin.install "hway"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Run a local hway node and access it with the hway proxy
    EOS
  end
end
