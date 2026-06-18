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

  # Eyeline is open-source but not notarized (no paid Apple Developer ID yet), so macOS
  # quarantines the download and Gatekeeper would block the first launch. Clear the flag
  # here so `brew install` "just works" — the equivalent of the old `--no-quarantine`.
  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-dr", "com.apple.quarantine", "#{appdir}/Eyeline.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Preferences/com.eyeline.Eyeline.plist",
    "~/Library/Saved Application State/com.eyeline.Eyeline.savedState",
  ]

  caveats <<~EOS
    Eyeline is open-source but not notarized by Apple, so this cask cleared the macOS
    quarantine flag so it can open normally. The app is 100% local and the source is at
    #{homepage}
  EOS
end
