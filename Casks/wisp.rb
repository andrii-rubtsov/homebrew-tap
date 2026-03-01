cask "wisp" do
  version "1.0.8"
  sha256 "d77d978555f1149735119ad863a2cb2010ebd9d2b08cff433ea3def1c202dd8d"

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
