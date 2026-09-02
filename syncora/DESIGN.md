---
name: Syncora
colors:
  surface: '#faf8ff'
  surface-dim: '#d2d9f4'
  surface-bright: '#faf8ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f2f3ff'
  surface-container: '#eaedff'
  surface-container-high: '#e2e7ff'
  surface-container-highest: '#dae2fd'
  on-surface: '#131b2e'
  on-surface-variant: '#454654'
  inverse-surface: '#283044'
  inverse-on-surface: '#eef0ff'
  outline: '#757686'
  outline-variant: '#c5c5d7'
  surface-tint: '#3b4fd2'
  primary: '#2036bd'
  on-primary: '#ffffff'
  primary-container: '#3e52d5'
  on-primary-container: '#d7daff'
  inverse-primary: '#bbc3ff'
  secondary: '#505f76'
  on-secondary: '#ffffff'
  secondary-container: '#d0e1fb'
  on-secondary-container: '#54647a'
  tertiary: '#7e3100'
  on-tertiary: '#ffffff'
  tertiary-container: '#a44200'
  on-tertiary-container: '#ffd3bf'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dfe0ff'
  primary-fixed-dim: '#bbc3ff'
  on-primary-fixed: '#000d60'
  on-primary-fixed-variant: '#1d34ba'
  secondary-fixed: '#d3e4fe'
  secondary-fixed-dim: '#b7c8e1'
  on-secondary-fixed: '#0b1c30'
  on-secondary-fixed-variant: '#38485d'
  tertiary-fixed: '#ffdbcc'
  tertiary-fixed-dim: '#ffb694'
  on-tertiary-fixed: '#351000'
  on-tertiary-fixed-variant: '#7a2f00'
  background: '#faf8ff'
  on-background: '#131b2e'
  surface-variant: '#dae2fd'
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
  base: 4px
  margin-page: 24px
  gutter-grid: 16px
  padding-card: 16px
  density-compact: 8px
  density-generous: 32px
---

## Brand & Style
The design system is rooted in high-utility minimalism, prioritizing cognitive ease for campus administrators and educators. It avoids the "noisy" visual tropes of modern consumer apps, such as aggressive gradients or gamified progress indicators. The aesthetic is "Work-Forward"—a precise, systematic environment where the interface recedes to let the institution's data lead.

The target audience consists of administrative staff who manage complex workflows. The emotional response is one of calm control and reliability. The design draws from modern productivity software like Linear, utilizing a rigorous grid, subtle borders, and intentional whitespace to create a sense of organized professional space.

## Colors
The palette is dominated by a refined scale of neutral grays to establish hierarchy without visual fatigue. The primary indigo is reserved strictly for high-priority actions, active navigation states, and focus indicators. 

- **Primary:** An authoritative indigo used sparingly to signal intent.
- **Surface:** White and light-gray backgrounds (`#F8FAFC`) to differentiate between the canvas and utility panels.
- **Status:** Functional colors (Green, Amber, Red, Blue) are used exclusively for semantic meaning—approval statuses, warnings, or system alerts—and never for decorative purposes.
- **Borders:** A consistent light gray (`#E2E8F0`) provides structural definition without the weight of heavy shadows.

## Typography
Inter is used for all core UI elements to ensure maximum legibility at small sizes. For technical metadata (IDs, timestamps, or system logs), a monospaced font is introduced to signify "raw data" and improve scannability in dense tables.

Type scale is tight and controlled. Large display sizes are rare, used only for empty states or top-level dashboard titles. Body-md (14px) is the workhorse size for all form fields, tables, and lists.

## Layout & Spacing
The system utilizes a 4px baseline grid. Layouts are divided into two density modes:

1.  **Dashboard/Review Mode:** Uses generous padding (32px+) and wide margins to facilitate focus during high-level review.
2.  **Data/Directory Mode:** Uses a compact 12-column fluid grid with 8px vertical rhythm for dense information processing (student records, course lists).

**Breakpoints:**
- **Mobile (<768px):** Single column, 16px margins, use of bottom sheets for secondary actions.
- **Tablet (768px - 1200px):** 12-column grid, persistent sidebar navigation (collapsed).
- **Desktop (>1200px):** Fixed-width content container (max 1440px) or full-width for table views.

## Elevation & Depth
This design system avoids heavy shadows in favor of **Tonal Layers** and **Ghost Outlines**. Depth is established through:

- **Level 0 (Canvas):** The base background, typically `#F8FAFC`.
- **Level 1 (Card/Surface):** White surfaces with a 1px border (`#E2E8F0`). No shadow.
- **Level 2 (Popovers/Modals):** White surfaces with a very soft, diffused shadow (15% opacity, 12px blur) and a border to clearly separate from the canvas.
- **State Changes:** Hover states are indicated by subtle background shifts (e.g., Gray 50 to Gray 100) rather than elevation lifts.

## Shapes
The shape language is "Soft" yet geometric. A consistent 4px (0.25rem) radius is applied to buttons, input fields, and small cards to maintain a professional, systematic look. Larger containers like modals or bottom sheets may scale up to 8px (0.5rem) to soften their presence against the rigid grid.

## Components

### Buttons
- **Primary:** Solid Indigo with white text. Minimalistic, no gradients.
- **Secondary:** White background with a 1px Gray-300 border.
- **Tertiary/Ghost:** No border or background unless hovered. Used for low-priority actions in toolbars.

### Status Pills
Used for "Approved," "Pending," or "Overdue." These use high-contrast text on a very low-opacity background of the same color (e.g., Error text on 10% red background).

### Approval Cards
Structured with a clear header, a 1px border, and a "metadata bar" at the bottom. Primary actions (Approve/Reject) are always placed in the bottom right.

### Input Fields
Strictly rectangular with a 4px radius. Labels are always persistent above the field. Focus states use a 2px indigo ring with a 2px offset.

### Bottom Sheets (Mobile)
Used for all secondary actions, filters, or organization-switching on mobile devices to ensure thumb-reachability. They feature a prominent "drag handle" at the top center.

### Lists & Tables
Rows use a subtle hover state (`#F1F5F9`). Headers are sticky and use the `label-mono` typography style to differentiate from the data.