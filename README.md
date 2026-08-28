# Redmine Dark Theme

A native Redmine theme maintained by Corporate Finance Institute. It is based
on Frédéric Aoustin's
[redmine_dark](https://github.com/fraoustin/redmine_dark) plugin and retains
its inversion-based dark styling without the Rails plugin, runtime hook,
JavaScript toggle, or cookie code.

Dark inherits the installed CFI theme before applying its color layer. This
preserves CFI's smaller fonts, compact content and issue padding, tighter
headings, and attachment sizing. An installed native theme with the directory
name `cfi` is therefore required.

The repository root is the installable theme directory. The only runtime file
is `stylesheets/application.css`.

## Install

Copy or clone this repository as `dark` under Redmine's `themes` directory:

```text
REDMINE_ROOT/
  themes/
    dark/
      stylesheets/
        application.css
```

Install the CFI theme alongside it as `themes/cfi`. Dark imports the CFI
theme's `application.css` asset; it does not duplicate or fork those corporate
density rules.

For the official Docker image, mount or copy it to
`/usr/src/redmine/themes/dark`. Restart Redmine so it rescans themes, then
select **Dark** in **Administration → Settings → Display → Theme**. If the
deployment uses precompiled assets, run `assets:precompile` before restarting.

Unlike the original plugin, this theme is deliberately global when selected.
It does not inject a “dark mode” link or persist a per-browser cookie.

## Screenshots

Default Redmine:

![Dark Redmine](screenshots/darkmode1.png "Dark Redmine")

RTMaterial with redmine_indicator:

![Dark RTMaterial](screenshots/darkmode2.png "Dark RTMaterial")

## Provenance and license

The conversion is based on upstream `main` commit
`8026957ae906a6299e2aaecb26c1b8619580881c`. See `NOTICE.md` for the precise
changes. The original GNU GPL v2 license is retained unchanged.

Original author: Frédéric Aoustin. Main upstream contributor: Ilia Lenskii.
Corporate Finance Institute contributors maintain the native-theme fork.
