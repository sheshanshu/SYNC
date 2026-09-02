---
name: 'Academic Precision: Exams & Results'
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
  secondary: '#5d5e67'
  on-secondary: '#ffffff'
  secondary-container: '#e3e1ed'
  on-secondary-container: '#63646d'
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
  secondary-fixed: '#e3e1ed'
  secondary-fixed-dim: '#c6c5d0'
  on-secondary-fixed: '#1a1b23'
  on-secondary-fixed-variant: '#45464f'
  tertiary-fixed: '#ffdbd1'
  tertiary-fixed-dim: '#ffb59f'
  on-tertiary-fixed: '#3a0a00'
  on-tertiary-fixed-variant: '#862300'
  background: '#fbf8ff'
  on-background: '#1a1b23'
  surface-variant: '#e3e1ed'
  status-pass: '#15803d'
  status-distinction: '#7c3aed'
  status-fail: '#b91c1c'
  status-pending: '#ca8a04'
  secure-shield: '#2036bd'
  data-viz-grid: '#e3e1ec'
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
  label-mono:
    fontFamily: JetBrains Mono
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
  display-result:
    fontFamily: Inter
    fontSize: 36px
    fontWeight: '700'
    lineHeight: 44px
    letterSpacing: -0.02em
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
  table-cell-padding: 16px
  stack-gap: 24px
  section-margin: 48px
  gutter-md: 1rem
---

## Brand & Style

The "Exams & Results" extension of the design system evolves the "Clean Academic" aesthetic into a **High-Stakes Corporate** style. It shifts from the "cozy" discovery of the library module to a formal, secure, and authoritative atmosphere. The design must evoke an emotional response of trust, finality, and clarity, ensuring students and faculty feel the gravity and integrity of the academic record.

The style is characterized by **Rigorous Minimalism** and **Information Density**. It removes all metaphorical "warmth" in favor of cold, precise data visualization and "Secure-UI" metaphors. High-contrast elements and "Verified" visual cues (locks, shields, badges) are utilized to reassure users of the data's authenticity and the platform's security.

## Colors

The palette is anchored in **Deep Indigo** and **Professional Grays** to maintain a formal tone. The "Exams & Results" module introduces a strict semantic scale for result outcomes, optimized for accessibility and immediate recognition.

- **Primary & Neutral:** The primary indigo (`#2036bd`) is used for core navigation and secure actions. Backgrounds utilize the "Surface" scale to create distinct hierarchy without relying on shadows.
- **Result Statuses:**
    - **Distinction:** A royal violet (`#7c3aed`), signaling exceptional achievement.
    - **Pass:** A high-readability forest green (`#15803d`).
    - **Fail:** A serious, alerting red (`#b91c1c`).
    - **Pending:** A cautious amber (`#ca8a04`) used for results currently under review.
- **Data Visualization:** Grids and charts use a palette of neutral grays (`#e3e1ec`) to ensure the colorful status indicators remain the primary focus of the page.

## Typography

Typography in this module is focused on **Unambiguous Readability**. We utilize **Inter** for its neutral, highly legible glyphs, particularly for numerical data.

- **Result Display:** A new `display-result` role (36px, Bold) is introduced for the final grade or percentage on transcript pages, ensuring it is the first thing a user sees.
- **Tabular Data:** All result tables and grade breakdowns use `body-md` for high information density while maintaining vertical scanability.
- **Security Identifiers:** `label-mono` (JetBrains Mono) is strictly applied to digital signatures, verification hashes, and exam seat numbers to signal their technical, tamper-proof nature.

## Layout & Spacing

The layout moves away from the fluid, creative "Bookshelf" model toward a **Strict Fixed Grid** (1200px max width) to ensure data visualization and tables remain consistent across devices.

- **Data Tables:** These are the primary layout containers. They utilize a rhythmic 16px cell padding to ensure that even in dense result lists, individual rows are clearly demarcated.
- **The "Verification Sidebar":** On desktop, result pages feature a fixed 320px right-hand sidebar containing the "Verified Badge," digital signature information, and download actions (PDF/Official Transcript).
- **Mobile Reflow:** Tables transition to "Data Cards" on mobile devices, where each exam is a card with a clear header, and the "Pass/Fail" status is pinned to the top right of the card.

## Elevation & Depth

To emphasize security and "officialdom," this module utilizes **Low-Contrast Outlines** and **Tonal Layering** rather than soft shadows. 

- **Official Documents:** Components like the "Digital Transcript" use a white surface (`surface-container-lowest`) with a crisp 1px border (`outline-variant`). No shadows are used, creating a "flat" but physical document feel.
- **Secure Modals:** Overlays for viewing detailed feedback or exam security logs use a high-opacity backdrop blur to isolate the user's attention, signifying a "secure session."
- **Status Tiering:** Elevated components are used only for urgent status alerts (e.g., an exam deadline today), utilizing a slightly darker surface-container to "pop" without breaking the flat aesthetic.

## Shapes

The shape language is tightened to **Soft (0.25rem)** for most elements. This reduction in roundedness from the library's more playful elements reinforces the formal nature of the exams module.

- **Verification Badges:** Use a specialized "Shield" or "Seal" shape—often a circle with a subtle notch or a hexagonal border—to denote authenticity.
- **Inputs & Fields:** Maintain the 4px radius for a consistent, professional form-factor.
- **Status Chips:** Unlike the "pill" shapes in other modules, these are rectangular with a 2px radius to feel more like industrial labels or official stamps.

## Components

### Status Indicators (High-Stakes)
Status labels are rectangular, high-contrast badges. 
- **Pass:** White text on `#15803d` background.
- **Fail:** White text on `#b91c1c` background.
- **Distinction:** White text on `#7c3aed` background.
- These components are always accompanied by a small icon (Checkmark, Cross, or Star) to aid color-blind accessibility.

### Result Cards
High-density cards used on mobile or dashboard summaries. They feature:
- **Header:** Subject code and name in `headline-md`.
- **Primary Data:** The grade/percentage in `display-result`.
- **Footer:** Date of issue and a "Verified" lock icon.

### Secure Progress Bars
Used for exam completion or multi-part result breakdowns. They use a thick 8px track with sharp ends. The "fill" color matches the status (e.g., green for passing progress).

### Verification Shield
A persistent UI component found on all official result pages. It includes the institution's seal, a "Verified" label in `label-mono`, and a timestamp. It uses a `surface-container-low` background to appear subtly different from the main canvas.

### Data Visualization (Grade Distribution)
Bar charts and histograms used to show student performance relative to the cohort. Use `on-surface-variant` for axes and the `primary` indigo for the student's specific position, ensuring a clear, professional visual hierarchy.