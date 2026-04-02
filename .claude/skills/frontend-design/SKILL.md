---
name: frontend-design
description: Use when building UI components, designing layouts, or reviewing
  frontend code for design system consistency and accessibility.
---
- Tailwind utility classes only — no custom CSS unless unavoidable
- Every interactive element: hover, focus, active, disabled states
- Loading skeleton (not spinner) for content areas
- Error boundaries around every major component section
- All images: alt text, explicit width + height to prevent CLS
- Prefer server components; "use client" only when truly needed
- Animations: always respect prefers-reduced-motion
- Spacing grid: 4, 8, 12, 16, 24, 32, 48, 64px
- Font scale: 12, 14, 16, 18, 24, 32, 48px
- Radii: sm=4px md=8px lg=12px full=9999px
