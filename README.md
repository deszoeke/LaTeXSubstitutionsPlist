# LaTeXSubstitutionsPlist
Replace LaTeX math escape strings with unicode characters in Mac OS by building Text Subsitutions.plist. 

This takes more than 2400 LaTeX math escape strings (e.g. `\alpha`) from a built-in dictionary in the Julia language and formats them as the Mac OS file "Text Substitutions.plist." In some native apps (e.g. Mail, Safari), Mac OS replaces replaces these strings as it would shortcut phrases or emoticons. 

# Instructions

1. Open `System Preferences > Keyboard > Text` pane.
2. Save your existing text substitutions by selecting them from the list (select all) in the pane and dragging them to any folder or the desktop. This will create `Text Substitutions.plist`.
3. Navigate Finder to the working directory and drag `LaText Substitutions.plist` with LaTeX symbols into the list.
4. Check Correct spelling automatically.

If you need to generate `LaText Substitutions.plist` yourself:
1. Get a recent version of [Julia](https://github.com/JuliaLang/julia). Downloadable at https://julialang.org/downloads/.
2. Run `your/path/to/julia latex_symbols_to_plist.jl` in a working directory to generate `LaText Substitutions.plist`.
