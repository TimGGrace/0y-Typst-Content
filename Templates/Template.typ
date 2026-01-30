#import "@preview/touying:0.5.5": *
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#import "@preview/pinit:0.2.2": *
#import "@preview/cetz:0.4.2": canvas, draw, tree


#let get-aspect-ratio = () => {
  if "aspect-ratio" not in sys.inputs {
    return "16-9"
  }

  return sys.inputs.at("aspect-ratio")
}

#let baseTextSize = 24pt

/// Default slide function for the presentation.
///
/// - config (dictionary): The configuration of the slide. You can use `config-xxx` to set the configuration of the slide. For more several configurations, you can use `utils.merge-dicts` to merge them.
///
/// - repeat (int, auto): The number of subslides. Default is `auto`, which means touying will automatically calculate the number of subslides.
///
////   The `repeat` argument is necessary when you use `#slide(repeat: 3, self => [ .. ])` style code to create a slide. The callback-style `uncover` and `only` cannot be detected by touying automatically.
///
/// - setting (function): The setting of the slide. You can use it to add some set/show rules for the slide.
///
/// - composer (function): The composer of the slide. You can use it to set the layout of the slide.
///
///   For example, `#slide(composer: (1fr, 2fr, 1fr))[A][B][C]` to split the slide into three parts. The first and the last parts will take 1/4 of the slide, and the second part will take 1/2 of the slide.
///
///   If you pass a non-function value like `(1fr, 2fr, 1fr)`, it will be assumed to be the first argument of the `components.side-by-side` function.
///
///   The `components.side-by-side` function is a simple wrapper of the `grid` function. It means you can use the `grid.cell(colspan: 2, ..)` to make the cell take 2 columns.
///
///   For example, `#slide(composer: 2)[A][B][#grid.cell(colspan: 2)[Footer]]` will make the `Footer` cell take 2 columns.
///
///   If you want to customize the composer, you can pass a function to the `composer` argument. The function should receive the contents of the slide and return the content of the slide, like `#slide(composer: grid.with(columns: 2))[A][B]`.
///
/// - bodies (array): The contents of the slide. You can call the `slide` function with syntax like `#slide[A][B][C]` to create a slide.
#let slide(
  config: (:),
  repeat: auto,
  setting: body => body,
  composer: auto,
  ..bodies,
) = touying-slide-wrapper(self => {
  let deco-format(it) = text(size: .6em, fill: gray, it)
  let header(self) = deco-format(
    components.left-and-right(
      utils.call-or-display(self, self.store.header),
      utils.call-or-display(self, self.store.header-right),
    ),
  )
  let footer(self) = {
    v(.5em)
    deco-format(
      components.left-and-right(
        utils.call-or-display(self, self.store.footer),
        utils.call-or-display(self, self.store.footer-right),
      ),
    )
  }
  let self = utils.merge-dicts(
    self,
    config-page(
      header: header,
      footer: footer,
    ),
    config-common(subslide-preamble: self.store.subslide-preamble),
  )
  touying-slide(self: self, config: config, repeat: repeat, setting: setting, composer: composer, ..bodies)
})


/// Centered slide for the presentation.
/// 
/// - config (dictionary): The configuration of the slide. You can use `config-xxx` to set the configuration of the slide. For more several configurations, you can use `utils.merge-dicts` to merge them.
#let centered-slide(config: (:), ..args) = touying-slide-wrapper(self => {
  touying-slide(self: self, ..args.named(), config: config, align(center + horizon, args.pos().sum(default: none)))
})


/// Title slide for the presentation.
///
/// Example: `#title-slide[Hello, World!]`
/// 
/// - config (dictionary): The configuration of the slide. You can use `config-xxx` to set the configuration of the slide. For more several configurations, you can use `utils.merge-dicts` to merge them.
#let title-slide(config: (:), body) = centered-slide(
  config: utils.merge-dicts(config, config-common(freeze-slide-counter: true)),
  body,
)


/// New section slide for the presentation. You can update it by updating the `new-section-slide-fn` argument for `config-common` function.
/// 
/// - config (dictionary): The configuration of the slide. You can use `config-xxx` to set the configuration of the slide. For more several configurations, you can use `utils.merge-dicts` to merge them.
#let new-section-slide(config: (:), body) = centered-slide(config: config, [
  #text(1.2em, weight: "bold", utils.display-current-heading(level: 1))

  #body
])


/// Focus on some content.
///
/// Example: `#focus-slide[Wake up!]`
/// 
/// - config (dictionary): The configuration of the slide. You can use `config-xxx` to set the configuration of the slide. For more several configurations, you can use `utils.merge-dicts` to merge them.
/// 
/// - background (color, auto): The background color of the slide. Default is `auto`, which means the primary color of the slides.
/// 
/// - foreground (color): The foreground color of the slide. Default is `white`.
#let focus-slide(config: (:), background: auto, foreground: white, body) = touying-slide-wrapper(self => {
  self = utils.merge-dicts(
    self,
    config-common(freeze-slide-counter: true),
    config-page(fill: if background == auto {
      self.colors.primary
    } else {
      background
    }),
  )
  set text(fill: foreground, size: 1.5em)
  touying-slide(self: self, config: config, align(center + horizon, body))
})


