# 🚚 Trip Planner (Assessment Project)

This is a **full-stack web application** built with **Django (REST Framework)** for the backend and **React (Vite + TailwindCSS)** for the frontend.  
It was developed as part of an assessment to demonstrate building and deploying a logistics-style application.

---

## ✨ Features
- Input trip details:
  - Current Location
  - Pickup Location
  - Dropoff Location
  - Cycle Hours Used
- Uses **OpenRouteService (ORS)** to:
  - Geocode locations (city / address / landmark)
  - Calculate routes with distance & duration
  - Return geometry for map rendering
- Generates **mock HOS (Hours of Service) logs**
- Interactive map showing the trip route
- Responsive UI with TailwindCSS + DaisyUI

---

## 🌍 Live Demo
- **Backend (Django API)**: https://misty-minerva-assessmenttest-df880ab5.koyeb.app
- **Frontend (React UI)**: https://tset-frontend-7wmy.vercel.app/ 

---

## 🛠️ Tech Stack
- **Backend**: Django, Django REST Framework, Gunicorn, Koyeb hosting
- **Frontend**: React (Vite + TypeScript), TailwindCSS, DaisyUI, Vercel hosting
- **API**: [OpenRouteService](https://openrouteservice.org/) for geocoding and routing
- **Other Tools**: Leaflet for interactive maps

---

