---
name: Academic Precision
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
  tertiary: '#430300'
  on-tertiary: '#ffffff'
  tertiary-container: '#6a0800'
  on-tertiary-container: '#f87159'
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
  tertiary-fixed: '#ffdad4'
  tertiary-fixed-dim: '#ffb4a6'
  on-tertiary-fixed: '#3f0300'
  on-tertiary-fixed-variant: '#872010'
  background: '#fbf8ff'
  on-background: '#1a1b22'
  surface-variant: '#e3e1ec'
  support-open: '#3b4fd3'
  support-in-progress: '#b45309'
  support-resolved: '#15803d'
  support-escalated: '#ba1a1a'
  match-high: '#059669'
  match-medium: '#84cc16'
  match-low: '#757686'
  wellness-mindful: '#4f46e5'
  wellness-balanced: '#0d9488'
  wellness-stressed: '#ea580c'
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
  chat-gap: 12px
  profile-padding: 20px
  ticket-stack: 8px
---

## Brand & Style

The design system is extended to support the "Mentor Connect & Student Support" module, shifting the brand's focus from physical resource management to human-centric guidance. The personality remains **systematic and reliable**, yet introduces a layer of **supportive clarity**. It evokes the emotional response of a structured safety net—where students feel heard and mentors feel equipped.

The design style remains **Corporate / Modern**, leaning into **High-Utility Minimalism**. It prioritizes information density for support workflows while using subtle color-coding to humanize wellness and compatibility data. The aesthetic maintains its "Academic Precision" through rigorous grid alignment and the continuation of the technical, monospaced details for administrative metadata.

## Colors

The palette is augmented with three distinct semantic scales to handle the nuances of student support and mentorship.

- **Support Status:** Utilizes a standard administrative logic. **Open** leverages a bright indigo for visibility, **In Progress** uses a warm amber to indicate active attention, **Resolved** uses a calming forest green, and **Escalated** utilizes the system error red to signal urgent intervention.
- **Match Compatibility:** Uses a "Strength Scale" to visualize mentor-student fit. **High** utilizes emerald to signal an ideal pairing, **Medium** uses a vibrant lime for general compatibility, and **Low** utilizes the neutral outline gray to indicate a need for further review.
- **Wellness Metrics:** Designed to be distinct from operational statuses. **Mindful** uses deep indigo, **Balanced** uses a professional teal, and **Stressed** uses a cautionary orange to highlight students needing proactive outreach.

## Typography

Typography continues to use **Inter** for all primary communication to ensure a neutral and accessible tone. **JetBrains Mono** is reserved for technical data points, ticket IDs, and timestamp metadata within the support module.

- **Conversation UI:** Chat interfaces utilize `body-md` for primary messages to balance readability with screen real estate.
- **Support Metadata:** Ticket IDs (e.g., `#TKT-1024`) and Mentor availability slots are rendered in `label-mono` to signify their status as "system data."
- **Profile Details:** Mentor names use `headline-md`, while their specific areas of expertise use `body-sm` for high-density listing.

## Layout & Spacing

The module follows a **Fixed Grid** for administrative support dashboards and a **Fluid** layout for mentorship profile galleries.

- **Support Queues:** Ticket cards are stacked vertically with an 8px `ticket-stack` gap, allowing for a "triage" view that maximizes the number of visible issues.
- **Mentorship Gallery:** A flexible 12-column grid is used for mentor profiles, with cards spanning 3 columns on desktop and 6 columns on tablet.
- **Chat Interface:** Chat bubbles are spaced using a 12px `chat-gap` to clearly distinguish between participants while maintaining a tight conversational flow.

## Elevation & Depth

Visual hierarchy is established through **Tonal Layers** and **Low-Contrast Outlines**, avoiding shadows to keep the interface feeling crisp and "academic."

- **Profile & Ticket Cards:** Use `surface-container-lowest` (pure white) with a 1px `outline-variant` border. When a ticket is "In Progress," the border weight does not change, but a subtle vertical "status strip" is added to the left edge.
- **Chat Bubbles:** Student messages use `surface-container-low` with no border to appear "recessed" and soft. Mentor/Admin responses use `primary` with `on-primary` text to denote authority and guidance.
- **Overlays:** Modals for "Escalation Notes" use `surface-bright` with a 1px `outline` to pop against the dimmed `surface-dim` background layer.

## Shapes

The design system maintains its **Soft (0.25rem)** roundedness (referred to as `rounded-four` in implementation) to ensure a disciplined, institutional appearance.

- **Component Corners:** Card containers, input fields, and chat bubbles strictly adhere to the 4px base radius.
- **Avatar System:** Mentor and student profile photos are **Circular (full radius)** to provide a humanizing contrast against the otherwise rectilinear grid system.
- **Status Pills:** Support and Wellness indicators use a **Pill-shape** (full radius) to distinguish them as non-interactive status markers.

## Components

### Mentor Profiles
Grid-based cards featuring a circular avatar, `headline-md` name, and `match-compatibility` badges. 
- **Details:** Use `body-sm` for "Fields of Study."
- **Action:** A primary `rounded-sm` button for "Request Connection."

### Chat Bubbles
Asymmetrical containers for support conversations.
- **Student Side:** Left-aligned, `surface-container-low` background, `on-surface` text.
- **Support Side:** Right-aligned, `primary` background, `on-primary` text.
- **Timestamps:** Rendered in `data-viz` below each bubble.

### Support Ticket Cards
A dense information component for the support queue.
- **Header:** Features the `label-mono` Ticket ID and the `support-status` pill.
- **Body:** `body-md` subject line and a `body-sm` preview of the latest update.
- **Footer:** Displays the student's `wellness-metrics` badge to provide context for the urgency of the response.

### Match Compatibility Badge
Small, high-contrast badges used in the mentor search view. They use a low-opacity version of the `match` named colors as a background with a high-saturation border of the same hue to ensure legibility.