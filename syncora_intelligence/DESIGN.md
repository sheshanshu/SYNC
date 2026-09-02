---
name: Syncora Intelligence
colors:
  surface: '#f8f9ff'
  surface-dim: '#F8FAFC'
  surface-bright: '#f8f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#eff4ff'
  surface-container: '#e5eeff'
  surface-container-high: '#dce9ff'
  surface-container-highest: '#d3e4fe'
  on-surface: '#0b1c30'
  on-surface-variant: '#44474e'
  inverse-surface: '#213145'
  inverse-on-surface: '#eaf1ff'
  outline: '#75777f'
  outline-variant: '#c5c6cf'
  surface-tint: '#4c5f82'
  primary: '#000718'
  on-primary: '#ffffff'
  primary-container: '#091f3f'
  on-primary-container: '#7587ad'
  inverse-primary: '#b4c7ef'
  secondary: '#7037ce'
  on-secondary: '#ffffff'
  secondary-container: '#8a54e9'
  on-secondary-container: '#fffbff'
  tertiary: '#00090a'
  on-tertiary: '#ffffff'
  tertiary-container: '#002426'
  on-tertiary-container: '#00969d'
  error: '#EF4444'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#d7e2ff'
  primary-fixed-dim: '#b4c7ef'
  on-primary-fixed: '#041b3b'
  on-primary-fixed-variant: '#344769'
  secondary-fixed: '#ebdcff'
  secondary-fixed-dim: '#d3bbff'
  on-secondary-fixed: '#260059'
  on-secondary-fixed-variant: '#5a16b8'
  tertiary-fixed: '#6ef6ff'
  tertiary-fixed-dim: '#4cd9e2'
  on-tertiary-fixed: '#002022'
  on-tertiary-fixed-variant: '#004f53'
  background: '#f8f9ff'
  on-background: '#0b1c30'
  surface-variant: '#d3e4fe'
  success: '#10B981'
  warning: '#F59E0B'
  info: '#3B82F6'
  surface-border: '#E2E8F0'
typography:
  headline-lg:
    fontFamily: Inter
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
    letterSpacing: -0.02em
  headline-md:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
    letterSpacing: -0.01em
  headline-sm:
    fontFamily: Inter
    fontSize: 20px
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
  label-md:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.05em
  code:
    fontFamily: JetBrains Mono
    fontSize: 13px
    fontWeight: '400'
    lineHeight: 18px
  headline-lg-mobile:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '700'
    lineHeight: 30px
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  unit: 4px
  gutter: 24px
  margin-desktop: 40px
  margin-mobile: 16px
  skeleton-gap: 12px
---

## Brand & Style

The design system is engineered for **Syncora**, a high-fidelity platform focused on operational clarity and professional reliability. The brand personality is authoritative yet frictionless, targeting enterprise users who require precision and trust. 

The aesthetic follows a **Corporate / Modern** movement. It prioritizes functional density, crisp visual hierarchies, and a refined "technological" air. By utilizing a "System States" first approach, the design system ensures that the UI remains communicative and stable even during data transitions, errors, or connectivity lapses. The emotional response should be one of competence, security, and effortless control.

## Colors

The palette is anchored by **Deep Navy (#091F3F)** to establish professional gravity, supported by **Electric Purple** for sophisticated accents and **Teal** for data-driven highlights. 

### System State Semantic Mapping
- **Success:** Emerald green is paired with high-contrast check icons for verified actions.
- **Error:** A bright, urgent red used for critical failures and security walls.
- **Warning:** Amber gold for non-blocking alerts.
- **Connectivity:** Low-saturation slates for "Offline" banners to indicate a "dimmed" state of functionality, transitioning to Error red if the server is unreachable.

## Typography

The design system utilizes **Inter** exclusively for its neutral, highly legible characteristic across all interface scales. 

- **Headlines:** Use tighter letter-spacing and bold weights to provide a strong structural anchor.
- **Labels:** Small caps or increased letter-spacing are applied to metadata and category tags to differentiate them from actionable body text.
- **System States:** Error messages and alerts use `body-md` with `600` weight for immediate readability against background fills.

## Layout & Spacing

A **12-column fluid grid** is used for desktop environments, transitioning to a **4-column grid** for mobile. The spacing rhythm is based on a **4px baseline**, ensuring all components align to a consistent mathematical grid.

### System State Layouts
- **Empty States:** Center-aligned vertically and horizontally within their parent container. Text content is constrained to a 400px max-width to maintain readability.
- **Banners:** Connectivity and Security banners are fixed to the top of the viewport or container, shifting content downward rather than overlaying it to ensure no information loss.

## Elevation & Depth

Depth is communicated through **Tonal Layers** and subtle, surgical shadows. 

- **Level 0 (Surface):** The base background using `surface-dim`.
- **Level 1 (Card):** White background with a 1px `surface-border` and a very soft 4px blur shadow (5% opacity).
- **Level 2 (Modals/Security Walls):** Increased elevation with a 12px blur shadow and a backdrop-blur (8px) to isolate the state from the background application.
- **Skeleton Screens:** Use a linear gradient animation from `surface-border` to a slightly lighter tint to simulate depth and motion during loading.

## Shapes

The shape language is "Soft-Precision." Standard components use a **4px (0.25rem)** radius. This maintains a professional, crisp edge while avoiding the harshness of sharp corners.

- **Buttons & Inputs:** 4px radius.
- **Large Cards & Modals:** 8px (`rounded-lg`) radius.
- **State Indicators:** Small status dots or badges use a fully rounded/pill shape to distinguish them from structural elements.

## Components

### 1. System Loading States
- **Skeletons:** Rectangular blocks for text headlines, circular for avatars. Use the `skeleton-gap` for vertical rhythm between lines.
- **Progress:** A thin (2px) indeterminate linear loader at the very top of the navigation bar for global transitions.

### 2. Feedback Indicators
- **Toast Notifications:** Right-aligned. Success uses a Teal icon; Error uses a Red icon.
- **Input Fields:** Validation errors use a 1px red border and a 12px "helper text" below the field.

### 3. Empty States
- **Layout:** Icon/Illustration (64px) > Headline-sm > Body-md > Primary Action Button.
- **Visuals:** Icons should be rendered in a 2-tone "Slate" style to appear secondary to active content.

### 4. Security Walls
- **Unauthorized (401):** A full-screen overlay with a centered lock icon and a "Sign In" primary action.
- **Forbidden (403):** An in-situ card replacing the restricted content area, explaining the permission required to view the data.

### 5. Connectivity Banners
- **Offline:** A `neutral-700` bar at the top of the page with a "Working offline" message.
- **Server Unavailable:** A `error-600` bar with a "Retry" text link.