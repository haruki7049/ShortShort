#import "../utils.typ": titlepage
#import "@preview/codelst:2.0.2": sourcecode

#let font = "IPAexMincho"
#let title = "Nix flakesのすすめ"
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

#titlepage(title: title, paper: paper, font: font, lang: lang, author: author)

この本を手に取ってくださりありがとうございます。この本は、`Nix flakes`をいかに活用するかを例示する本となっています。不明点があった場合は私のメールアドレス、`tontonkirikiri@gmail.com`に気軽に連絡してください。この本はGitHubにて管理されているため、リポジトリにイシューを立てていただいても構いません。

#outline()
#pagebreak()

= とりあえずNix flakesに触れてみる

Nix flakesは、`Nix-v2.4`にて初めて実装されており、それ以降現在のリリースである`Nix-v2.24.11`にも実装されている機能です。この機能は未だに試験的機能#footnote()[翻訳元: experimental features]としてマークされていますが、デファクトスタンダードとして広くNixユーザーに使用されています。

#quote(attribution: "https://nix.dev/manual/nix/2.25/release-notes/rl-2.4.htmlよりDeepL翻訳")[
フレークは、Nixベースのプロジェクトを、より発見しやすく、構成可能で、一貫性があり、再現可能な方法でパッケージ化するための新しいフォーマットです。フレークは、他のフレークとの依存関係を指定し、パッケージ、Nixpkgsオーバーレイ、NixOSモジュール、CIテストなどのNixアセットを返すflake.nixという名前のファイルを含むリポジトリまたはtarボールです。例えば、nix run nixpkgs\#helloのようなコマンドは、nixpkgsフレークからhelloアプリケーションを実行します。

フレークは現在実験的とされている。導入については、このブログ記事を参照してください。フレークのシンタックスとセマンティクスの詳細については、nix flakeマニュアル・ページを参照してください。
]

前提情報はこのくらいですので、一旦Nixが使える状態にしましょう。個人的に、非Nixユーザーから最も簡単なNixの試用方法は、Docker経由での試用が一番だと思っていますので、今回はDockerから試してみましょう。

#sourcecode()[
  ```sh
    docker run -it nixos/nix
  ```
]