# instacart-order-history

instacart-order-history is a command-line tool for exporting your Instacart order history.

## Install

```bash
brew tap mike-vincent/instacart-order-history
brew install instacart-order-history
```

## Get your session cookie

1. Log into instacart.com
2. DevTools (Cmd+Option+I) → Application → Cookies
3. Copy value of `_instacart_session_id`

## Usage

```bash
instacart-order-history --isid "YOUR_SESSION_ID"
instacart-order-history --isid "YOUR_SESSION_ID" --months 6 -f csv -o orders.csv
```

## Options

```
--isid, --instacart-session-id     Your _instacart_session_id cookie (required)
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

## License

MIT
