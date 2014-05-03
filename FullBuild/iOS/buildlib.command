#!/bin/bash
SRCROOT=$(cd $(dirname $0);pwd)

cd "$SRCROOT"
root_path="../.."

Box2D="$root_path/Box2D/iOS/Box2D/Products/Box2D.framework/Versions/A/Box2D"
CocosDenshion="$root_path/CocosDenshion/iOS/CocosDenshion/Products/CocosDenshion.framework/Versions/A/CocosDenshion"
FlMML="$root_path/FlMML/iOS/FlMML/Products/FlMML.framework/Versions/A/FlMML"
Lua="$root_path/Lua5.2/iOS/Lua/Products/Lua.framework/Versions/A/Lua"
#LuaNoIO="$root_path/Lua5.2/iOS/Lua/Products-noIO/Lua.framework/Versions/A/Lua"
LuaJIT="$root_path/LuaJIT/iOS/LuaJIT/Products/LuaJIT.framework/LuaJIT"
PicoGame="$root_path/PicoGame/iOS/PicoGame/Products/PicoGame.framework/Versions/A/PicoGame"
PicoGameJIT="$root_path/PicoGame/iOS/PicoGame/ProductsLuaJIT/PicoGame.framework/Versions/A/PicoGame"
freetype="$root_path/freetype/iOS/freetype/Products/freetype.framework/Versions/A/freetype"

xcrun -sdk iphoneos libtool -static -o libpicoengine.a "$Box2D" "$CocosDenshion" "$FlMML" "$Lua" "$PicoGame" "$freetype"
xcrun -sdk iphoneos libtool -static -o libpicoenginejit.a "$Box2D" "$CocosDenshion" "$FlMML" "$LuaJIT" "$PicoGameJIT" "$freetype"