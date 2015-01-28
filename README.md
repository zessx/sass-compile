# sass-compile
Shell script to easily compile Sass with a few default options.

## How to use it?
`sass-compile` comes with a few default options:

- `--stop-on-error`
- `--no-cache`
- `--sourcemap=none`

You simply have to pass your input and your output files to `sass-compile`, with an optional debug flag:

    $ sass-compile main.scss main.css
    $ sass-compile main.scss main.css -d
    $ sass-compile main.scss main.css --debug

`sass-compile` will generate both a `nested` and a `compressed` version of your file (with a `.min.css` extension for the second one).

## Notes
> Windows users: be sure your shell script use Unix line endings
