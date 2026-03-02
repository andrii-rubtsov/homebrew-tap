cask "wisp" do
  version "1.0.9"
  sha256 "699ad7d1aee208593d184a8d57a2b9ef5832598d2c98e3950d9f670d1f14f06c"

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
