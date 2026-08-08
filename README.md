# 🛡️ PocketGuardian AI Pro

A tactical, AI-assisted safety PWA built for **Innovate 4 Impact: AI SDG Global Hackathon 2026** (IEEE WIE Affinity Group, Bharati Vidyapeeth College of Engineering, Pune).

**Theme:** Women's Safety & Empowerment
**Problem Statement:** PS-B06 — Real-Time Public-Transport Safety System for Women

🔗 **Live Demo:** <https://pocketguardian-ai-v2.vercel.app/>
📄 **Case Study:** [Women_Safety_Case_Studies-1.pdf](./Women_Safety_Case_Studies-1.pdf)
💬 **Feedback Form:** [Share your feedback](https://docs.google.com/forms/d/e/1FAIpQLScmq45L56k-Y52XBObnch3ymWExjNiYwMUUFNHz_ZKrlVH5Og/viewform)

---

## 🎯 Problem Statement

Women travelling by bus, shared vehicle, metro, or train may face harassment, stalking, unauthorized route changes, or isolation at unsafe stops — and openly using a phone to call for help can itself increase risk. PocketGuardian AI detects unusual travel conditions automatically and offers discreet, rapid assistance without disrupting a normal journey.

---

## ✨ Features

### Core SOS
- **One-Tap SOS** with a 3-second confirm countdown — captures live location and alerts trusted contacts via SMS instantly
- **Discreet Silent SOS** — 5 quick taps on a hidden zone trigger an alert with no visible countdown or confirmation screen
- **Offline-First Fallback** — cached contacts mean SOS still works over SMS with no internet connection
- **"I'm Safe" Check-in** — one tap to stand down an active alert or route

### Live Route Monitoring (AI)
- **Automatic Deviation Detection** — flags when the live GPS path moves off the expected route
- **Prolonged-Stop Detection** — flags unexpected stops mid-journey without needing a manual check-in
- **Live Dynamic Route Suggestions** — auto-computes a safer walking route to the nearest verified police station/hospital (OSRM + OpenStreetMap Overpass API), re-suggesting when conditions change
- **Crowd / Stop-Risk Indicator** — a live Low/Medium/High signal based on time of day and stop duration

### AI Sensors & Voice
- **Voice SOS** — trigger an alert by saying "help" (on-device browser speech recognition)
- **AI Anomaly Engine** — heuristic motion-pattern detector for fall/struggle-like movement
- **Shake-to-SOS** — a repeated shake gesture triggers an alert
- **Smartwatch Pairing** — Web Bluetooth pairing for wearable-triggered SOS

### Stealth & Evidence
- **Fake Incoming Call** — helps exit uncomfortable situations discreetly
- **WhatsApp Ghost Chat** — sends a live-location alert via WhatsApp
- **Live Location Sharing** — shareable link + QR code, updates in real time
- **Silent Video Evidence** — records video/audio evidence during an active alert

### Authority & Incident Tracking
- **Simulated ICCC Authority Channel** — serious triggers relay to an authority alert log, not just personal contacts
- **Incident Status Dashboard** — every alert is tracked Open → Resolved, not a one-time fire-and-forget message
- **Safety Score** — a live score based on time of day, movement, and connectivity
- **Tactical Routing** — nearest police station / hospital via live geolocation
- **Nearby Police Directory** — quick-dial list of local stations and the women's helpline

### Access & Reach
- **9-Language Support** — English, Hindi, Marathi, Gujarati, Urdu, Bengali, Tamil, Telugu, Kannada
- **Zero-Install PWA** — installable to the home screen, no app-store review delay
- **Emergency Contacts Manager** — add/remove trusted contacts, stored securely in Supabase with Row-Level Security

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Frontend | HTML, CSS, JavaScript — lightweight, cross-platform, zero native dependencies |
| Backend / Database | Supabase (PostgreSQL) with Row-Level Security for per-user data isolation |
| Authentication | Supabase email/password auth with secure sessions and password recovery |
| Location | Browser Geolocation API with graceful permission/signal/timeout handling |
| Live Routing | OSRM (Open Source Routing Machine) |
| Nearby Safe Points | OpenStreetMap Overpass API |
| Real-time Tracking | Live location polling via Supabase, QR-code-based sharing |
| Offline Layer | Local-storage contact caching with automatic SMS fallback |
| Hosting | Vercel — CDN-backed, globally distributed, zero cost |

---

## 🚀 How It Works

1. User taps SOS (or triggers it silently, by voice, shake, or wearable)
2. App captures live GPS location
3. The alert is logged to Supabase (`sos_logs`) and, for serious triggers, relayed to a simulated authority channel (`authority_alerts`)
4. Trusted contacts are fetched from Supabase (`contacts`) and notified via SMS/WhatsApp with a live-location link
5. If Route Monitoring is active, the app continuously checks the live path against the expected route and escalates automatically on deviation or an unexplained stop

---

## 📦 Setup

1. Create a [Supabase](https://supabase.com) project and run `v2_database_setup.sql` to create the schema
2. Add your Supabase Project URL and anon/publishable key in `index.html`
3. Deploy to [Vercel](https://vercel.com) — import this repo, framework preset: **Other**

---

## 🔮 Future Scope

- Trained on-device ML model for the Anomaly Engine (currently a documented motion-threshold heuristic)
- Self-hosted OSRM/Overpass instance for production-scale reliability
- Push notifications as an alternative to SMS
- Deeper ICCC integration for real municipal authority dashboards

---

## 👤 Author

Jayesh Kadam — B.Tech AI & Data Science Engineering, KBPCOES (DBATU)
**Team:** Tech Titans

---

*Built for IEEE WIE "Innovate 4 Impact" Hackathon 2026 — "Innovate Today for Tomorrow's Impact"*
