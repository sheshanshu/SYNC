---
name: 'Academic Precision: Security & Visitor Oversight'
colors:
  surface: '#fbf8ff'
  surface-dim: '#dbd9e3'
  surface-bright: '#fbf8ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f4f2fd'
  surface-container: '#efecf7'
  surface-container-high: '#e9e7f1'
  surface-container-highest: '#e3e1ec'
  on-surface: '#1a1b22'
  on-surface-variant: '#454653'
  inverse-surface: '#2f3038'
  inverse-on-surface: '#f1effa'
  outline: '#757685'
  outline-variant: '#c5c5d6'
  surface-tint: '#4052c9'
  primary: '#000e65'
  on-primary: '#ffffff'
  primary-container: '#001c9d'
  on-primary-container: '#8392ff'
  inverse-primary: '#bbc3ff'
  secondary: '#505f76'
  on-secondary: '#ffffff'
  secondary-container: '#d4e3ff'
  on-secondary-container: '#56657c'
  tertiary: '#381200'
  on-tertiary: '#ffffff'
  tertiary-container: '#5a2100'
  on-tertiary-container: '#db855b'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dfe0ff'
  primary-fixed-dim: '#bbc3ff'
  on-primary-fixed: '#000d60'
  on-primary-fixed-variant: '#2437b0'
  secondary-fixed: '#d4e3ff'
  secondary-fixed-dim: '#b8c7e2'
  on-secondary-fixed: '#0c1c30'
  on-secondary-fixed-variant: '#39485e'
  tertiary-fixed: '#ffdbcc'
  tertiary-fixed-dim: '#ffb693'
  on-tertiary-fixed: '#351000'
  on-tertiary-fixed-variant: '#743411'
  background: '#fbf8ff'
  on-background: '#1a1b22'
  surface-variant: '#e3e1ec'
  status-permitted: '#15803d'
  status-denied: '#ba1a1a'
  status-expired: '#92400e'
  access-active: '#2036bd'
  security-high: '#7e3100'
  map-shield: '#0369a1'
typography:
  headline-lg:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
    letterSpacing: -0.01em
  headline-md:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '600'
    lineHeight: 28px
  body-lg:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  body-sm:
    fontFamily: Inter
    fontSize: 13px
    fontWeight: '400'
    lineHeight: 18px
  label-mono:
    fontFamily: JetBrains Mono
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
  data-viz:
    fontFamily: JetBrains Mono
    fontSize: 11px
    fontWeight: '600'
    lineHeight: 14px
    letterSpacing: 0.02em
  headline-lg-mobile:
    fontFamily: Inter
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  gutter: 16px
  margin-dashboard: 24px
  alert-gap: 12px
  node-tight: 8px
  touch-target: 44px
---

## Brand & Style

This design system evolves the "Academic Precision" aesthetic into the high-stakes environment of security and visitor management. The brand personality is **vigilant, authoritative, and seamless**, designed to evoke a sense of absolute control and institutional safety. It targets security personnel and administrative staff who require high-speed data interpretation and zero-room-for-error navigation.

The design style is **Corporate / Modern** with a lean toward **High-Utility Minimalism**. It prioritizes structural integrity and rapid visual scanning. By combining a systematic grid with high-visibility status tokens, the system ensures that security alerts and access permissions are instantly recognizable. The aesthetic is "technical-professional"—it feels like a high-end command center that is both approachable for visitors and powerful for operators.

## Colors

The color strategy utilizes a "Vigilance Palette," where neutral surfaces allow high-visibility status tokens to command attention. The default mode is **light**, ensuring maximum legibility for document verification and badge scanning under various lighting conditions.

- **Access Status:** Employs a strict semantic logic. **Permitted** uses a deep forest green for clear validation. **Denied** utilizes the error red for immediate stoppage. **Expired** uses a cautionary ochre to signal the need for renewal.
- **Security Tiers:** **Access-Active** leverages the primary indigo to show current utility, while **Security-High** uses a deep terracotta for restricted or high-alert zones.
- **Surface Logic:** Uses a range of cool grays (`surface-container` tiers) to differentiate between background navigation and active monitoring workspace.

## Typography

