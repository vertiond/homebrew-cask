cask "electrum-vtc" do
  version "4.2.1"
  sha256 "f51334ebcda9deebaa0cbc3579c231897120632a36e32b54b949712f4ac1872e"

  url "https://github.com/vertcoin-project/electrum/releases/download/v#{version}/electrum-vtc-v#{version}.dmg"
  name "Electrum-VTC"
  desc "Vertcoin thin client"
  homepage "https://github.com/"

  livecheck do
    url "https://github.com/vertcoin-project/electrum/"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Electrum-VTC.app"
end
