# CCB Lab Website

> **Archive:** This repository preserves the [Computational Chemical Biology Lab](https://ccbatiit.github.io) website through August 2026. David Minh is no longer affiliated with Illinois Tech, and the site is not expected to receive further content updates.

The site documents David Minh's former research group at Illinois Tech. It is built with [Jekyll](https://jekyllrb.com/) and served by [GitHub Pages](https://ccbatiit.github.io).

## Editing content

Most updates only require editing data files, no code:

- `_data/team_members.yml` / `_data/alumni.yml` — current members and alumni
- `_data/news.yml` — news items shown on the home page
- `_data/publist.yml` — publications; `_data/publist_highlights.yml` — home-page highlights
- `_pages/*.md` — Research, People, Resources, Visit, and other pages
- `_posts/*.md` — blog posts
- `images/head/` — member/alumni headshots (referenced by the `photo:` field)

## Running locally

```
./run_local_server.sh        # bundle exec jekyll serve
```

Then open http://localhost:4000.

## Credits

Adapted from the [Allan Lab](https://www.allanlab.org/)
([code](https://github.com/allanlab/allanlab), MIT license), and extended with a blog
following [this guide to GitHub Pages](http://jmcglone.com/guides/github-pages/).
See [/aboutwebsite](https://ccbatiit.github.io/aboutwebsite.html) for more.