Typography is prioritized for "Glanceability" and "Verification." **Inter** provides a clean, neutral foundation for administrative data, while **JetBrains Mono** is reserved for technical and security-critical identifiers.

- **Verification Coding:** Use `label-mono` for ID numbers, license plates, and gate codes. The fixed-width characters prevent visual jumping during real-time list updates.
- **Density & Hierarchy:** For dense visitor logs, `body-sm` is the primary font. On mobile devices for security guards, headlines scale down via `headline-lg-mobile` to maintain context without crowding the viewport.
- **Emphasis:** Critical alerts should use `data-viz` in uppercase to create a distinct visual texture compared to standard body text.

## Layout & Spacing

The layout follows a **Fixed Grid** for administrative control centers and a **Fluid/Map-Based** model for site-wide surveillance.

- **Surveillance Grid:** Camera feeds and visitor logs are arranged in a strict grid with `node-tight` (8px) spacing to maximize the number of visible units while maintaining clear separation.
- **Visitor Entry View:** A split-screen layout for desktop: the left side (60%) handles the active scan/camera feed, while the right side (40%) functions as the Inspector for visitor credentials.
- **Breakpoints:**
  - **Desktop (1280px+):** Multi-column dashboard with persistent security sidebar.
  - **Tablet (768px-1279px):** Two-pane focus; the visitor log becomes a collapsible side-sheet.
  - **Mobile (Up to 767px):** Single-column stack. Status tokens are moved to the top of the screen for immediate visibility upon device wake. Spacing increases to `touch-target` sizes for field use.

## Elevation & Depth

To maintain the "Academic Precision" aesthetic, depth is communicated through **Tonal Layers** and **Crisp Outlines** rather than soft shadows, which can feel too "consumer-grade."

- **The Base Layer:** All monitoring dashboards sit on `surface-container`.
- **The Active Entry:** Current visitor cards or flagged camera feeds use `surface-container-lowest` (pure white) with a 1px `outline-variant`.
- **The Overlay:** Modal dialogs for "Access Denied" or "Emergency Lock" use a Level 2 elevation with a 2px `primary` border to draw focus, accompanied by a very light ambient tint (5% primary) rather than a neutral shadow.
- **The Drawer:** Side panels for history logs use `surface-container-low` to appear physically tucked behind the main workspace.

## Shapes

The system adopts a **Soft (0.25rem)** roundedness profile. This creates a "precision-tooled" feel—cleaner than sharp corners but more serious than highly rounded consumer apps.

- **Functional Elements:** Buttons, input fields, and camera feed containers use the 4px base radius.
- **Identification Badges:** Visitor passes and digital IDs use `rounded-lg` (8px) to subtly mimic the physical form of a plastic ID card.
- **Status Pills:** Access status indicators (Permitted/Denied) are **Pill-shaped** (full radius) to act as a "universal signal" that is distinct from the square-ish layout components.

## Components

### Status Tokens (High Visibility)
Pill-shaped indicators for access control.
- **Permitted:** `status-permitted` background with `on-primary` text.
- **Denied:** `status-denied` background with `on-primary` text.
- **Expired:** `status-expired` background with `on-primary` text.

### Security Icon Set
Consistent 24px stroke-based icons.
- **Shield:** Used for system-wide security settings and "Safe" status.
- **Badge:** Used for visitor identification and personnel records.
- **Door:** Used for entry/exit point monitoring (Gate 1, Side Entrance).
- **Camera:** Used for CCTV and live feed access.

### Visitor Identity Cards
A specialized container for check-in.
- **Header:** Features a `label-mono` timestamp and the `Badge` icon.
- **Content:** Large `headline-md` for the visitor's name and `body-sm` for their host.
- **Actions:** High-contrast buttons for "Check Out" or "Revoke Access."

### Surveillance Monitor
A component for video feeds.
- **Frame:** 1px `outline` border.
- **Overlays:** Top-left `label-mono` camera name (e.g., "CAM-04-NORTH"); bottom-right `status-pill` showing "LIVE" or "REC."

### Entry Inputs
Form fields optimized for rapid data entry.
- **Style:** 1px `outline` borders.
- **Focus:** 2px `primary` border with no glow, maintaining the crisp academic aesthetic.