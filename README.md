# instacart-order-history-fetch

instacart-order-history-fetch is a command-line tool for downloading your Instacart order history.

## Install

```bash
brew tap mike-vincent/instacart-order-history-fetch
brew install instacart-order-history-fetch
```

## Get your session cookie

1. Log into instacart.com
2. DevTools (Cmd+Option+I) → Application → Cookies
3. Copy value of `_instacart_session_id`

## Usage

```bash
instacart-order-history-fetch --instacart-session-id "YOUR_SESSION_ID"
instacart-order-history-fetch --instacart-session-id "YOUR_SESSION_ID" --months 6 -f csv -o orders.csv
```

## Options

```
--instacart-session-id, --instacart-session-id     Your _instacart_session_id cookie (required)
--months N       Last N months
--days N         Last N days
--since DATE     Since YYYY-MM-DD
-f, --format     csv, json, markdown, tsv, or yaml
-o, --output     Output file
-q, --quiet      Quiet mode
-h, --help       Show help
```

## Output

JSON, CSV, or text with order dates, totals, retailers, and full item details.

## Author

[Mike Vincent](https://www.mikevincent.dev), Los Angeles

## Disclaimer

Not affiliated with Instacart. Your receipts are your data.

## License

MIT
