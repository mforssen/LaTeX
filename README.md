## LaTeX classes for notes and homework

By May Lynn Forssen

The file

    notes.cls

is a LaTeX class for taking notes.

## Usage

In the preamble, you can define the following:

    \name{Your Name}
    \subject{The subject of your notes}
    \date{the date}

which will make a header on every page.

The "important" environment will highlight important notes in yellow, making 
them stand out from the rest, like so:

    \begin{important}
        Important stuff...
    \end{important}

The "thm" environment will place a colored box around your theorems, making them
easy to spot. You can make a theorem as follows:

    \begin{thm}{name of theorem}
        body of theorem
    \end{thm}

The "proof" environment will place a colored box (of a different color from the
theorems) around your proof. You can make a proof as follows:

    \begin{proof}
        body of proof
    \end{proof}
