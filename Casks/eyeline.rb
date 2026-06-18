cask "eyeline" do
  version "0.1.0"
  sha256 "7caa2fda0ed589c92ef07ac56f8344f8d9b500cc3b0fbfaee80be3c19080cc49"

  url "https://github.com/Shauryagulati/eyeline/releases/download/v#{version}/Eyeline-v#{version}.zip"
  name "Eyeline"
  desc "Teleprompter that docks under the notch"
  homepage "https://github.com/Shauryagulati/eyeline"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Eyeline.app"

  zap trash: [
    "~/Library/Preferences/com.eyeline.Eyeline.plist",
    "~/Library/Saved Application State/com.eyeline.Eyeline.savedState",
  ]
end
