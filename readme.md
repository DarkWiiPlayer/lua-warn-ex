Warn-Extended for Lua
================================================================================

Overrides Luas builtin `warn` function with more specific ones when applicable.
For example, when `nginx` is available, uses `nginx.log` with log-level `warn`
instead.

This was originally a feature of the `warn` backport library, but has now been
extracted into a separate project.
