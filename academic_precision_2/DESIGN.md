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
  surface-container-highest: '#e3e1ec'
  on-surface: '#1a1b23'
  on-surface-variant: '#454654'
  inverse-surface: '#2f3038'
  inverse-on-surface: '#f1effb'
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
  secondary-container: '#d4e3ff'
  on-secondary-container: '#56657c'
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
  surface-variant: '#e3e1ec'
  status-available: '#15803d'
  status-issued: '#3e52d5'
  status-overdue: '#b91c1c'
  category-digital: '#7c3aed'
  category-physical: '#0891b2'
  category-periodical: '#ca8a04'
  bookshelf-wood: '#fdfaf6'
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
  search-ui:
    fontFamily: Inter
    fontSize: 15px
    fontWeight: '400'
    lineHeight: 22px
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  bookshelf-gap: 24px
  search-gutter: 16px
  asset-card-padding: 12px
  margin-mobile: 16px
  margin-desktop: 32px
---

## Brand & Style

The design system is extended to support a "Clean Academic" aesthetic, specifically tailored for Library & Digital Asset management. It evolves the existing high-utility minimalism into a space that feels both scholarly and approachable. The target audience—students and librarians—requires an interface that balances rigorous information density with a "cozy," organized mental model.

The style is **Modern/Corporate** with a focus on **Tonal Layering**. It moves away from cold data-processing and introduces warmth through softer secondary accents and intentional "Bookshelf" metaphors in student-facing views. The goal is to evoke a sense of quiet productivity and intellectual discovery, ensuring that the interface remains a secondary backdrop to the library's vast collection.

## Colors

This design system utilizes the established primary indigo (`#3e52d5`) as the anchor for navigation and primary search actions. For the Library module, the palette is expanded to include a "Categorization Scale"—softer, more diverse tones used to distinguish between asset types (Digital, Physical, Periodicals) without overwhelming the academic neutral base.

- **Surface Neutral:** The base remains a cool, clean off-white to maintain focus.
- **Semantic Status:** Availability is indicated by a specialized trio: **Available** (Success Green), **Issued** (Primary Blue), and **Overdue** (Error Red). These are applied via high-chroma text on 8% opacity backgrounds for high legibility and low visual noise.
- **Categorization:** Secondary tones like soft violets and teals are used for asset tags to help students scan their 'My Bookshelf' view quickly.

## Typography

The typography maintains the systematic rigor of **Inter** for all UI components. To support the Library's complex search interfaces, a specialized `search-ui` role (15px) is introduced, providing slightly more breathing room than standard body text for high-frequency interaction.

- **Scholarly Hierarchy:** Headlines use tighter tracking and semi-bold weights to clearly delineate sections in dense search results.
- **Metadata:** The `label-mono` (JetBrains Mono) is strictly reserved for ISBNs, Call Numbers, and Digital Hash IDs, distinguishing technical identifiers from descriptive titles.
- **Readability:** Line heights are strictly adhered to for multi-line book descriptions to prevent "wall-of-text" fatigue in asset detail views.

## Layout & Spacing

The layout for the Library module transitions between two distinct modes:

1.  **Search & Discovery:** A robust, sidebar-driven fluid grid. The sidebar (280px) houses multi-select filters, while the main content area utilizes a flexible grid for asset cards.
2.  **My Bookshelf:** A more relaxed, "cozy" layout with larger horizontal margins and increased card gaps (`bookshelf-gap`). This creates a digital environment that mimics the physical organization of a personal study.

**Breakpoints:**
- **Mobile:** Single column list view. Filtering is moved to a full-screen modal overlay to maximize screen real estate for asset titles.
- **Desktop:** 12-column grid. Asset cards span 3 or 4 columns depending on the view density toggle.

## Elevation & Depth

In alignment with the "Work-Forward" philosophy, the library module uses **Tonal Layers** instead of shadows to minimize visual clutter in dense lists.

- **Canvas (Level 0):** Used for the global background.
- **Search Results (Level 1):** Asset cards use a 1px border (`#E2E8F0`) with a white background.
- **Active Selection:** A subtle inset shadow or a slightly darker border (`#3e52d5`) indicates an asset selected for bulk actions.
- **Popovers:** Search suggestions and autocomplete menus use a soft, 8px blur shadow to distinguish themselves from the search input field without appearing disconnected.

## Shapes

The "Soft" geometric shape language is maintained with a base **4px (0.25rem)** radius. This provides the necessary precision for an academic tool while avoiding the harshness of sharp corners.

- **Asset Covers:** Book and media covers follow the 4px radius to ensure they feel like integrated UI elements rather than raw images.
- **Status Pills:** Fully rounded (pill-shaped) to distinguish them from interactive buttons.
- **Search Inputs:** Retain the 4px radius for a consistent, professional form-factor across the entire system.

## Components

### Status Indicators
Available, Issued, and Overdue labels are implemented as small, high-contrast pills. 
- **Available:** Deep green text on light green tint.
- **Issued:** Primary indigo text on light indigo tint.
- **Overdue:** Deep red text on light red tint.

### Search Interfaces
The search bar is the primary interaction point. It features a persistent search icon on the left and a "Refine" filter button on the right. Autocomplete results display book titles in `body-md` and authors in `body-sm`.

### Asset Cards
These are the building blocks of the library. They include:
- **Media Preview:** A 3:4 aspect ratio area for book covers or document icons.
- **Title/Author:** Stacked vertically with clear weight differentiation.
- **Utility Bar:** A bottom-aligned row containing the status indicator and a "Save to Bookshelf" ghost button.

### 'My Bookshelf' View
A student-specific component that uses larger card sizes and visual progress bars for ebooks. It employs a "cozy" layout with wider spacing and a dedicated section for "Currently Reading" assets at the top.

### Filter Chips
Small, interactive elements within the search sidebar that allow users to quickly remove active parameters (e.g., "Year: 2023 [x]"). They use the `secondary-container` color for a subtle but distinct presence.