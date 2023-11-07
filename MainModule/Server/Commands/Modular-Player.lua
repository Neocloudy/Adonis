--[[ 
	For ye whom may venture here:
	This is a script that contains the Ardornis special commands. For maintenance and modularity purposes, 
	reduction of merge conflicts, etc.
	The script will have it's special tables and commands in their own files.
]]

return function(Vargs, env)
	local server = Vargs.Server;
	local service = Vargs.Service;

	local Settings = server.Settings
	local Functions, Commands, Admin, Anti, Core, HTTP, Logs, Remote, Process, Variables, Deps =
		server.Functions, server.Commands, server.Admin, server.Anti, server.Core, server.HTTP, server.Logs, server.Remote, server.Process, server.Variables, server.Deps

	local ArdChangelog = require(server.Shared.ArdChangelog)

	if env then setfenv(1, env) end

	local Routine = env.Routine
	local Pcall = env.Pcall
	local cPcall = env.cPcall

	return {
		ARDORNISChangelog = {
			Prefix = Settings.Prefix;
			Commands = {"ardornischangelog", "ardchanges", "ardornisrevision", "ardornischanges", "ardornisversion"};
			Args = {};
			Description = "Shows you the Ardornis changelog";
			AdminLevel = "Players";
			Function = function(plr: Player, args: {string})--[[
				Remote.MakeGui(plr, "Notification", {
					Title = "Changelog";
					Message = "Click here to view the Adonis changelog.";
					OnClick = Core.Bytecode(`client.Remote.Send('ProcessCommand','{Settings.Prefix}changes')`);
					Time = 12;
				})]]
				Remote.MakeGui(plr, "List", {
					Title = "Ardornis Changelog";
					Icon = server.MatIcons["Text snippet"];
					Table = ArdChangelog;
					RichTextAllowed = true;
					Size = {500, 400};
					TitleButtons = {
						{
							Text = "*";
							OnClick = Core.Bytecode(`client.Remote.Send('ProcessCommand','{Settings.Prefix}changes')`)
						}
					};
				})
			end
		};
	};
end