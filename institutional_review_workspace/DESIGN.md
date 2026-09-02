---
name: Institutional Review Workspace
colors:
  surface: '#fbf8ff'
  surface-dim: '#dad9e4'
  surface-bright: '#fbf8ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f4f2fe'
  surface-container: '#eeecf8'
  surface-container-high: '#e8e7f2'
  surface-container-highest: '#e3e1ed'
  on-surface: '#1a1b23'
  on-surface-variant: '#454653'
  inverse-surface: '#2f3038'
  inverse-on-surface: '#f1effb'
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
  tertiary: '#3e0b00'
  on-tertiary: '#ffffff'
  tertiary-container: '#631700'
  on-tertiary-container: '#ea7c5b'
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
  tertiary-fixed: '#ffdbd1'
  tertiary-fixed-dim: '#ffb59f'
  on-tertiary-fixed: '#3a0a00'
  on-tertiary-fixed-variant: '#7e2b10'
  background: '#fbf8ff'
  on-background: '#1a1b23'
  surface-variant: '#e3e1ed'
  awarded-green: '#15803d'
  awarded-bg: '#f0fdf4'
  pending-amber: '#b45309'
  pending-bg: '#fffbeb'
  rejected-slate: '#475569'
  rejected-bg: '#f8fafc'
  allocated-blue: '#1d4ed8'
  allocated-bg: '#eff6ff'
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
  data-tabular:
    fontFamily: JetBrains Mono
    fontSize: 13px
    fontWeight: '400'
    lineHeight: 18px
    letterSpacing: -0.01em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  base: 4px
  compact-gap: 8px
  gutter-grid: 16px
  padding-card: 16px
  margin-page: 24px
  sidebar-width: 320px
---

## Brand & Style

The design system is engineered for the **Application Review Workspace**, prioritizing high-stakes evaluative tasks and document-heavy workflows. The aesthetic is defined as **Institutional Functionalism**—a style that balances professional authority with extreme clarity. It is designed for administrators who spend hours within the interface, requiring a low-fatigue environment that minimizes visual noise.

The design narrative focuses on a "Workspace" metaphor:
- **Focused & Impartial:** Using a neutral, structured environment to ensure objective decision-making.
- **High-Utility Minimalism:** Every pixel serves a functional purpose, utilizing whitespace not just for aesthetics, but to separate complex data points.
- **Command & Control:** The UI feels like a precision tool, evoking confidence through a rigid, predictable structure and clear status communication.

## Colors

The color strategy uses the **Syncora Institutional** palette with a specialized semantic layer for the review workflow.

- **Primary (Indigo):** Used for primary actions and the "Active" state of the workflow navigation.
- **Surface Tiers:** Extensive use of `surface-container` variants (from #fbf8ff to #e3e1ed) to create structural hierarchy without relying on heavy borders or shadows.
- **Semantic Statuses:**
  - **Recommended/Awarded (Green):** Signals a positive evaluative outcome.
  - **Pending/Under Review (Amber):** Signals active attention required.
  - **Rejected (Slate):** A neutral, objective gray used to signify a closed file without the negative psychological weight of "Error Red."
  - **Reserved/Allocated (Blue):** Signals a transitional state where funds or slots are held but not finalized.

## Typography

The system utilizes **Inter** for the majority of UI tasks due to its neutral character and excellent legibility at small sizes. 

For the Application Review process, **JetBrains Mono** is introduced as a critical functional typeface. It is mandated for all `data-tabular` and `label-mono` roles. This ensures that Student IDs, application scores, and financial figures align vertically in lists, allowing reviewers to scan and compare numerical data rapidly. 

Headlines use a tighter letter-spacing (-0.01em to -0.02em) to maintain a modern, authoritative feel, while body copy remains standard for maximum readability during long-form document review.

## Layout & Spacing

The layout is built on a **12-column Fixed Grid** for desktop (1440px max-width) to ensure the density of the workspace remains consistent and predictable.

- **Workspace Layout:** Features a persistent **Evaluation Sidebar** (320px) on the right for scoring and notes, keeping the central area free for document review.
- **Data Density:** The "Compact" rhythm (8px) is applied to list views to maximize the number of applications visible without scrolling. 
- **Responsive Behavior:** On tablet, the sidebar collapses into a bottom sheet or a drawer, and the grid becomes fluid to accommodate varying aspect ratios. 
- **Alignment:** All numerical data in tables must be right-aligned to the decimal or the final digit to facilitate "at-a-glance" analysis.

## Elevation & Depth

This design system eschews heavy shadows in favor of **Tonal Layering**, creating a flat but organized hierarchical structure.

- **Layer 0 (Canvas):** The base background uses `surface`.
- **Layer 1 (Cards/Containers):** Elements use `surface-container-lowest` (#FFFFFF) with a 1px `outline-variant` border. This creates a subtle "inset" or "on-top" look without depth.
- **Layer 2 (Selected State):** When an application record is active or hovered, it shifts to `surface-container-high`. This tonal shift provides immediate feedback.
- **Modals & Popovers:** These are the only elements allowed to use a shadow—a minimal 4px blur, low-opacity (10%) shadow—to ensure they pop against the high-density grid behind them.

## Shapes

The design system uses a **Soft (4px)** roundedness profile. This precision-oriented radius reinforces the institutional and professional nature of the application.

- **Inputs and Buttons:** Fixed at a 0.25rem (4px) radius.
- **Status Pills:** Use a Full (9999px) radius. This shape distinction is vital: the pill shape signals "Status" (non-interactive or state indicator), while the rectangular shape signals "Action" (buttons).
- **Review Containers:** Larger workspace panels may use a slightly increased radius of 0.375rem (6px) to soften the overall structure.

## Components

### Status Indicators
Status badges are high-visibility pills using a 10% opacity background of their semantic color with a 100% opacity text label in `label-mono`.
- **Pending:** Amber text on Amber-10% tint.
- **Under Review:** Blue text on Blue-10% tint.
- **Recommended:** Green text on Green-10% tint.

### The Review Header
A persistent top-bar within the application file containing the applicant's name, ID (in `data-tabular`), and a prominent status dropdown. It uses `surface-container-low` to distinguish it from the document content.

### Evaluative Input Fields
Inputs for scoring use a prefix/suffix model. For example, a "Score" field includes a " / 100" suffix in `label-mono` fixed to the right of the input box.

### Application Grid Rows
High-density rows that utilize `compact-gap` (8px) vertical padding. They must include:
1. Student Name (`body-md` bold).
2. Status Pill (Pill-shaped).
3. Evaluator ID (`label-mono`).
4. Submission Date (`data-tabular`).

### Action Buttons
- **Primary:** Solid Indigo (#001c9d) with 4px radius.
- **Secondary:** Outlined with `outline` color, no fill.
- **Ghost:** No border or fill, used for "Add Note" or "View History" inside data rows.