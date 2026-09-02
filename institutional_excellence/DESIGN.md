---
name: Institutional Excellence
colors:
  surface: '#faf8ff'
  surface-dim: '#d2d9f4'
  surface-bright: '#faf8ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f2f3ff'
  surface-container: '#eaedff'
  surface-container-high: '#e1e7ff'
  surface-container-highest: '#dae2fc'
  on-surface: '#131b2e'
  on-surface-variant: '#454654'
  inverse-surface: '#283044'
  inverse-on-surface: '#eef0ff'
  outline: '#757686'
  outline-variant: '#c5c5d7'
  surface-tint: '#3b4fd3'
  primary: '#001c9d'
  on-primary: '#ffffff'
  primary-container: '#2036bd'
  on-primary-container: '#a9b3ff'
  inverse-primary: '#bcc3ff'
  secondary: '#505f76'
  on-secondary: '#ffffff'
  secondary-container: '#d4e3ff'
  on-secondary-container: '#56657c'
  tertiary: '#5a2100'
  on-tertiary: '#ffffff'
  tertiary-container: '#7e3100'
  on-tertiary-container: '#ffa173'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dfe0ff'
  primary-fixed-dim: '#bcc3ff'
  on-primary-fixed: '#000d60'
  on-primary-fixed-variant: '#1d33bb'
  secondary-fixed: '#d4e3ff'
  secondary-fixed-dim: '#b8c7e2'
  on-secondary-fixed: '#0c1c30'
  on-secondary-fixed-variant: '#39485e'
  tertiary-fixed: '#ffdbcc'
  tertiary-fixed-dim: '#ffb694'
  on-tertiary-fixed: '#351000'
  on-tertiary-fixed-variant: '#7a2f00'
  background: '#faf8ff'
  on-background: '#131b2e'
  surface-variant: '#dae2fc'
  success: '#2e7d32'
  warning: '#ed6c02'
typography:
  display:
    fontFamily: Inter
    fontSize: 36px
    fontWeight: '600'
    lineHeight: 44px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
    letterSpacing: -0.01em
  headline-lg-mobile:
    fontFamily: Inter
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
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
    letterSpacing: 0.02em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  base: 4px
  margin-page: 24px
  gutter-grid: 16px
  padding-card: 16px
  density-compact: 8px
  density-generous: 32px
---

## Brand & Style
The design system is built on a foundation of "Institutional Excellence"—a philosophy that prioritizes data integrity, administrative efficiency, and long-term reliability. The aesthetic is strictly **Minimalist** and **Corporate**, favoring a "Work-Forward" environment where the interface recedes to allow complex institutional data to take center stage.

The target audience consists of professional administrators and educators who require high-utility interfaces for dense information processing. The visual language avoids consumer-grade trends like aggressive gradients or playful shadows, opting instead for a systematic, rigorous grid inspired by modern productivity tools. The result is a calm, controlled, and authoritative user experience that minimizes cognitive load during high-stakes workflows.

## Colors
The palette is dominated by a refined scale of cool-toned neutrals to establish hierarchy without visual fatigue. Color is used functionally, not decoratively.

- **Primary Indigo:** Reserved strictly for high-priority actions, active navigation states, and focus indicators to signal intent with authority.
- **Surface & Background:** Utilizes a clean, high-brightness scale (`#FAF8FF`) to distinguish between the primary canvas and utility panels or containers.
- **Semantic Colors:** Status colors (Error, Success, Warning) are used exclusively for system alerts and approval states. 
- **Borders & Outlines:** Low-contrast grays provide structural definition. Avoid high-contrast borders unless used for interactive focus states.

## Typography
Inter is the workhorse of the system, chosen for its exceptional legibility in data-heavy environments. The type scale is tight and controlled to maximize information density.

- **Data Presentation:** `body-md` (14px) is the standard for form fields, tables, and lists.
- **Technical Metadata:** `label-mono` (JetBrains Mono) is used for IDs, timestamps, and system logs to signify "raw data" and improve vertical scannability.
- **Display Use:** Large sizes are rare, reserved exclusively for top-level dashboard titles or empty state messaging.

## Layout & Spacing
This system utilizes a 4px baseline grid for a disciplined vertical rhythm. Layouts are divided into two distinct density modes:

- **Dashboard Mode:** Utilizes `density-generous` (32px+) and wide margins for high-level review and executive summaries.
- **Data Mode:** Utilizes `density-compact` (8px) within a 12-column fluid grid for student records and course lists.

**Breakpoints:**
- **Mobile (<768px):** Single column, 16px margins. Primary interactions move to the bottom of the screen.
- **Tablet (768px - 1200px):** 12-column grid with a collapsed, persistent icon-based sidebar.
- **Desktop (>1200px):** Fixed-width content container (max 1440px) for standard pages, or full-width fluid layouts for complex data tables.

## Elevation & Depth
This system rejects heavy drop shadows, relying instead on **Tonal Layers** and **Low-Contrast Outlines** to communicate hierarchy.

- **Level 0 (Canvas):** The base background layer (`#FAF8FF`).
- **Level 1 (Surfaces):** Cards and main content containers use a white background with a 1px border (`#C5C5D7`). No shadow is applied.
- **Level 2 (Overlays):** Modals, popovers, and menus use a white background, a 1px border, and a soft, highly diffused shadow (15% opacity, 12px blur) to provide separation from the canvas.
- **Interactive States:** Hover and active states are represented by background shifts (e.g., `surface-container-low` to `surface-container-high`) rather than visual lifts.

## Shapes
The shape language is "Soft-Geometric." A uniform 4px (0.25rem) radius is the standard for the majority of UI elements including buttons, input fields, and chips.

- **Standard (4px):** Used for buttons, inputs, and list items.
- **Large (8px):** Used for modals and large containers to provide a subtle visual softening.
- **Pill:** Reserved exclusively for status indicators and tags to distinguish them from interactive button elements.

## Components

### Buttons
- **Primary:** Solid Primary color with white text. Strictly flat; no gradients or inner glows.
- **Secondary:** White background with a 1px `outline` border.
- **Tertiary:** Transparent background; background appears on hover. Used for auxiliary actions in headers and toolbars.

### Input Fields
Inputs are strictly rectangular with a 4px radius. Labels must be persistent and positioned above the field. Focus states are indicated by a 2px Indigo ring with a 2px offset to ensure accessibility.

### Status Pills
Used for workflow states (e.g., "Approved"). These utilize high-contrast text on a low-opacity (10-12%) background of the same semantic color.

### Data Tables
Rows feature a subtle hover state (`#F1F5F9`). Headers must be sticky and utilize `label-mono` typography in all-caps or medium-weight to differentiate from the cell data.

### Approval Cards
Structured with a clear header, 1px border, and a specialized "metadata bar" at the bottom for timestamps. Primary actions (Approve/Reject) are aligned to the bottom right.