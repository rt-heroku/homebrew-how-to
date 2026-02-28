cask "how-to" do
  version "0.1.1"
  sha256 "9f5bc81b846a452ef16f39419fdf683bd24de6fdddbe7d8fb8490f18b22d1d59"

  url "https://github.com/rt-heroku/homebrew-how-to/releases/download/v#{version}/FoundationMenuBar-#{version}.zip"
  name "how-to"
  desc "Local AI shell command assistant powered by Apple Foundation Models"
  homepage "https://github.com/rt-heroku/homebrew-how-to"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "FoundationMenuBar.app"

  binary "#{appdir}/FoundationMenuBar.app/Contents/Resources/how", target: "how"

  postflight do
    set_permissions "#{appdir}/FoundationMenuBar.app/Contents/Resources/how", "+x"
  end

  uninstall quit: "com.flowdeck.foundation-menubar"

  zap trash: [
    "~/Library/Application Support/FoundationMenuBar",
    "~/Library/Preferences/com.flowdeck.foundation-menubar.plist",
  ]

  caveats <<~EOS
    how-to requires macOS 26 (Tahoe) or later on Apple Silicon.

    After installation:
      1. Open FoundationMenuBar from Applications (it runs in your menu bar)
      2. Use the `how` command in any terminal:

         how find files containing TODO
         how show disk usage by folder
         how which process is on port 3000

    The AI runs entirely on-device using Apple Foundation Models (3B).
    No data leaves your Mac.
  EOS
end
