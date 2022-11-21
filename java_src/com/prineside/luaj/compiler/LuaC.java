package com.prineside.luaj.compiler;

import com.prineside.luaj.Globals;
import com.prineside.luaj.LuaClosure;
import com.prineside.luaj.LuaFunction;
import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Prototype;
import com.prineside.luaj.compiler.LexState;
import java.io.InputStream;
import java.util.Hashtable;
/* loaded from: classes2.dex */
public class LuaC extends Constants implements Globals.Compiler, Globals.Loader {
    public static final LuaC instance = new LuaC();

    /* loaded from: classes2.dex */
    public static class CompileState {

        /* renamed from: a */
        public int f8132a = 0;

        /* renamed from: b */
        public Hashtable f8133b = new Hashtable();

        public LuaString newTString(String str) {
            return cachedLuaString(LuaString.valueOf(str));
        }

        public String pushfstring(String str) {
            return str;
        }

        /* renamed from: a */
        public Prototype m22520a(InputStream inputStream, String str) {
            boolean z;
            LexState lexState = new LexState(this, inputStream);
            FuncState funcState = new FuncState();
            lexState.f8090f = funcState;
            lexState.m22578Z0(this, inputStream.read(), inputStream, LuaValue.valueOf(str));
            Prototype prototype = new Prototype();
            funcState.f8056a = prototype;
            prototype.source = LuaValue.valueOf(str);
            lexState.mainfunc(funcState);
            boolean z2 = true;
            if (funcState.f8058c == null) {
                z = true;
            } else {
                z = false;
            }
            Constants.m22731k(z);
            LexState.Dyndata dyndata = lexState.f8095k;
            if (dyndata != null && (dyndata.f8105b != 0 || dyndata.f8107d != 0 || dyndata.f8109f != 0)) {
                z2 = false;
            }
            Constants.m22731k(z2);
            return funcState.f8056a;
        }

        public LuaString cachedLuaString(LuaString luaString) {
            LuaString luaString2 = (LuaString) this.f8133b.get(luaString);
            if (luaString2 != null) {
                return luaString2;
            }
            this.f8133b.put(luaString, luaString);
            return luaString;
        }

        public LuaString newTString(LuaString luaString) {
            return cachedLuaString(luaString);
        }
    }

    @Override // com.prineside.luaj.Globals.Compiler
    public Prototype compile(InputStream inputStream, String str) {
        return new CompileState().m22520a(inputStream, str);
    }

    @Override // com.prineside.luaj.Globals.Loader
    public LuaFunction load(Prototype prototype, String str, LuaValue luaValue) {
        return new LuaClosure(prototype, luaValue);
    }

    public static void install(Globals globals) {
        LuaC luaC = instance;
        globals.compiler = luaC;
        globals.loader = luaC;
    }

    public LuaValue load(InputStream inputStream, String str, Globals globals) {
        return new LuaClosure(compile(inputStream, str), globals);
    }
}
