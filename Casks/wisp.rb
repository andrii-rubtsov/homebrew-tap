cask "wisp" do
  version "1.0.9"
  sha256 "c89c23cae9c13d661735a6a284379778d33b07c1417381dd24fc5554af570006"

  url "https://github.com/andrii-rubtsov/Wisp/releases/download/v#{version}/Wisp.dmg"
  name "Wisp"
  desc "Wisp — real-time audio transcription app powered by Whisper"
  homepage "https://github.com/andrii-rubtsov/Wisp"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Wisp.app"

  zap trash: [
    "~/Library/Application Scripts/com.wisp.Wisp",
    "~/Library/Application Support/com.wisp.Wisp",
  ]
end
