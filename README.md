# ediq-npm

### Abstract

> Command line XPath for EDI files

### Install 

```bash
npm install --global ediq-cli
```

### Usage

```js
ediq [OPTIONS]... [EDIFILE]

Options
--epath: "EPath" expression (same as XPath) to use for selection of nodes in the EDI input
--format: write each segment to the output on a separate line (optional)
--schema-file: path to a schema file to use when parsing the EDI input

## Licesne 

Apache-2.0
