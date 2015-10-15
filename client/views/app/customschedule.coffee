Template.customschedule.helpers
	title: ->
		return RocketChat.settings.get 'Layout_Home_Title'

Template.customschedule.events
	'click .registerbutton': (event) ->
		$(event.currentTarget).state({
			text: {
				active   : 'I am Signed In',
				inactive : 'Sign In'
			}
		})
		
