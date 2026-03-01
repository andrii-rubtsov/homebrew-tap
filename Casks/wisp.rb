cask "wisp" do
  version "1.0.7"
  sha256 "591aa7e4c328ab97340c97cc7e0dca8645fbb5e5f534607f359e30cc2da292c7"

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
