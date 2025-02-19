#import "../utils.typ": titlepage
#import "@preview/codelst:2.0.2": sourcecode

#let font = ("IPAexGothic", "IPAexMincho")
#let title = "Nixはいいぞおじさん「Nixはいいぞ」"
#let lang = "ja"
#let paper = "jis-b6"
#let author = "haruki7049 <tontonkirikiri@gmail.com>"

#set page(
  paper: paper,
  footer: context [
    #set align(center)
    #text(font: font, lang: lang, size: 1em)[
      #counter(page).display("1")
    ]
  ],
)
#set text(font: font, size: 0.75em, lang: lang)
#set document(title: title, author: author)
#set heading(numbering: "1.")
#set quote(block: true)

#show raw.where(block: false): box.with(
  fill: luma(240),
  inset: (x: 2pt, y: 0pt),
  outset: (y: 1.5pt),
  radius: 2pt
)
#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 5pt,
  radius: 4pt
)

#titlepage(title: title, paper: paper, font: font, lang: lang, author: author)

#outline()
#pagebreak()

= おじさん登場

公園のベンチに座っていると、その人は私に呟き始めた。いや、呟くにしては声量が大きかったから、やはり私に話しかけていたのだろうか。

「Nixはいいぞ」\
「…？」

この人は急に何を言っているのだろうか。というかNixってなに…？

そんな風に思っていると、さらにその人は呟き始めた。

「Nixは開発環境の再現性がすばらしいんだ」「それにNix式もとても良い」「関数型の知識を十分に使えるからなぁ」

…開発環境の再現性？

最近、私はプログラミングにハマっている。論理に従って実際にパソコンで使えるものが作られるのが、とても快感だったのだ。

そんな最近の私だったが、プログラミングをしていくに連れて、個人的に不満な点が一つ出来た。それは、プログラミングができるようなパソコン環境を作る道程が、かなり長いと感じるようになったことだ。そしてそれらの作業全ては基本的に時間を多く取り、加えて殆どの作業が複雑なのだ。

これらの作業は、当たり前だが全て手作業ですることだ。そんな「開発環境の構築作業」が「再現性がある事象」に、つまり機械に任せられるということ…？

考えが至った瞬間、私はすぐにベンチを立ち、そのあからさまに怪しいおじさんの手を掴んでいた。

「そのNix、教えて！！」\
「…ぇ」

= 気弱なおじさんによるNixの概要