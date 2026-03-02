cask "wisp" do
  version "1.0.5"
  sha256 "851dbba266efddb9b888a9bfd5ffa1d4d3683fb65036195950e2628132ebe366"

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
