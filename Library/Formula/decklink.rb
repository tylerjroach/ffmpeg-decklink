class Decklink < Formula
  homepage "https://github.com/tylerjroach/ffmpeg-decklink"
  url "https://github.com/tylerjroach/ffmpeg-decklink/raw/master/decklink-api-10.8.5.tar.gz"
  sha256 "5676d628e3b6df01a89f51087febc4287f1d5efd463d4c4ec29dfc60de03b263"

  def install
    include.install Dir["include/*"]
  end
end
