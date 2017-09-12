#=
Make a table of latex substitution shortcuts for characters in ./LaText Substitutions.plist.
This can be dragged into the System Preferences > Keyboard > Text pane on Mac OS.
Uses julia latex symbols definitions in dictionary latex_symbols.jl

Simon de Szoeke
adapted from  UnicodeCompletion/latex_symbols.jl 
=#

include(joinpath(JULIA_HOME, "..", "share", "julia", "base", "latex_symbols.jl"));

φ = open("LaText Substitutions.plist", "w") # that's \varphi

# plist header copied from dragging Text Shortcuts out of System Preferences > Keyboard > Text pane
println(φ, """<?xml version="1.0" encoding="UTF-8"?>""")
println(φ, """<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">""")
println(φ, """<plist version="1.0">""")
println(φ, """<array>""")
# write each plist dictionary entry
for (ω, (α, β)) in enumerate(latex_symbols)
    println(φ, "   <dict>") 
    println(φ, "      <key>phrase</key>")
    println(φ, "      <string>$β</string>")
    println(φ, "      <key>shortcut</key>")
    println(φ, "      <string>$α</string>")
    println(φ, "   </dict>")
end
# plist footer
println(φ, """</array>""")
println(φ, """</plist>""")

close(φ)
