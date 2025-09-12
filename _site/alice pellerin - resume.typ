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
		Experienced Swift programmer with a specialty in API design and framework-level work. Detail-oriented and diligent, well-versed in working with teams. Quick to acquire new skills, and always looking for new interesting problems to work on!
	]
	
	= Work Experience
	
	== Freelance Application Development
	Since July 2025 — Boston, Massachusetts
	- Building an iOS application for patient check-in
	- Iterated upon design through client feedback
	
	== Apple
	Three months — Cupertino, California
	- Intern on the SwiftUI team
	- Developed and internally showcased an independent project involving widgets
	
	== Stokan Jaggers & Associates
	Eight months — Katy, Texas
	- Worked with others in a HIPAA-compliant office environment
	- Organized and prepared documents in a standard format
	
	== Whataburger \#392
	Two months — Katy, Texas
	- Worked in a team to prepare and deliver food to customers
	
	= Projects
	
	== carbonizer
	#link("https://www.github.com/simonomi/carbonizer")[
		#label("images/github.svg")[simonomi/carbonizer]
	]
	// paragraph's line spacing
	#block(spacing: 0.65em)[
		- All-in-one ROM-hacking tool for the Nintendo DS
		- Macro library for binary conversion
	]
	#languageLabel[Swift]
	#languageLabel[Swift macros]
	#languageLabel[Foundation]
	#languageLabel[NDS]
][ // column 2
	= Projects (Continued)
	
	== Metal Ray Tracer
	#link("https://www.github.com/simonomi/MetalRayTracing")[
		#label("images/github.svg")[simonomi/MetalRayTracing]
	]
	// paragraph's line spacing
	#block(spacing: 0.65em)[
		- Ray tracing engine with custom meshes and reflections
		- Result builder API for defining scenes
	]
	#languageLabel[Swift]
	#languageLabel[Metal]
	#languageLabel[MSL]
	#languageLabel[C++]
	#languageLabel[Python]
	
	== Personal Website
	#link("https://www.github.com/simonomi/simonomi.github.io")[
		#label("images/github.svg")[simonomi/simonomi.github.io]
	]
	#linebreak()
	#link("https://simonomi.dev")[
		#label("images/globe.svg")[simonomi.dev]
	]
	// paragraph's line spacing
	#block(spacing: 0.65em)[
		- Lightweight and mobile-friendly website
	]
	#languageLabel[HTML]
	#languageLabel[CSS]
	#languageLabel[JavaScript]
	#languageLabel[DNS]
	#languageLabel[git]
	
	== FF Tech Wiki
	#link("https://www.github.com/simonomi/fftechwiki")[
		#label("images/github.svg")[simonomi/fftechwiki]
	]
	#linebreak()
	#link("https://simonomi.dev/fftechwiki")[
		#label("images/globe.svg")[simonomi.dev/fftechwiki]
	]
	// paragraph's line spacing
	#block(spacing: 0.65em)[
		- Technical documentation for modding the video game Fossil Fighters
	]
	#languageLabel[Jekyll]
	#languageLabel[Liquid]
	#languageLabel[HTML]
	#languageLabel[CSS]
	
	= Skills
	
	== Languages
	#[
		#set par(spacing: 0.5em)
		
		#languageLabel[Swift] 4 years, expert // May 2021
		
		#languageLabel[Rust] 3 years, advanced // September 2022
		
		#languageLabel[Python] 9 years, intermediate // August 2016
	]
	
	#languageLabel[Assembly]
	#languageLabel[C]
	#languageLabel[C++]
	#languageLabel[CSS]
	#languageLabel[HTML]
	#languageLabel[JavaScript]
	#languageLabel[LaTeX]
	#languageLabel[TypeScript]
	#languageLabel[Typst]
	
	== Tools/Systems
	
	#languageLabel[git]
	#languageLabel[Linux]
	#languageLabel[macOS]
	#languageLabel[Metal]
	#languageLabel[Postgres]
	#languageLabel[SwiftUI]
	#languageLabel[Vim]
	#languageLabel[Windows]
	#languageLabel[Xcode]
]

