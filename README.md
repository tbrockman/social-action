# [GitHub] Social Action

## Usage

1. Store the following in `.github/social.yml`

```yml
api_version: v1/social # versioned configuration API

renderer: jekyll # this is the only format which is supported
                 # but perhaps one day there might be more
                                 
content: full # what type of content to display for the post 
              # 'full' will display entire blog post in the GitHub issue
              # there are currently no other modes

base_url: 'https://your-website-here.com' # used for resolving relative links

paths:       # list of Glob patterns which will 
  - _posts/* # match blog posts to create issues from
```

2. Store the following in `.github/workflows/push.yml`

```yml
on:
  push:
    branches: [master]

jobs:
  create_issues:
    runs-on: ubuntu-latest
    name: create-issue-steps
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Create issues
        uses: tbrockman/social-action@1.0.0
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

3. Include the following for any pages you'd like to link to GitHub issues

```html
<script src="https://theo.lol/client.js"
        repo="your-github-repo-here"
        issue-term="issue-title-here"
        theme="github-light"
        crossorigin="anonymous"
        async>
```

4. Done