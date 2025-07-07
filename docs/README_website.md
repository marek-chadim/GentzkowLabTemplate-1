# Gentzkow Lab Practice Tasks Website

This is a Jekyll website built with the Just the Docs theme. It provides a navigable, well-organized guide for research assistants working with the Gentzkow Lab template.

## Features

- **Clean Navigation**: Sidebar navigation with collapsible sections
- **Search Functionality**: Full-text search across all pages
- **Responsive Design**: Works on desktop and mobile devices
- **Dark/Light Mode**: Toggle between color schemes
- **Anchor Links**: Direct links to specific sections
- **Mobile-Friendly**: Optimized for all screen sizes

## Branch Structure & Deployment

This repository uses a two-branch workflow for editing and deployment:

- **`website` branch**: This is the main branch for editing and development. All source files (Markdown, config, etc.) live here. **Make all your edits and pull requests on this branch.**
- **`gh-pages` branch**: This branch is automatically updated by GitHub Actions. It contains only the built static site (HTML, CSS, JS) and is served by GitHub Pages. **Do not edit this branch manually.**

### How Deployment Works

1. You make changes and push to the `website` branch.
2. GitHub Actions runs a workflow that:
   - Installs Ruby and dependencies
   - Builds the Jekyll site with your configuration and theme
   - Pushes the built site to the `gh-pages` branch
3. GitHub Pages serves the site from the `gh-pages` branch at:
   [https://lucamlouzada.github.io/GentzkowLabTemplateFork/](https://lucamlouzada.github.io/GentzkowLabTemplateFork/)

## Local Development

### Prerequisites

1. **Install Ruby**: Version 3.1 or higher recommended
2. **Install Jekyll and Bundler**:
   ```bash
   gem install jekyll bundler
   ```

### Running Locally

1. **Install dependencies**:
   ```bash
   bundle install
   ```
2. **Start the development server**:
   ```bash
   bundle exec jekyll serve
   ```
3. **View the website**: Open your browser and go to [http://localhost:4000/GentzkowLabTemplateFork/](http://localhost:4000/GentzkowLabTemplateFork/) (if you set `baseurl` in `_config.yml`)

## File Structure

```
├── _config.yml          # Jekyll configuration
├── Gemfile              # Ruby dependencies
├── index.md             # Homepage
├── task1.md             # Task 1 content
├── task2.md             # Task 2 content
├── task3.md             # Task 3 content
├── clusters.md          # Clusters reference
├── setup.md             # Setup instructions
├── setup_instr.md       # Additional setup instructions
├── reference.md         # Reference page
├── tasks.md             # Tasks overview
├── docs/                # Documentation and setup scripts
│   └── README_website.md  # This file
```

## Customization

### Theme Settings
Edit `_config.yml` to customize:
- Site title and description
- Color scheme (light/dark)
- Search functionality
- Footer content
- Navigation structure
- `baseurl` (should be `/GentzkowLabTemplateFork` for GitHub Pages)

### Adding New Pages
1. Create a new `.md` file in the root directory
2. Add front matter with layout and navigation settings:
   ```yaml
   ---
   layout: default
   title: Your Page Title
   parent: Parent Section
   nav_order: 5
   ---
   ```

### Styling
The Just the Docs theme provides extensive customization options. See the [theme documentation](https://just-the-docs.github.io/just-the-docs/docs/configuration/) for more details.

## Troubleshooting

- **Site looks unstyled or broken on GitHub Pages?**
  - Make sure `baseurl` in `_config.yml` is set to `/GentzkowLabTemplateFork`
  - Push your changes to the `website` branch and wait for the GitHub Actions workflow to finish
  - Check the "Actions" tab for build errors
- **Bundle install fails**: Make sure you have the correct Ruby version
- **Jekyll serve doesn't work**: Check that all dependencies are installed
- **Pages not showing**: Verify the front matter is correct
- **Navigation issues**: Check the `nav_order` and `parent` settings

### Getting Help
- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Just the Docs Theme](https://just-the-docs.github.io/just-the-docs/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)

## Contributing

To contribute to this website:

1. Clone the repository and check out the `website` branch
2. Create a feature branch from `website`
3. Make your changes
4. Test locally with `bundle exec jekyll serve`
5. Push your branch and submit a pull request to `website`

## License

This website is part of the Gentzkow Lab template and follows the same licensing terms. 