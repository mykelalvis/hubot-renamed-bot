# Description:
#   Straight from the examples
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->
	robot.hear /^ihtbot:? (.+)/i, (res) ->
		gripe(robot,res)
		return	

gripe = (robot,response) -> 
	rstr = "Sorry, I'm a diva and only respond to #{robot.name}"
	rst += " or #{robot.alias}" if robot.alias
	response.reply rstr