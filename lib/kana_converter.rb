# lib/kana_converter.rb

module KanaConverter
    def self.to_hiragana(text)
        # 半角カタカナを全角カタカナに変換
        text = text.gsub(/[\uFF61-\uFF9F]+/) { |str| str.unicode_normalize(:nfkc) }.gsub(/[\u3099\u309A]/, '')
        # 全角カタカナをひらがなに変換
        text = text.tr('ァ-ン', 'ぁ-ん')
    end
  end
  