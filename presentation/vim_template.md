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
    * am from Commit Khong


# Introduction: Topic

# Vim: A Text File Editor

## Installation

It's likely that vim already pre-install in your os, or if it's not:

```bash
    git clone https://github.com/vim/vim.git
    cd vim/src
    make
```

# Why?

* Development workflow
* Mouse is redundent
* Fun way to type syntax
* It speaks the hunan-language when typing
    * More intuitive than Nano :))

# Why: Part 2 - Examples

For example, suppose I was doing some refactoring like remove some paramamters
in a method

In normal, we have to use mouse to highlight the text we want to remove or
set the cursor at the very end of string and keep hitting `delete` button.
-> every action need us to corectly place the cursor a some position, which
sometime it's not.

With Vim, we have the ability to make everything just in place and efficiently
in term of number of button we hit

-> Basically:

* move the cursor into method parentheses.
* hit `d` `i` `)` (or `(`)
    * `d` means delete
    * `i` means inside
    * `)` means, yes `parentheses`

* context switching between
    * running the program in a separate terminal
    * creating yet another terminal (or browser) to interact with the running program
    * possibly pulling up an IDE to show/modify the actual source being run

It gets complicated. I don't like complicated

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
