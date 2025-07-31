#set text(font: "lato")

// TODO: if typst ever adds custom column proportions,
// use those instead of a grid
#set page(paper: "us-letter", margin: 1.5cm)

#show heading: it => {
	if it.level == 1 {
		block[
			#text(weight: "regular", size: 1.25em, it.body)
			#box(line(length: 100%, stroke: 2pt))
		]
	} else {
		it
	}
}

#let label(imagePath, text) = {
	box(
		align(
			horizon,
			stack(
				dir: ltr,
				image(imagePath, height: 1em),
				[~#text]
			)
		)
	)
}

#let languageLabel(text) = {
	[
		#box(baseline: 5pt, stroke: 1pt + gray, radius: 5pt, inset: 5pt, text)
		#h(0.5em, weak: true)
	]
}

#grid(
	columns: (4fr, 3fr),
	gutter: 3%
)[
	#align(center)[
		#text(size: 2.5em)[*alice pellerin*] she/they
		
		#set par(spacing: 0.5em)
		
		#link("https://simonomi.dev")[
			#label("images/globe.svg")[simonomi.dev]
		]
		
		#link("mailto:thealicepellerin@gmail.com")[
			#text(size: 1.2em, top-edge: -0.2em)[*\@*]
			thealicepellerin\@gmail.com
		]
		
		#link("https://www.github.com/simonomi")[
			#label("images/github.svg")[simonomi]
		]
		#h(1em)
		#link("https://www.linkedin.com/in/simonomi")[
			#label("images/linkedin.svg")[simonomi]
		]
	]
	
	#par(first-line-indent: 1em)[
		Experienced Swift programmer, with a specialty in API design and framework-level work. Detail-oriented and diligent, well-versed in working with teams. Quick to acquire new skills, and always looking for new interesting problems to work on!
	]
	
	= Work Experience
	
	== Apple
	May 2024 | August 2024 — Cupertino, California
	- Intern on the SwiftUI team
	- Developed and internally showcased an independent project involving widgets
	
	== Stokan Jaggers & Associates
	Nov. 2020 | July 2021 — Katy, Texas
	- Worked with others in a HIPAA-compliant office environment
	- Organized and prepared documents in a standard format
	
	== Whataburger \#392
	Sept. 2020 | Nov. 2020 — Katy, Texas
	- Worked in a team to prepare and deliver food to customers
	
	= Projects
	
	== carbonizer
	#link("https://www.github.com/simonomi/carbonizer")[
		#label("images/github.svg")[simonomi/carbonizer]
	]
	#linebreak()
	Designed and implemented an easy-to-use DS ROM-hacking tool.
	#linebreak()
	#languageLabel[Swift]
	#languageLabel[Swift macros]
	#languageLabel[Foundation]
	#languageLabel[NDS]
	
	== Metal Ray Tracer
	#link("https://www.github.com/simonomi/MetalRayTracing")[
		#label("images/github.svg")[simonomi/MetalRayTracing]
	]
	#linebreak()
	Created a custom ray tracing engine from scratch using Metal.
	#linebreak()
	#languageLabel[Swift]
	#languageLabel[Metal]
	#languageLabel[MSL]
	#languageLabel[C++]
	#languageLabel[Python]
][ // column 2
	= Projects (Continued)
	
	#block(
		align(
			bottom,
			stack(
				dir: ltr,
				[== mage~],
				text(size: 0.75em)[(unreleased)]
			)
		)
	)
	Designed, developed, and iterated upon a Trakt client for iOS.
	#linebreak()
	#languageLabel[Swift]
	#languageLabel[SwiftUI]
	#languageLabel[REST]
	#languageLabel[JSON]
	#languageLabel[Trakt]
	#languageLabel[Xcode]
	
	== Personal Website
	#link("https://www.github.com/simonomi/simonomi.github.io")[
		#label("images/github.svg")[simonomi/simonomi.github.io]
	]
	#linebreak()
	#link("https://simonomi.dev")[
		#label("images/globe.svg")[simonomi.dev]
	]
	#linebreak()
	Designed and built a mobile-friendly personal website.
	#linebreak()
	#languageLabel[HTML]
	#languageLabel[CSS]
	#languageLabel[JavaScript]
	#languageLabel[DNS]
	#languageLabel[git]
	
	= Skills
	
	== Languages
	#[
		#set par(spacing: 0.5em)
		
		#languageLabel[Swift] 4 years (\~60,000 lines) // May 2021
		
		#languageLabel[Python] 8 years (\~15,000 lines) // August 2016
		
		#languageLabel[Java] 6 years (\~10,000 lines) // August 2018
		
		#languageLabel[Rust] 2 years (\~1,500 lines) // September 2022
	]
	
	#languageLabel[ARM assembly]
	#languageLabel[Bash]
	#languageLabel[C]
	#languageLabel[C++]
	#languageLabel[CSS]
	#languageLabel[GDScript]
	#languageLabel[GLSL]
	#languageLabel[HTML]
	#languageLabel[JavaScript]
	#languageLabel[LaTeX]
	#languageLabel[Rocq]
	#languageLabel[TypeScript]
	#languageLabel[Typst]
	
	== APIs/Frameworks
	
	#languageLabel[Discord]
	#languageLabel[Heroku]
	#languageLabel[Metal]
	#languageLabel[Obsidian]
	#languageLabel[Postgres]
	#languageLabel[REST]
	#languageLabel[Spotify]
	#languageLabel[SwiftSyntax]
	#languageLabel[SwiftUI]
	#languageLabel[tkinter]
	#languageLabel[Trakt]
	#languageLabel[Vapor]
	#languageLabel[VLC]
	
	== Tools/Environments
	
	#languageLabel[Bash]
	#languageLabel[git]
	#languageLabel[Godot]
	#languageLabel[Linux]
	#languageLabel[macOS]
	#languageLabel[SwiftPM]
	#languageLabel[Vim]
	#languageLabel[Windows]
	#languageLabel[Xcode]
]

