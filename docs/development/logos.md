# Logos
> How to add to or update logos in the project.

## Usage

Set the YAML frontmatter on a page e.g.

```yaml
---
title: Vue
logo: vue-dot-js
---
```

Then this theme will find the appropriate includes file and use it. 

It will give an error a file is missing or referenced incorrectly, so you can find out at build time if you need to change your logo parameter or need to add a new logo file to this theme so you can use it (see below).

## Source

See the [simpleicons.org](https://simpleicons.org/) site or the [simple-icons](https://github.com/simple-icons/simple-icons) GitHub repo.

## How it works

The SVG icons or logos for this theme are stored in the [\_includes/logos](/_includes/logos/) directory as includes files. This is easier to manage than assets, as it allows the content of the file to be inserted _inline_ in the HTML, rather than referencing a path to an asset which then has to be fetched on the frontend.


## How to update logos in this theme

The list of supported logos in this project is maintained in [bin/install_logos.sh](/bin/install_logos.sh). More logos are available, but that list covers the logos that I want to support. The names of the logos are kept unchanged, to match the Simple Icons site. e.g. `vue-dot-js` or `gnu-bash`.

1. Run the script. That will also _update_ an existing logos in version control to match the latest content in the logo provider.
    ```sh
    $ make logos
    ```
1. Commit any changes and push your commits. When you rebuild a site that uses this theme, you'll get the updates.

If you want to add a **new logo** from the SimpleIcons repo, add the name to the `LOGOS` variable in the script in [bin](/bin/). Then run the command above.
