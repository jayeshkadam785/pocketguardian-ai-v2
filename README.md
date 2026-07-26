# 🛡️ PocketGuardian AI

A one-tap emergency alert web app built for **Innovate 4 Impact: AI SDG Global Hackathon 2026** (IEEE WIE Affinity Group, Bharati Vidyapeeth College of Engineering, Pune).

**Theme:** Women's Safety & Empowerment

🔗 **Live Demo:** [https://women-safety-sos-gamma.vercel.app/](https://women-safety-sos-gamma.vercel.app/)

## 🎯 Problem Statement
Women in unsafe situations often don't have time to call for help or explain their location. This app provides an instant, one-tap way to alert trusted contacts with live location, without needing to type or talk.

## ✨ Features
- **SOS Panic Button** — one tap sends live location to emergency contacts via SMS
- **Emergency Contacts Manager** — add/remove trusted contacts, stored securely in Supabase
- **Fake Incoming Call** — helps users exit uncomfortable situations discreetly
- **Nearby Police Stations** — quick-dial list of local police stations and women's helpline
- **Multi-Language Support** — English, Hindi, and Marathi
- **Alert Logging** — every SOS trigger is logged with location and timestamp for audit trail

## 🛠️ Tech Stack
- **Frontend:** HTML, CSS, JavaScript (single-page, mobile-first)
- **Database:** Supabase (PostgreSQL) — contacts and SOS logs
- **Alerts:** Native SMS integration (no third-party API cost)
- **Location:** Browser Geolocation API
- **Deployment:** Vercel

## 🚀 How It Works
1. User taps the SOS button
2. App captures live GPS location
3. Location is saved to Supabase (`sos_logs` table) for record-keeping
4. Emergency contacts are fetched from Supabase (`contacts` table)
5. Native SMS app opens with a pre-filled message containing a Google Maps link

## 📦 Setup
1. Create a [Supabase](https://supabase.com) project and run the SQL schema (see project docs)
2. Add your Supabase Project URL and anon key in `index.html`
3. Deploy to [Vercel](https://vercel.com) — import this repo, framework preset: **Other**

## 🔮 Future Scope
- Auto audio/video recording during SOS trigger
- AI-based unsafe area heatmap
- Push notifications instead of SMS
- Wearable device (smartwatch) integration

## 👤 Author
Jayesh Kadam — B.Tech AI & Data Science Engineering, KBPCOES (DBATU)

**Team:** Tech Titans

---
*Built for IEEE WIE "Innovate 4 Impact" Hackathon 2026 — "Innovate Today for Tomorrow's Impact"*
