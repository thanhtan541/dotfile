---
title: 'Vim: How it speak the human language'
author: thanhtan - @thanthan541
date: 2022-05-16
---

# Vim
## Text File Editor
### Presentations

# Introduction: Me

* I
    * am a
        * software developer
        * vim lover

# Introduction: Me

# Vim: A Text File Editor

## Installation

It's likely that vim already pre-install in your os, or if it's not:

```bash
git clone https://github.com/vim/vim.git
cd vim/src
make
```

# Why?

* I always try to 
* I enjoy being close to the code and in the terminal
* Markdown is simple to read and write
* It lets human-readable slides live alongside code
    * Presentations as code!

# Why: Part 2.1 - MDP

Existing tools do similar things. E.g., [mdp](https://github.com/visit1985/mdp)

```file
path: examples/mdp.md
lang: md
```

```terminal15
mdp --invert examples/mdp.md
```

# Why: Part 2.2

[patat](https://github.com/jaspervdj/patat) is another existing tool that
presents markdown slides on the command-line:

```file
path: examples/patat.md
lang: md
```

```terminal15
patat examples/patat.md
```

# Why: Part 3

I was asked on Twitter why I didn't use a browser-based tool:

> Looks nice. Out of curiosity, any reason why you are not using remarkjs
> except it runs in a terminal vs a browser?

Although rendering Markdown can look much nicer using GUIs, I wanted to have
it close to the code and to be able to seamlessly shift between

* presenting concepts
* displaying source code/CLI commands
* interactively running commands

# Why: Part 3 - Examples

For example, suppose I was presenting on Flask and I wanted to show a minimal
flask application running.

It's easy enough to do this from other slide presentation tools, as long as
you're fine with:

* duplicating your source code in
    * the slides themselves
    * the actual code being run

and

* context switching between
    * running the program in a separate terminal
    * creating yet another terminal (or browser) to interact with the running program
    * possibly pulling up an IDE to show/modify the actual source being run

It gets complicated. I don't like complicated

# Why: Part 3 - Flask Example

Source

```terminal7
bash -c "TERM=xterm-256color vim --clean ./source/minimal_flask.py -c 'colors peachpuff | set number'"
```

Running

```terminal6
bash -c "FLASK_APP=./source/minimal_flask.py flask run --reload"
```

Python3 shell

```terminal6
python3
```


# Why: Part 4.1

I also wanted to make it easy to create extensions that can have a first-chance
opportunity to handle specific markdown rendering events.

E.g. below is the code to render code blocks:

```python
@contrib_first
def render_code(token, body, stack, loop):
    """Renders a code block using the Pygments library.

    See :any:`lookatme.tui.SlideRenderer.do_render` for additional argument and
    return value descriptions.
    """
    lang = token.get("lang", "text") or "text"
    res = pygments_render.render_text(token["text"], lang=lang)

    return [
        urwid.Divider(),
        res,
        urwid.Divider(),
    ]
```

# Why: Part 4.2

Below is the code used by file loader to provide an alternative rendering of
the code blocks:

```python
def render_code(token, body, stack, loop):
    """Render the code, ignoring all code blocks except ones with the language
    set to ``file``.
    """
    lang = token["lang"] or ""
    if lang != "file":
        raise IgnoredByContrib

    file_info_data = token["text"]
    file_info = FileSchema().loads(file_info_data)

    # ...

    token["text"] = file_data
    token["lang"] = file_info["lang"]
    raise IgnoredByContrib
```

# Features: Markdown Support: Headings

## Heading 2

### Heading 3

#### Heading 4

# Features: Markdown Support: Lists

* list1
  * list 2
    * item 2
      ```python
      print("Nested code blocks")
      ```
  * list 2
  * list 2
    > nested quote
  * list 2


# Features: Markdown Support: Code Blocks

```python
def this_is_a_function(arg1, arg2):
    print(f"arg1: {arg1}, arg2: {arg2}")

    return arg1 + arg2

if __name__ == "__main__":
    this_is_a_function(sys.argv[1], sys.argv[2])
```


# Features: Markdown Support: Quotes

> This is a quote. This is a quote. This is a quote. This is a quote. This
is a quote. This is a quote. This is a quote. This is a quote. This is a
quote. This is a quote. This is a quote. This is a quote.

# Features: Markdown Support: Inline

All inline markdown features are supported, with footnotes being the only
exception.

|                         markdown | rendered                       |
|---------------------------------:|--------------------------------|
|                       `*italic*` | *italic*                       |
|                       `_italic_` | _italic_                       |
|                       `**bold**` | **bold**                       |
|                       `__bold__` | __bold__                       |
|           `***bold underline***` | ***bold underline***           |
|           `___bold underline___` | ___bold underline___           |
|              `~~strikethrough~~` | ~~strikethrough~~              |
| `[CLICK ME](https://google.com)` | [CLICK ME](https://google.com) |
|                     `` `code` `` | `code`                         |

# Features: Live Reloading

Hi everyone

# Features: Builtin Extensions: Terminal

~~~md
```terminal8
python3
```
~~~

```terminal8
python3
```

# Features: Builtin Extensions: File Loader

~~~md
```file
path: 2019-12-20.md
transform: grep -e "^# " | sort
lines:
  end: 10
```
~~~

```file
path: 2019-12-20.md
lang: md
transform: grep -e "^# " | sort
lines:
  end: 10
```

# Features: Contrib Extensions: QR Codes

```file
path: ./examples/lookatme_qrcode.md
lang: md
```

```qrcode
a
```

# Summary

> Markdown is intended to be as easy-to-read and easy-to-write as is feasible.
>
> Readability, however, is emphasized above all else. A Markdown-formatted
> document should be publishable as-is, as plain text, without looking like
> it’s been marked up with tags or formatting instructions.

[Mark Gruber, Markdown Co-Creator](https://daringfireball.net/projects/markdown/syntax#philosophy)

In keeping with the original Markdown philosophy, here are these slides
rendered in Github: [slides](https://github.com/d0c-s4vage/lookatme/tree/master/presentations/san_diego_python_meetup/2019-12-20.md)

Not everything carries over, but it's still pretty readable.

# FIN

```qrcode-ex
columns:
  - data: https://www.youtube.com/watch?v=oHg5SJYRHA0
    caption: Questions?
```
