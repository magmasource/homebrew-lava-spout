# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "alphamelts" do
  on_macos do
    arch arm: "arm64", intel: "x86_64"
  end
  on_linux do
    arch arm: "aarch64", intel: "x86_64"
  end

  # switch from python-like in next release and use depends_on instead.
  os macos: "mcosx_14_0", linux: "ubuntu22_04"

  version "2.3.2-beta.0"
  sha256  arm:          "1ed093e933eb4fb76e4942c888064ee26c7fdfe63e0f2802f9878a76b7b624ae",
          intel:        "b06effceae8898c4b5262e4dce875db560f4f315c8f8c13c15596b8e01de1dc5",
          arm64_linux:  "e80f909702248366fd8161f9a4afddf97eb1790277fa0dd46fe76c166aa53818",
          x86_64_linux: "659e535679b5d8d8b22284a23cdd3099410ac60818090882a77e9d675bd7b67b"

  url "https://github.com/magmasource/alphaMELTS/releases/download/v#{version}/alphamelts-app-2.3.2-#{os}-#{arch}.zip"
  name "alphamelts"
  desc "Text-menu interface to alphaMELTS 2+"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    #    url ""
    #    strategy ""
    skip "NYI"
  end

  on_macos do
    depends_on macos: ">= :catalina"
  end
#  on_linux do
#    depends_on linux: "ubuntu22.04"
#  end

  # target name will change with next release to just "alphamelts"
  # .command will revert to .pl

  on_macos do
    binary  "alphamelts_macos",  target: "alphamelts2"
  end
  on_linux do
    binary "alphamelts_linux", target: "alphamelts2"
  end
  binary  "run-alphamelts.command", target: "run-alphamelts"
  binary  "column-pick.command", target: "column-pick"
  binary  "file-format.command", target: "file-format"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  # zap trash: ""
end
