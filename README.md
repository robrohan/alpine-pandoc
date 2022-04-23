# alpine-pandoc

This is the source code which builds a Docker container comprised of Alpine Linux, and [Pandoc].
It is intended to provide an environment which is optimized for generating documentation.

## Building the Container

```bash
make
```

## Using the Container

Generate a PDF file from markdown with bibtex data in the front matter:

```bash
docker run --rm -it \
    -v $(shell pwd):/root/workspace \
    robrohan/pandoc --pdf-engine=xelatex -s -t pdf \
    --citeproc \
    -f markdown ./manual.md \
    -o ./manual.pdf
```
