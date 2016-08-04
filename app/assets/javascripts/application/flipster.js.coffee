$ ->
  # Initialize flipster for an element with an ID of album-coverflow
  flipster = $('#album-coverflow').flipster
               onItemSwitch: (event) ->
                 $('#album-tracks').load event.dataset.tracksPath

  # Ajax load the tracks for the album that is selected on page load
  $('#album-tracks').load $('.flipster__item--current').data 'tracks-path'
