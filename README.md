## LaTeX classes for notes and homework

By May Lynn Forssen

The file `notes.cls` is a LaTeX class for taking notes. The file 
`sample_notes.tex` is a sample LaTeX file made using the class.

The file `homework.cls` is a class for doing problem set style homeworks.
The file `sample_notes.tex` is an example of the format of such a homework.

---
## Notes
### Usage

In the preamble, you can define the following:

    \name{Your Name}
    \subject{The subject of your notes}
    \date{the date}

which will make a header on every page.

The `important` environment will highlight important notes in yellow, making 
them stand out from the rest, like so:

    \begin{important}
        Important stuff...
    \end{important}

The `thm` environment will place a colored box around your theorems, making them
easy to spot. Make a theorem with `\begin{thm}{name of theorem} ... \end{thm}`.

The `proof` environment will place a colored box (of a different color from the
theorems) around your proof, and a square symbol at the end of your proof. 
Make a proof with `\begin{proof} ... \end{proof}`.

The `definition` environment will make the defined word colored and bold. The 
command `key{word}` does the same. Make a definition with 
`\begin{definition}{word} ... \end{definition}`

The colors associated with any of these environments (as well as the header) can
be redefined in the TeX file with

    \colorlet{headercolor}{new color}
    \colorlet{thmcolor}{new color}
    \colorlet{proofcolor}{new color}
    \colorlet{keywordcolor}{new color}

in the preamble.

---
## Homework
### Usage

The homework class has several options. You can use `notitle` if you do
not want the first page to have a large title (different from the other
pages). Use `unboxed` if you do not want the problem statements to be
boxed. Use `slabel` if you want to label each solution as "Solution:" 
(good to use with `unboxed` so you can tell where the solution starts).

In the preamble, you can define the following:

    \name{Your Name}
    \course{The course name}
    \assignment{The homework name or number}
    \date{the date}

which will make a header on every page.

At the start of the document, if you want a title on the first page, type
 
    \maketitle

to get the heading on the first page.

The `problem` environment draw a box around a problem statement. Make a problem
statement with `\begin{problem}[problem number/name] ... \end{problem}

The `solution` environment is where you place your solutions to problems.
Make a solution with `\begin{solution} ... \end{solution}`.

The `proof` environment will place a square symbol at the end of your proof. 
Make a proof with `\begin{proof} ... \end{proof}`

---
## Braced
### Usage

The `braced` package will place large braces/parentheses/brackets around 
chunks of text for you. To use, write

    \braced{left side}{ text }{right side}
    
where `left side` and `right side` would be something like `(` and `)` or `\{` and `.`,
respectively.
