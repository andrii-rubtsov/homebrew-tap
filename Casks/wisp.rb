cask "wisp" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/andrii-rubtsov/Wisp/releases/download/v#{version}/Wisp.dmg"
  name "Wisp"
  desc "Wisp — real-time audio transcription app powered by Whisper"
  homepage "https://github.com/andrii-rubtsov/Wisp"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "OpenSuperWhisper.app"

  zap trash: [
    "~/Library/Application Scripts/ru.starmel.OpenSuperWhisper",
    "~/Library/Application Support/ru.starmel.OpenSuperWhisper",
  ]
end
