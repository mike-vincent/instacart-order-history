class InstacartScraper < Formula
  desc "Export your Instacart order history"
  homepage "https://mike-vincent.github.io/instacart-scraper/"
  url "https://raw.githubusercontent.com/mike-vincent/instacart-scraper/master/instacart-scraper"
  version "1.0.0"
  sha256 :no_check
  license "MIT"

  resource "manpage" do
    url "https://raw.githubusercontent.com/mike-vincent/instacart-scraper/master/man/man1/instacart-scraper.1"
    sha256 :no_check
  end

  def install
    bin.install "instacart-scraper"
    resource("manpage").stage do
      man1.install "instacart-scraper.1"
    end
  end

  test do
    assert_match "instacart-session-id", shell_output("#{bin}/instacart-scraper --help")
  end
end
