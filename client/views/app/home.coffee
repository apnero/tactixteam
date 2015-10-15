Template.home.helpers
	title: ->
		return RocketChat.settings.get 'Layout_Home_Title'
	body: ->
		return RocketChat.settings.get 'Layout_Home_Body'


Template.home.events
	'click .schedulebutton': (event) ->
		$('.sidebar').sidebar({context: '.content'}).sidebar('setting', 'transition', 'overlay').sidebar('toggle')

	'click #bten': (event) ->
		$('#bten').state({
			text: {
				active   : 'I am Signed In',
				inactive : 'Sign In'
			}
		})

	'click .registerbutton': (event) ->
		$(event.currentTarget).state({
			text: {
				active   : 'I am Signed In',
				inactive : 'Sign In'
			}
		})
		
