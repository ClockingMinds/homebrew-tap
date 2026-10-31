class Clockingcloud < Formula
  desc "CLI for managing ClockingCloud GPU compute"
  homepage "https://www.clockingcloud.com"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ClockingMinds/homebrew-tap/releases/download/v0.1.2/clockingcloud_0.1.2_darwin_arm64.tar.gz"
      sha256 "c8dbba7f193de8c26d232493e3f8ee94f293f543b32ee8aa104b0c9a78f18ea6"
    end
    on_intel do
      url "https://github.com/ClockingMinds/homebrew-tap/releases/download/v0.1.2/clockingcloud_0.1.2_darwin_amd64.tar.gz"
      sha256 "080947e27d3afa55213f66d79fd79f8d6988af482e7a9472d914725d915636df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ClockingMinds/homebrew-tap/releases/download/v0.1.2/clockingcloud_0.1.2_linux_arm64.tar.gz"
      sha256 "e4eba44bfb960a1ef1d3cff139d5ac226a6e515f109cdd9ceef55c2417914d80"
    end
    on_intel do
      url "https://github.com/ClockingMinds/homebrew-tap/releases/download/v0.1.2/clockingcloud_0.1.2_linux_amd64.tar.gz"
      sha256 "44077b91a2ecfe6795eff84f1ac01136580591fcc93a83511ded0520b84099af"
    end
  end

  def install
    bin.install "clockingcloud"
    man1.install "man/clockingcloud.1"
    generate_completions_from_executable(bin/"clockingcloud", "completion", shells: [:bash, :zsh, :fish])
  end

  test do
    ENV["HOME"] = testpath.to_s
    ENV["XDG_CONFIG_HOME"] = (testpath/"config").to_s
    ENV["XDG_CACHE_HOME"] = (testpath/"cache").to_s
    assert_match version.to_s, shell_output("#{bin}/clockingcloud version")
    assert_path_exists man1/"clockingcloud.1"
    assert_path_exists bash_completion/"clockingcloud"
    assert_path_exists zsh_completion/"_clockingcloud"
    assert_path_exists fish_completion/"clockingcloud.fish"
  end
end
