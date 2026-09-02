---
name: Academic Precision
colors:
  surface: '#fbf8ff'
  surface-dim: '#dad9e4'
  surface-bright: '#fbf8ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f4f2fe'
  surface-container: '#eeecf8'
  surface-container-high: '#e9e7f2'
  surface-container-highest: '#e3e1ed'
  on-surface: '#1a1b23'
  on-surface-variant: '#454654'
  inverse-surface: '#2f3038'
  inverse-on-surface: '#f1effb'
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
  background: '#fbf8ff'
  on-background: '#1a1b23'
  surface-variant: '#e3e1ed'
  occupancy-available: '#15803d'
  occupancy-occupied: '#2036bd'
  occupancy-maintenance: '#92400e'
  fleet-transit: '#0369a1'
  fleet-idle: '#64748b'
  fleet-delayed: '#b91c1c'
  map-water: '#e0f2fe'
  map-park: '#f0fdf4'
  map-road: '#ffffff'
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
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  grid-gutter: 16px
  dashboard-margin: 24px
  map-overlay-gap: 12px
  node-spacing: 8px
---

## Brand & Style

This design system extends its "Clean Academic" aesthetic into the logistics of campus life: Hostel and Transport Management. The brand personality remains **functional, reliable, and systematic**, evoking the organized rigor of a high-functioning institution. 

The design style is **Corporate / Modern** with a transition toward **High-Utility Minimalism**. It prioritizes clarity and predictability over decorative flair. The aesthetic is built on a foundation of structural integrity, utilizing clean grid layouts and map-integrated patterns to manage complex real-time data. The goal is to provide administrators and students with a sense of calm control over physical resources—ensuring that finding a room or tracking a shuttle is as precise as a library search.

## Colors

The color palette is expanded with highly specific semantic tokens to handle real-time status monitoring. The default mode is **light**, providing a high-contrast environment for administrative tasks.

- **Occupancy Scale:** Uses a "Traffic Light" logic adapted for facility management. **Available** uses a deep success green, **Occupied** adopts the primary indigo to represent active utility, and **Maintenance** utilizes a cautionary ochre to signal temporary unavailability.
- **Fleet Status:** Designed for high-glanceability on maps. **In Transit** uses a vibrant sky blue to represent movement, **Idle** uses a neutral slate for inactive states, and **Delayed** utilizes a high-visibility red to flag logistical bottlenecks.
- **Map Integration:** For transport views, a desaturated "Blueprint" palette is used for geographical features, ensuring that the semantic fleet markers remain the focal point of the interface.

## Typography

Typography is treated as a data-delivery mechanism. **Inter** provides a neutral, highly legible sans-serif for the majority of the UI, while **JetBrains Mono** is utilized for technical identifiers.

- **Systematic Labeling:** A new `data-viz` role is introduced for map pins, room numbers, and license plates. The monospaced nature ensures that alphanumeric strings (like room "B-204" or "BUS-09") occupy consistent horizontal space, preventing layout jitter during real-time updates.
- **Information Density:** For management dashboards, `body-sm` is the workhorse font, allowing for high information density without sacrificing legibility.
- **Hierarchy:** Headlines are strictly functional, used to delineate facility blocks (e.g., "North Wing") or transport routes (e.g., "Route A - Campus Loop").

## Layout & Spacing

The layout follows a **Fixed Grid** philosophy for administrative dashboards to maintain structural consistency, transitioning to a **Fluid/Map-Centric** model for tracking views.

- **Facility Grid:** Hostel room management uses a dense, "Plan-View" grid where each room is a node. These nodes are separated by an 8px `node-spacing`, allowing dozens of rooms to be monitored on a single screen.
- **Transport Map:** Employs a full-bleed map background with a "Floating Command" layout. Information panels are docked in 320px sidebars or floating cards with a 12px `map-overlay-gap` from the screen edges.
- **Breakpoints:** 
  - **Desktop (1280px+):** Three-pane view (Navigation / Map or Grid / Detail Inspector).
  - **Tablet (768px-1279px):** Two-pane view; the Inspector becomes a slide-over sheet.
  - **Mobile (Up to 767px):** Single-pane focus. The grid becomes a searchable list, and maps occupy the full viewport with a bottom-sheet for vehicle details.

## Elevation & Depth

To maintain "Academic Precision," the system avoids heavy drop shadows, favoring **Tonal Layers** and **Low-Contrast Outlines** to define depth.

- **The Base (Level 0):** The primary workspace background uses `surface-container`.
- **The Asset (Level 1):** Room cards and vehicle detail cards are elevated via a pure white background (`surface-container-lowest`) and a 1px `outline-variant` border.
- **The Interactive (Level 2):** Context menus and map-tooltips use a very subtle ambient shadow (4px blur, 5% opacity) to provide just enough separation from the map or grid layer.
- **Operational Focus:** When a room or vehicle is selected, the border weight increases to 2px using the `primary` color, rather than increasing shadow depth.

## Shapes

The system uses **Soft (0.25rem)** roundedness to strike a balance between a technical, "engineered" look and modern accessibility.

- **Modular Nodes:** Hostel rooms in the grid view use the base 4px radius, creating a "Lego-block" appearance that feels structural and organized.
- **Interactive Controls:** Buttons and input fields strictly follow the 4px radius.
- **Indicators:** Map markers for vehicles use a "Teardrop" shape—combining a circle with a sharp 0px bottom-point to indicate exact geographic coordinates.
- **Status Pills:** Unlike the rest of the system, status indicators for Occupancy and Fleet are **Pill-shaped** (full radius) to ensure they are never confused with interactive buttons.

## Components

### Occupancy Grid
A specialized layout component for Hostel Management. Each room is represented by a small square node.
- **Visuals:** Background color corresponds to `occupancy` semantic tokens.
- **Interaction:** Hovering reveals a `label-mono` tooltip with student names or maintenance logs.

### Fleet Tracking Map
An integrated component featuring a custom map style.
- **Vehicle Markers:** High-chroma icons (Bus/Van) using `fleet-status` colors.
- **Route Lines:** 2px semi-transparent paths showing the scheduled route.
- **ETA Badges:** Small `label-mono` overlays showing minutes to the next stop.

### Status Command Bar
A persistent header in management views that displays a summary count (e.g., "Available: 42 | Occupied: 156 | Maint: 4"). It uses the `surface-container-high` background to set it apart from the work area.

### Operational Inputs
Form fields for booking transport or assigning rooms.
- **Style:** 1px `outline` borders that turn `primary` on focus.
- **Validation:** Errors use the `fleet-delayed` red for consistency across the logistics module.

### Resource Cards
Standardized containers for "Vehicle Details" or "Room Details." They feature a header with a `label-mono` ID and a body containing `body-sm` metadata. Actions are placed in a bottom-aligned row using ghost buttons.