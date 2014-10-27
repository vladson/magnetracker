class MagnetAdder

  template: (obj) ->
    "
      &nbsp;
      <a href=\"magnet:?xt=urn:btih:#{obj.hash}&dn=#{obj.display_name}\">
        <img class='magnet_link' src='#{chrome.extension.getURL("resources/magnet.png")}' />
      </a>
    "

  constructor: ->
    @hash = $('#tor-hash').text()
    @name = $('.post_body').first().children().first().text()
    if ! @name
      @name = $($('.post_body').first().children()[1]).text()
    if ! @name
      @name = 'Some Torrent'
    @display_name = encodeURIComponent(@name)
    @renderMagnetLink() if @hash

  renderMagnetLink: ->
    $('.post_body').first().find('tr.row1').first().children().last().children().first().append(@template(@))

new MagnetAdder