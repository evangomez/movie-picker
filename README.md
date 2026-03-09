# Movie Picker 🎬🦧

A real-time family movie picker with a spinning wheel. Anyone can open the page, add movies, and watch the wheel spin together — the result syncs live across all devices via Supabase.

**Live at:** https://evangomez.github.io/movie-picker/

Built by Evan. Uses cloud Supabase for the database, hosted on GitHub Pages.

---

## How It Works

- Open the link on any device — no install needed
- Type a movie name and click **Add** — it goes into a Supabase cloud database
- Hit **SPIN WHEEL** — the wheel spins and picks a winner
- Everyone connected sees the winner update in real time
- Same movie added twice = bigger slice on the wheel

---

## Database Setup (if starting from scratch)

The app needs a [Supabase](https://supabase.com) project with two tables:

**`movie_pool`**
| column | type |
|--------|------|
| id | int8 (primary key) |
| title | text |

**`spin_status`**
| column | type |
|--------|------|
| id | int8 (primary key) |
| is_spinning | bool |
| last_winner | text |

The Supabase URL and anon key are set at the top of the `<script>` block in `index.html` — update them there if you ever switch projects.
