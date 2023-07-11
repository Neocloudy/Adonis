--// Basic Luau Info
																																																																																											--[[ 
Hey! Listen! Don't remove any comment markers in this script.
You risk breaking something!

If you're looking for information on how to configure the system, please scroll down to SETTINGS INFORMATION.

This is only here to help you when editing settings so you understand how they work
and don't break something.

In case you don't know what Luau is; Luau is the scripting language Roblox uses...
so every script you see (such as this one) and pretty much any code on Roblox is
written in Luau.

Anything that looks like {} is known as a table.
Tables contain things, like the Luau version of a box.
An example of a table would be setting = {"John", "Mary", "Bill"}
You can have tables inside of tables, such in the case of setting = {{Group = 1234, Rank = 123, Type = "Admin"}}
Just like real boxes, tables can contain pretty much anything including other tables.

Note: Commas (,) as well as semicolons (;) can both be used to separate things inside a table.

Anything that looks like "Bob" is what's known as a string. Strings
are basically plain text; setting = "Bob" would be correct however
setting = Bob would not; because if it's not surrounded by quotes Luau will think
that Bob is a variable; Quotes indicate something is a string and therefore not a variable/number/code

Numbers do not use quotes. setting = 56

This green block of text you are reading is called a comment. It's like a message
from the programmer to anyone who reads their stuff. Anything in a comment will
not be seen by Luau when the script is run.



--// SETTINGS INFORMATION [READ IF CONFUSED]

If you see something like "Format: 'Username:UserId'" it means that anything you put
in that table must follow one of the formats next to Format:

For instance, if I wanted to give admin to a player using their username, userId, a group they are in
or an item they own I would do the following with the settings.Admins table:

The format for the Admins' table's entries is "Username"; or "Username:UserId"; or UserId; or "Group:GroupId:GroupRank" or "Item:ItemID"
This means that if I want to admin Bobjenkins123 who has a userId of 1234567, is in
group "BobFans" (group ID 7463213) under the rank number 234, or owns the item belonging to ID 1237465
I can do any of the following:

settings.Admins = {"Bobjenkins123", "Bobjenkins123:1234567", 1234567, "Group:BobFans:7463213:234", "Item:1237465"}


If I wanted to make it so rank 134 in group 1029934 and BobJenkins123 had mod admin I would do
settings.Moderators = {"Group:1029943:134", "BobJenkins123"}


I was going to change the admin rank stuff but I figured it would confuse people too much, so I left it as mods/admins/HeadAdmins ;p


--// Admins

	settings.Moderators = {"Sceleratis"; "BobJenkins:1237123"; 1237666; "Group:181:255"; "Item:1234567"}
		This will make the person with the username Sceleratis, or the name BobJenkins, or the ID 1237123 OR 123766,
		   or is in group 181 in the rank 255, or owns the item belonging to the ID 1234567 a moderator

		If I wanted to give the rank 121 in group 181 Owner admin I would do:
		   settings.HeadAdmins = {"Group:181:121"}
		   See? Not so hard is it?

		If I wanted to add group 181 and all ranks in it to the :slock whitelist I would do;
			settings.Whitelist = {"Group:181";}

		I can do the above if I wanted to give everyone in a group admin for any of the other admin tables



--// Command Permissions

	You can set the permission level for specific commands using setting.Permissions
	If I wanted to make it so only HeadAdmins+ can use :ff player then I would do:

		settings.Permissions = {"ff:HeadAdmins"}

		ff is the Command ":ff scel" and HeadAdmins is the NewLevel

		Built-In Permissions Levels:
			Players - 0
			Moderators - 100
			Admins - 200
			HeadAdmins - 300
			Creators - 900

		Note that when changing command permissions you MUST include the prefix;
		So if you change the prefix to $ you would need to do $ff instead of :ff																																																																	--]]