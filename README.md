# GraphQL Playground

I'm learning GraphQL. This is my playground. Weee! :D

## Setup

You need [HTTPie](https://httpie.org/) and inotify. The later is Linux specific, so on OS X you will need to [adjust the develop script](https://stackoverflow.com/questions/1515730/is-there-a-command-like-watch-or-inotifywait-on-the-mac#13807906)

On Linux using [Nix](https://nixos.org/nix/) just call `nix-shell` in the main directory of this repo:

```
cd graphql-playground
nix-shell
```

Then put a GitHub personal token in `data/github-authorization`, like that:

```
bearer 13706076a0e9cc63b2694a6d753f56a2332e0955
```

It's not a real token. Get one here: https://github.com/settings/tokens .

## Play!

Try:

```
scripts/develop get-tree.graphql '{"branch": "refs/heads/master"}'
```

It takes two arguments:

  1. Path to the file containing GraphQL query
  2. JSON object with variable bindings (remember to quote it properly)

It should:

  1.  Print the evaluated commands (for debug purposes)
  1.  Print request headers
  1.  Print response headers
  1.  Print response body
  1.  Wait for the query change and repeat

Try changing the code in `get-tree.graphql`. Press ctrl-c to terminate the loop.

Have fun :-)
