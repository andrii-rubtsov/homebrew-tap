cask "opensuperwhisper" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/andrii-rubtsov/OpenSuperWhisper/releases/download/v#{version}/OpenSuperWhisper.dmg"
  name "OpenSuperWhisper"
  desc "Whisper dictation/transcription app"
  homepage "https://github.com/andrii-rubtsov/OpenSuperWhisper"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "OpenSuperWhisper.app"

  zap trash: [
    "~/Library/Application Scripts/ru.starmel.OpenSuperWhisper",
    "~/Library/Application Support/ru.starmel.OpenSuperWhisper",
  ]
end
