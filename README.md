# Movie Picker 🎬🦧

A real-time family movie picker with a spinning wheel. Everyone on the same WiFi network can open the page, add movies, and watch the wheel spin together — the result syncs live across all devices.

Built by Evan. Runs off my Mac using a local Supabase database.

---

## How It Works

- Type a movie name and click **Add** — it goes into a Supabase database
- Hit **SPIN WHEEL** — the wheel spins and picks a winner
- Everyone connected sees the spin and the winner at the same time (real-time sync via Supabase)
- Same movie added twice = bigger slice on the wheel

---

## Requirements

- Python 3 (built into macOS)
- A local [Supabase](https://supabase.com) instance running on your machine with:
  - A `movie_pool` table with a `title` column
  - A `spin_status` table with columns: `id`, `is_spinning` (bool), `last_winner` (text)
- Update the Supabase URL and key at the top of the `<script>` block in `movie_picker.html` to match your setup

---

## How to Run (from anywhere in Terminal)

**Step 1 — Navigate to the project folder:**
```bash
cd ~/movie-picker
```

**Step 2 — Start the local web server:**
```bash
python3 -m http.server 8080
```

**Step 3 — Open in your browser:**
```
http://localhost:8080/movie_picker.html
```

**Step 4 — Share with other devices on the same WiFi:**

Find your Mac's local IP first:
```bash
ipconfig getifaddr en0
```
Then on any phone or other computer on the same network, open:
```
http://YOUR_MAC_IP:8080/movie_picker.html
```
Example: `http://192.168.68.68:8080/movie_picker.html`

---

## Shortcut — Run without cd-ing first

If you don't want to navigate into the folder, you can serve it directly:
```bash
python3 -m http.server 8080 --directory ~/movie-picker
```
Then open `http://localhost:8080/movie_picker.html` as usual.

---

## Stop the Server

Press `Ctrl + C` in the Terminal window where the server is running.
