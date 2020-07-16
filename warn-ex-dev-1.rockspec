package = "warn-ex"
version = "dev-1"
source = {
	url = "git+https://github.com/darkwiiplayer/lua-warn-ex.git";
}

description = {
	homepage = "https://github.com/darkwiiplayer/lua-warn-ex",
	license = "Public Domain";
}

dependencies = { "warn" }

build = {
	type = "builtin",
	modules = {
		['warn-ex'] = 'warn-ex.lua';
	}
}
