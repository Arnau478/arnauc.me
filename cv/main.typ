#let fa-brands(codepoint) = text(font: "Font Awesome 6 Brands", codepoint)
#let fa-regular(codepoint) = text(font: "Font Awesome 6 Free Solid", codepoint)
#let fa-github = fa-brands("\u{f09b}")
#let fa-link = fa-regular("\u{f0c1}")

#show heading: it => pad(top: 0.5em)[#it.body]

#align(center, text(size: 2em, weight: "bold")[Arnau Camprubí Tormos])

#h(1fr)
#link("https://arnauc.me")[#fa-link arnauc.me]
#h(1fr)
#link("https://github.com/Arnau478")[#fa-github Arnau478]
#h(1fr)

= Skills
- *Zig*: years of experience, even contributed to the compiler itself
- *C* and *C++*: used extensively for years
- *Low-level*: plenty of experience with the inner workings of x86 and kernel design
- *HTML* and *CSS*: experience with raw HTML and CSS
- *Svelte.js* and *Svelte-kit*: recently learned it, done a small project
- *Others*: used many other languages (e.g. JavaScript, TypeScript, Python, Java)

= Studies
- Studying computer science at UPV (https://upv.es) #h(1fr) 2024 - now

= Work experience
- Security alarm company #h(1fr) summer of 2023

= Languages

#table(
  columns: 2,
  stroke: none,
  [*Valencian*], [native],
  [*Spanish*], [native],
  [*English*], [C1 level],
)

= Personal projects
My main personal project is _hevi_, a *hex viewer* packed with features that follows first principles.

#h(2em) https://github.com/Arnau478/hevi

I've also experimented with *kernel* programming, by making a pretty complete microkernel in Zig.

#h(2em) https://github.com/os-chain/old-chain (archived project)
