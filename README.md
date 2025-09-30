# HTML5 + CSS3 Practical (No JS, No Forms)

This site demonstrates modern HTML5 semantics, CSS3 styling, responsive design, and Docker containerization.

## Pages

- **index.html** — Semantic structure, skip link, headings, quotes, time, abbr, code/kbd/samp with card components.
- **about.html** — Sections, lists, definition lists, internal links.
- **media.html** — `<picture>` responsive image, audio, video with VTT captions.
- **extras.html** — Tables (caption/thead/tbody/tfoot), `<details>`, `<dialog open>`, `<progress>`, `<meter>`.

## Design System

### Color Palette
- **Light Mode**: Clean whites, subtle grays, blue accent (#3182ce)
- **Dark Mode**: Dark backgrounds, light text, adjusted blue accent (#63b3ed)
- **Support for `prefers-color-scheme: dark`**

### Typography
- **Font Stack**: System fonts (-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto)
- **Type Scale**: 1.25 ratio (16px base, 20px, 24px, 30px, 36px)
- **Line Height**: 1.6 for body text, 1.2 for headings

### Spacing Scale
- **8px base unit**: 4px, 8px, 12px, 16px, 20px, 24px, 32px, 48px, 64px
- **Consistent vertical rhythm** throughout

### Components
- **Cards**: Subtle shadows, hover effects, rounded corners
- **Tables**: Striped rows, hover states, responsive overflow
- **Interactive Elements**: Focus states, transitions, accessibility-first

## Accessibility Features

- **WCAG AA Contrast**: All text meets 4.5:1 ratio minimum
- **Focus States**: Visible 2px outlines on all interactive elements
- **Skip Link**: Appears on focus for keyboard navigation
- **Reduced Motion**: Respects `prefers-reduced-motion: reduce`
- **Semantic Structure**: Preserved heading hierarchy and landmarks

## Responsive Design

- **Mobile First**: Base styles for 320px+
- **Breakpoints**: 480px, 768px, 1024px, 1280px
- **Flexible Grid**: CSS Grid for main layout, Flexbox for components
- **Responsive Images**: Existing `<picture>` elements work seamlessly

## Docker Instructions

### Build the Container
```bash
docker build -t iffyy11/html5-css3-site:lab2 .
```

### Run Locally
```bash
docker run --rm -p 8080:80 iffyy11/html5-css3-site:lab2
```

Then open: http://localhost:8080

### Push to Registry
```bash
docker login
docker push iffyy11/html5-css3-site:lab2

# Tag as latest
docker tag iffyy11/html5-css3-site:lab2 iffyy11/html5-css3-site:latest
docker push iffyy11/html5-css3-site:latest
```

## Performance

- **CSS Size**: ~15KB minified
- **Web Fonts**: System font stack (no external font loading)
- **Images**: Responsive via existing `<picture>` elements
- **Animations**: Subtle, with reduced motion support

## Links

- **Live Site**: https://iffyy11.github.io/firstlabwork/
- **GitHub**: https://github.com/iffyy11/firstlabwork
- **Docker Hub**: https://hub.docker.com/r/iffyy11/html5-css3-site

## Validation

All pages pass:
- W3C HTML Validator (zero errors)
- WCAG AA accessibility guidelines
- Lighthouse Accessibility score ≥95