/// Touying simple theme.
///
/// Example:
///
/// ```typst
/// #show: simple-theme.with(aspect-ratio: "16-9", config-colors(primary: blue))`
/// ```
///
/// The default colors:
///
/// ```typst
/// config-colors(
///   neutral-light: gray,
///   neutral-lightest: rgb("#ffffff"),
///   neutral-darkest: rgb("#000000"),
///   primary: aqua.darken(50%),
/// )
/// ```
///
/// - aspect-ratio (string): The aspect ratio of the slides. Default is `16-9`.
/// - header (function): The header of the slides. Default is `self => utils.display-current-heading(setting: utils.fit-to-width.with(grow: false, 100%), depth: self.slide-level)`.
/// - header-right (content): The right part of the header. Default is `self.info.logo`.
/// - footer (content): The footer of the slides. Default is `none`.
/// - footer-right (content): The right part of the footer. Default is `context utils.slide-counter.display() + " / " + utils.last-slide-number`.
/// - primary (color): The primary color of the slides. Default is `aqua.darken(50%)`.
/// - subslide-preamble (content): The preamble of the subslides. Default is `block(below: 1.5em, text(1.2em, weight: "bold", utils.display-current-heading(level: 2)))`.
#let simple-theme(
  aspect-ratio: get-aspect-ratio(),
  header: self => utils.display-current-heading(
    setting: utils.fit-to-width.with(grow: false, 100%),
    level: 1,
    depth: self.slide-level,
  ),
  header-right: self => self.info.logo,
  footer: none,
  footer-right: context utils.slide-counter.display() + " / " + utils.last-slide-number,
  primary: teal.darken(50%),
  subslide-preamble: block(
    below: 1.5em,
    text(1.2em, weight: "bold", utils.display-current-heading(level: 2)),
  ),
  ..args,
  body,
) = {
  let base-text-size = baseTextSize
  if aspect-ratio == "4-3" {
    base-text-size = 25pt
  }
  let list-counter = counter("list")
  show list: it => {
    let textSize = text.size
    list-counter.step()

    context {
      set text(textSize - 2pt) if list-counter.get().first() == 2
      set text(textSize - 4pt) if list-counter.get().first() >= 3
      it
    }
    list-counter.update(i => i - 1)
  }
  show: codly-init.with()
  show math.equation: set text(font: "New Computer Modern Math")
  codly(languages: codly-languages)
  show raw: it => {
    show regex("pin\d"): it => pin(eval(it.text.slice(3)))
    it
  }
  set text(lang: "en", region: "GB")
  codly-disable()
  show: touying-slides.with(
    config-page(
      paper: "presentation-" + aspect-ratio,
      margin: 2em,
      footer-descent: 0em,
    ),
    config-common(
      slide-fn: slide,
      new-section-slide-fn: new-section-slide,
      zero-margin-header: false,
      zero-margin-footer: false,
      handout: sys.inputs.at("handout", default: "false") == "true",
      enable-pdfpc: true
    ),
    config-methods(
      init: (self: none, body) => {
        set text(size: base-text-size, font: "Aptos")
        show footnote.entry: set text(size: .6em)
        show heading.where(level: 1): set text(1.4em)
        set page(fill: rgb("#dae3f3"))

        body
      },
      alert: utils.alert-with-primary-color,
    ),
    config-colors(
      neutral-light: gray,
      neutral-lightest: rgb("#ffffff"),
      neutral-darkest: rgb("#000000"),
      primary: navy,
    ),
    // save the variables for later use
    config-store(
      header: header,
      header-right: header-right,
      footer: footer,
      footer-right: footer-right,
      subslide-preamble: subslide-preamble,
    ),
    ..args,
  )
  
  body
}

#import "utils.typ": *

#let MWBQ(title: "Practice", ..questions) = {
  
  return for q in questions.pos() {
    [
      == #title
      #mwb
      #q.at(0) \
      #pause
      #redText(q.at(1))
    ]
  }
  return for i in range(questions.len()) {[
      == #title
      #mwb
      #questions.at(i).at(0) \
      #pause
      #redText(questions.at(i).at(1))
    ]
  }
}

#let weeklyReview(title:"RXXX - Need Name",time:15) = [
  == Weekly Review \ #title
  #only(1)[#Comp
  Complete the weekly review, you'll have \ #time minutes.]
  #only(2)[ #GClass
    Mark that review! \ \ Once you've done it:
  #enum(
    [Submit the score into the Google Form.],
    [Update your weekly review tracker with *targets*.]
  )]
]
#let brainscape(title:"B X",time:30) = [
  == Brainscape Review \ #title
  #only(1)[ #notes
    Complete the Brainscape review, you'll have \ #time minutes.]
  #only(2)[ #GClass
    Mark that review! (mark scheme on GClass)\ \ Once you've done it:
  #enum(
    [Submit the score into the Google Form.],
    [Update your weekly review tracker with *targets*.]
  )]
]