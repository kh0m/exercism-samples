class words
  constructor: (myWords) ->
    myWords = myWords.replace(/[.,\/#!$%\^&\*;:{}=\-_`~()@]/g, "")
    myWords = myWords.replace(/\s{2,}/g, " ")
    myWords = myWords.toLowerCase()
    @arr =  myWords.split(" ")

  count: ->
    obj = {}
    for word in @arr
      word = word
      if obj[word]?
        obj[word]++
      else
        obj[word] = 1
    obj

module.exports = words
