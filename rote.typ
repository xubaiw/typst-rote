#let measure-em(c) = {
  let (width,) = measure(c)
  int(width.pt() / 1em.to-absolute().pt())
}

#let cloze(it) = context {
  show underline: u => {
    [\u{ff3f}] * measure-em(u.body)
  }
  it
}

#let mnemonic(it) = context {
  show terms.item: it => {
    strong(it.term)
    linebreak()
    [\u{ff3f}] * measure-em(it.description)
    linebreak()
  }
  it
}

