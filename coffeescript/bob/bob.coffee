class bob
  hey: (text) -> switch
    when text.match(/[a-zA-Z]/i) and text is text.toUpperCase() then 'Whoa, chill out!'
    when text.slice(-1) is '?' then 'Sure.'
    when !text? or text.replace(/ /g, '') is "" then 'Fine. Be that way!'
    else 'Whatever.'

module.exports = bob
