# db/seeds.rb

books = [
  { name: "源氏物語", kana: "げんじものがたり" },
  { name: "ノルウェイの森", kana: "のるうぇいのもり" },
  { name: "百年の孤独", kana: "ひゃくねんのこどく" },
  { name: "Great Expectations", kana: "ぐれいとえくすぺくてーしょんず" },
  { name: "戦争と平和", kana: "せんそうとへいわ" },
  { name: "罪と罰", kana: "つみとばつ" },
  { name: "カラマーゾフの兄弟", kana: "からまーぞふのきょうだい" },
  { name: "マクベス", kana: "まくべす" },
  { name: "1984", kana: "せんきゅうひゃくはちじゅうよん" },
  { name: "ハムレット", kana: "はむれっと" },
]

books.each do |book|
  Book.create!(name: book[:name], kana: book[:kana])
end
