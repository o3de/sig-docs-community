Links must be formatted as `[someText](link)`.

Links to GitHub issues
Find: `(?<!\[.*\]\()(https:\/\/github.com\/o3de\/.*\/(?:issues|pull)\/)([0-9]*)[\)]?`
Replace: `[#$2]($1$2)`

General format for all links
Find: `(?<!\[.*\]\()https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)`
Replace: 