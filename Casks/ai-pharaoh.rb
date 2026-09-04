cask "ai-pharaoh" do
  version "0.1.0"
  sha256 "631cc6563453386639558a420592e6a1263d7a429cc2a2f771d6600dadbaf395"

  url "https://github.com/mikrus-pl/ai-pharaoh-releases/releases/download/v#{version}/AI-Pharaoh-#{version}-arm64.zip",
      verified: "github.com/mikrus-pl/ai-pharaoh-releases/"
  name "AI Pharaoh"
  desc "Local activity dashboard for Codex and Claude Code sessions"
  homepage "https://github.com/mikrus-pl/ai-pharaoh-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "AI Pharaoh.app"

  zap trash: [
    "~/Library/Application Support/AIPharaoh",
    "~/Library/Caches/com.michalwasaznik.AIPharaoh",
    "~/Library/Preferences/com.michalwasaznik.AIPharaoh.plist",
    "~/Library/Saved Application State/com.michalwasaznik.AIPharaoh.savedState",
  ]

  caveats <<~EOS
    Before uninstalling AI Pharaoh, remove its Codex and Claude Code connections
    in AI Pharaoh Settings. Homebrew intentionally does not rewrite provider
    configuration files during uninstall.
  EOS
end
