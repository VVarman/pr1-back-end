def to_pig_latin(sentence)
  pig_latin_words = sentence.split.map do |word|
    # Відділення пунктуації в кінці слова, якщо є
    punct = word[-1] =~ /[[:punct:]]/ ? word[-1] : ''
    word_core = punct.empty? ? word : word[0..-2]

    if word_core.length == 1
      word_core + "ay" + punct
    else
      word_core[1..-1] + word_core[0] + "ay" + punct
    end
  end

  puts pig_latin_words.join(' ')
end

to_pig_latin("Hello world")              
to_pig_latin("I love Ruby programming!")