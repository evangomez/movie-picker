# Movie Picker 🎬🦧

A real-time family movie picker with a spinning wheel. Everyone on the same WiFi network can open the page, add movies, and watch the wheel spin together — the result syncs live across all devices.

Built by Evan. Uses cloud Supabase for the database, served locally from Evan's Mac.

---

## How It Works

- Type a movie name and click **Add** — it goes into a Supabase cloud database
- Hit **SPIN WHEEL** — the wheel spins and picks a winner
- The device that spins shows the correct visual result; other devices see the winner text
- Same movie added twice = bigger slice on the wheel

---

## Requirements

- Python 3 (built into macOS)
- A [Supabase](https://supabase.com) project (cloud) with:
  - A `movie_pool` table with a `title` column
  - A `spin_status` table with columns: `id`, `is_spinning` (bool), `last_winner` (text)
- The Supabase URL and anon key are already set in `index.html` — update them there if you ever switch projects

---

## Auto-Start on Login (Recommended)

The server can start automatically every time your Mac logs in so you never need to open Terminal.

**Set it up once:**
```bash
launchctl load ~/Library/LaunchAgents/com.evan.moviepicker.plist
```

After that, the server runs in the background automatically every time your Mac starts.

**Stop the server:**
```bash
launchctl unload ~/Library/LaunchAgents/com.evan.moviepicker.plist
```

**Start it again after stopping:**
```bash
launchctl load ~/Library/LaunchAgents/com.evan.moviepicker.plist
```

---

## Other Devices — How to Open the App

Any device on the same WiFi network can open the app in a browser — no install needed.

**Preferred (hostname — doesn't change):**
```
http://Evans-MacBook-Air.local:8080/
```

**Backup (IP address):**
```
http://192.168.68.68:8080/
```

To find your current IP if it ever changes:
```bash
ipconfig getifaddr en0
```

---

## Manual Start (if not using auto-start)

From anywhere in Terminal:
```bash
python3 -m http.server 8080 --directory ~/movie-picker
```

Or navigate into the folder first:
```bash
cd ~/movie-picker
python3 -m http.server 8080
```

Then open `http://localhost:8080/` in your browser.

---

## Stop the Server (manual mode)

Press `Ctrl + C` in the Terminal window where the server is running.
