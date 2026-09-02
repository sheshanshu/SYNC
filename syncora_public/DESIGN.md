---
name: Syncora Public
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
  secondary: '#4052c9'
  on-secondary: '#ffffff'
  secondary-container: '#7586ff'
  on-secondary-container: '#001685'
  tertiary: '#621700'
  on-tertiary: '#ffffff'
  tertiary-container: '#892400'
  on-tertiary-container: '#ff9f83'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dfe0ff'
  primary-fixed-dim: '#bcc3ff'
  on-primary-fixed: '#000d60'
  on-primary-fixed-variant: '#1d33bb'
  secondary-fixed: '#dfe0ff'
  secondary-fixed-dim: '#bbc3ff'
  on-secondary-fixed: '#000d60'
  on-secondary-fixed-variant: '#2437b0'
  tertiary-fixed: '#ffdbd1'
  tertiary-fixed-dim: '#ffb59f'
  on-tertiary-fixed: '#3a0a00'
  on-tertiary-fixed-variant: '#862300'
  background: '#fbf8ff'
  on-background: '#1a1b23'
  surface-variant: '#e3e1ed'
  accent-gradient-start: '#2036bd'
  accent-gradient-end: '#4f69ff'
  surface-hero: '#fbf8ff'
  occupancy-available: '#15803d'
  fleet-delayed: '#b91c1c'
typography:
  display-hero:
    fontFamily: Inter
    fontSize: 72px
    fontWeight: '700'
    lineHeight: 80px
    letterSpacing: -0.03em
  display-hero-mobile:
    fontFamily: Inter
    fontSize: 44px
    fontWeight: '700'
    lineHeight: 48px
    letterSpacing: -0.02em
  headline-xl:
    fontFamily: Inter
    fontSize: 48px
    fontWeight: '600'
    lineHeight: 56px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Inter
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 40px
    letterSpacing: -0.01em
  body-xl:
    fontFamily: Inter
    fontSize: 20px
    fontWeight: '400'
    lineHeight: 32px
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  label-mono:
    fontFamily: JetBrains Mono
    fontSize: 14px
    fontWeight: '500'
    lineHeight: 20px
    letterSpacing: 0.05em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  section-gap-lg: 160px
  section-gap-md: 80px
  container-max: 1280px
  gutter: 24px
  margin-mobile: 20px
---

## Brand & Style
The design system evolves the "Academic Precision" foundation into a premium, public-facing marketing experience. While the core DNA remains functional and systematic, the marketing layer adopts a **Modern / High-Contrast** style to communicate cutting-edge innovation. 

The personality is **authoritative yet visionary**. It moves away from high-density data management toward a spacious, editorial feel that evokes trust through "Institutional Excellence." The visual language utilizes heavy whitespace, oversized typography to command attention, and subtle, sophisticated gradients that add a sense of depth and technological "shimmer" without compromising professional integrity. High-impact photography should be used to ground the digital precision in real-world campus and logistics environments.

## Colors
The palette is anchored by the signature **Syncora Blue (#2036bd)**, used as the primary driver for brand recognition. In this marketing context, we introduce a vibrant secondary blue to create **dynamic gradients** that signal energy and movement.

- **Primary & Secondary:** Used for high-impact brand moments, primary buttons, and hero typography. 
- **Gradients:** Subtle linear gradients (45-degree angle) are used for feature icons and background accents to differentiate the landing page from the flat, utility-focused internal dashboards.
- **Surface Strategy:** We utilize the "Surface-Bright" (#fbf8ff) as the default background to maintain a crisp, clean aesthetic. Pure white is reserved exclusively for elevated cards and section containers to create a distinct hierarchy of information.

## Typography
Typography is the primary vehicle for the "Academic" aesthetic. We use **Inter** for all marketing copy, but at significantly larger scales than the management platform. 

- **Display Scales:** The `display-hero` scale is intended for primary value propositions. It uses tight tracking and a heavy weight to feel impactful and modern.
- **Micro-Copy:** **JetBrains Mono** is retained for uppercase "Eyebrow" labels above headlines (e.g., "PLATFORM OVERVIEW") to maintain the technical, systematic heritage of the brand.
- **Readability:** Body text uses a generous 1.5x–1.6x line height to ensure maximum readability against white space.

## Layout & Spacing
The layout transitions to a **Fixed Grid** system for the landing page to ensure content remains centered and readable on ultra-wide displays.

- **The Grid:** A 12-column grid with a 1280px max-width. Content should be grouped in 4, 6, or 8-column spans to maintain focus.
- **Whitespace:** We embrace "Generous Breathability." Section gaps are intentionally large (160px) to separate different product narratives and prevent information overload.
- **Responsiveness:**
  - **Desktop:** 12-column grid, 160px section vertical spacing.
  - **Tablet:** 8-column grid, 80px section vertical spacing.
  - **Mobile:** 4-column grid, 60px section vertical spacing, margins reduced to 20px.

## Elevation & Depth
Depth is used sparingly to maintain a "Modern Minimalist" feel. We avoid heavy, muddy shadows.

- **Tonal Elevation:** Most sections are flat, separated by subtle shifts in background color (e.g., moving from `surface-hero` to a pure white section).
- **Floating Cards:** For feature highlights, use a high-diffused "Ambient Shadow." This should be a large-radius (32px), low-opacity (4%) shadow tinted with the primary blue (#2036bd) to make the card feel like it is floating on a cushion of light.
- **Glassmorphism:** Navigation bars use a backdrop-filter (blur: 12px) with a semi-transparent white fill (opacity: 80%) to maintain context as users scroll through high-impact imagery.

## Shapes
The shape language is **Rounded (0.5rem)**, providing a softer, more approachable feel for the public market than the technical 4px radius used in internal tools.

- **Cards & Images:** Large container elements and hero images use `rounded-xl` (1.5rem) to feel friendly and contemporary.
- **CTA Buttons:** Buttons use the `rounded-lg` (1rem) setting, creating a distinct "pill-like" appearance that encourages interaction.
- **Decorative Elements:** Use perfectly circular shapes for background gradient blobs to contrast the structured, rectangular grid of the content.

## Components

### Hero Section
The flagship component. It features a centered or split layout with `display-hero` typography. Imagery should be high-resolution, featuring architectural campus shots or clean logistics technology, housed in `rounded-xl` containers.

### Primary CTA
Buttons are larger and more expressive. The primary button uses a gradient fill from `accent-gradient-start` to `accent-gradient-end`, with a subtle lift effect (small shadow) on hover.

### Feature Cards
Used to explain the "Hostel" and "Transport" modules. These cards use the `white` surface with ambient blue-tinted shadows. They include a monospaced eyebrow label and a `headline-lg` title.

### Interactive Demo Snippets
To showcase "Academic Precision," include small, non-functional UI snippets (like a mini Occupancy Grid or a Route Map) embedded within the marketing sections. These should use the internal system's 4px radius to hint at the actual product's power.

### Trust Bar
A horizontal strip for partner institution logos. Logos should be rendered in a single-color `outline` gray to maintain visual harmony and avoid competing with the Syncora brand colors.