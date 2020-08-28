class ToppagesController < ApplicationController
  def index
    @letters_set = [
      ['あ','い', 'う', 'え', 'お'],
      ['か', 'き', 'く', 'け', 'こ'],
      ['た', 'ち', 'つ', 'て', 'と'],
      ['な', 'に', 'ぬ', 'ね', 'の'],
      ['は', 'ひ', 'ふ', 'へ', 'ほ'],
      ['ま', 'み', 'む', 'め', 'も'],
      ['や', 'ゆ', 'よ'],
      ['ら', 'り', 'る', 'れ', 'ろ'],
      ['わ', 'を', 'ん'],
      ['が', 'ぎ', 'ぐ', 'げ', 'ご'],
      ['ざ', 'じ', 'ず', 'ぜ', 'ぞ'],
      ['だ', 'で', 'ど'],
      ['ば', 'び', 'ぶ', 'べ', 'ぼ'],
      ['ぱ', 'ぴ', 'ぷ', 'ぺ', 'ぽ'],
    ]
    @movies = Movie.search(params[:title]).order(hurigana: :asc)
    @notfound_message = '見つかりませんでした' if !@movies.any? && params[:title]
  end
end
