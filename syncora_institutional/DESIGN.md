---
name: Syncora Institutional
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
  secondary-fixed: '#d4e3ff'
  secondary-fixed-dim: '#b8c7e2'
  on-secondary-fixed: '#0c1c30'
  on-secondary-fixed-variant: '#39485e'
  tertiary-fixed: '#ffdbd1'
  tertiary-fixed-dim: '#ffb59f'
  on-tertiary-fixed: '#3a0a00'
  on-tertiary-fixed-variant: '#862300'
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
  margin-page: 24px
  gutter-grid: 16px
  padding-card: 16px
  allocation-row: 12px
  compact-gap: 8px
---

## Brand & Style
The design system for the Scholarship Management module transitions from general-purpose utility to a **Command & Control** aesthetic. It is tailored for institutional administrators who require high-density data visualization and absolute clarity in decision-making workflows. 

The style is **High-Utility Minimalism** mixed with **Institutional Authority**. It leverages a rigid structural grid and a "System-as-the-Background" philosophy. By minimizing decorative elements and maximizing functional density, the interface evokes a sense of impartiality, accuracy, and professional rigor. The emotional response is one of confidence and administrative mastery over complex financial and academic datasets.

## Colors
This module utilizes the existing Syncora palette but introduces a specific semantic layer for financial and application statuses. 

- **Primary & Secondary:** The core Indigo and Slate colors are used for structural navigation and primary administrative actions (e.g., "Finalize Disbursement").
- **Financial Semantic Palette:** 
    - **Awarded:** A deep forest green on a mint wash, signaling completion and positive funding.
    - **Pending:** A warm amber to signal "Review Required" or "Awaiting Verification."
    - **Rejected/Withdrawn:** A neutral slate gray, rather than a loud error red, to maintain a professional and objective tone for unsuccessful applications.
    - **Allocated:** A bright blue to indicate funds that are "reserved" but not yet "awarded."
- **Institutional Neutrals:** Extensive use of `surface-container` tiers to separate scholarship tiers, application cohorts, and fiscal year data.

## Typography
The system maintains **Inter** as the primary typeface for its exceptional legibility in dense administrative layouts. 

For the Scholarship Management module, we introduce `data-tabular` using **JetBrains Mono**. This is the mandatory choice for all currency values, student IDs, and fiscal years. The monospaced nature ensures that columns of numbers align perfectly, facilitating rapid visual comparison of award amounts. 

`label-mono` is strictly used for metadata tags and status indicators, while `body-md` remains the workhorse for standard form inputs and student descriptions.

## Layout & Spacing
The layout adheres to a strict **12-column Fixed Grid** for desktop views (max-width: 1440px), transitioning to a **Fluid Grid** for tablet devices.

- **Scholarship Workbench:** A specialized layout featuring a persistent "Allocation Sidebar" (320px) on the right, allowing administrators to see the remaining fund balance while reviewing individual applications.
- **Data Density:** Application lists use a "Compact" vertical rhythm (8px) to maximize the number of records visible per screen.
- **Grouping:** Use `padding-card` (16px) for major sections, but reduce to `compact-gap` (8px) for internal element grouping within scholarship criteria lists.

## Elevation & Depth
In line with the "Institutional" aesthetic, elevation is communicated through **Tonal Tiering** rather than shadows.

- **Level 0 (Global Canvas):** `surface` (#faf8ff).
- **Level 1 (Application Cards):** `surface-container-lowest` (#ffffff) with a 1px `outline-variant` border.
- **Level 2 (Active Review):** When a record is selected, it adopts `surface-container-high` to visually "lift" the row without needing a drop shadow.
- **Modals:** Use a minimal 4px blur shadow only to provide necessary contrast against the data grid, maintaining a flat, authoritative profile.

## Shapes
The design system adopts a **Soft (0.25rem)** roundedness profile. This specific radius strikes a balance between the modern friendliness of a web app and the serious, geometric precision of institutional software. 

- **Primary Buttons & Inputs:** 0.25rem (4px).
- **Status Pills:** 9999px (Full) to distinguish them as non-interactive status indicators compared to rectangular buttons.
- **Data Containers:** 0.375rem (6px) for larger scholarship summary cards.

## Components

### Allocation Progress Bar
A custom component for scholarship funds. A horizontal bar showing "Awarded" (Green), "Reserved" (Blue), and "Remaining" (Gray) segments. Includes a `label-mono` legend for precise currency values.

### Status Badges
Semantic badges using high-contrast text on 10% opacity backgrounds.
- **Awarded:** `awarded-green` on `awarded-bg`.
- **Pending:** `pending-amber` on `pending-bg`.
- **Rejected:** `rejected-slate` on `rejected-bg`.

### Scholarship Application Rows
High-density rows featuring:
1.  **Avatar/ID:** Student initials and monospaced ID.
2.  **Status Pill:** Current application phase.
3.  **Financial Value:** Right-aligned `data-tabular` amount.
4.  **Quick Actions:** Ghost buttons for "View Profile" or "Add Note," appearing only on hover.

### Filter Bar
A persistent horizontal bar above data grids. Uses `surface-container-low` background with `outline-variant` borders. Filters are represented as "Filter Chips" that expand into small popovers for multi-select institutional criteria (e.g., GPA range, Department, Financial Need).

### Input Fields
Maintain the 4px radius. For financial inputs, a currency symbol prefix ($) is fixed in the `label-mono` style within the field to signify the data type.