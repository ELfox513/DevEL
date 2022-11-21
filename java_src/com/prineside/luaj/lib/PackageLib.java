package com.prineside.luaj.lib;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.Globals;
import com.prineside.luaj.LuaBoolean;
import com.prineside.luaj.LuaFunction;
import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.tdi2.utils.REGS;
import java.io.IOException;
import java.io.InputStream;
import net.bytebuddy.pool.TypePool;
@REGS
/* loaded from: classes2.dex */
public class PackageLib extends TwoArgFunction {

    /* renamed from: A */
    public static final LuaString f8232A;

    /* renamed from: B */
    public static final LuaString f8233B;

    /* renamed from: C */
    public static final LuaString f8234C;

    /* renamed from: D */
    public static final LuaString f8235D;
    public static final String DEFAULT_LUA_PATH;

    /* renamed from: E */
    public static final LuaString f8236E;

    /* renamed from: F */
    public static final LuaString f8237F;

    /* renamed from: G */
    public static final String f8238G;

    /* renamed from: z */
    public static final LuaString f8239z;
    public java_searcher java_searcher;
    public lua_searcher lua_searcher;
    public preload_searcher preload_searcher;

    /* renamed from: x */
    public Globals f8240x;

    /* renamed from: y */
    public LuaTable f8241y;

    @REGS
    /* loaded from: classes2.dex */
    public static class java_searcher extends VarArgFunction {

        /* renamed from: x */
        public PackageLib f8242x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            String classname = PackageLib.toClassname(varargs.checkjstring(1));
            try {
                LuaValue luaValue = (LuaValue) Class.forName(classname).newInstance();
                if (luaValue.isfunction()) {
                    ((LuaFunction) luaValue).initupvalue1(this.f8242x.f8240x);
                }
                return LuaValue.varargsOf(luaValue, this.f8242x.f8240x);
            } catch (ClassNotFoundException unused) {
                return LuaValue.valueOf("\n\tno class '" + classname + "'");
            } catch (Exception e) {
                return LuaValue.valueOf("\n\tjava load failed on '" + classname + "', " + e);
            }
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8242x = (PackageLib) kryo.readObject(input, PackageLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8242x);
        }

        public java_searcher() {
        }

        public java_searcher(PackageLib packageLib) {
            this.f8242x = packageLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class loadlib extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            varargs.checkstring(1);
            return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf("dynamic libraries not enabled"), LuaValue.valueOf("absent"));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class lua_searcher extends VarArgFunction {

        /* renamed from: x */
        public PackageLib f8243x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaString checkstring = varargs.checkstring(1);
            LuaValue luaValue = this.f8243x.f8241y.get(PackageLib.f8234C);
            if (!luaValue.isstring()) {
                return LuaValue.valueOf("package.path is not a string");
            }
            Varargs invoke = this.f8243x.f8241y.get(PackageLib.f8235D).invoke(LuaValue.varargsOf(checkstring, luaValue));
            if (!invoke.isstring(1)) {
                return invoke.arg(2).tostring();
            }
            LuaString strvalue = invoke.arg1().strvalue();
            LuaValue loadfile = this.f8243x.f8240x.loadfile(strvalue.tojstring());
            if (loadfile.arg1().isfunction()) {
                return LuaValue.varargsOf(loadfile.arg1(), strvalue);
            }
            LuaValue luaValue2 = LuaValue.NIL;
            return LuaValue.varargsOf(luaValue2, LuaValue.valueOf("'" + strvalue + "': " + loadfile.arg(2).tojstring()));
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8243x = (PackageLib) kryo.readObject(input, PackageLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8243x);
        }

        public lua_searcher() {
        }

        public lua_searcher(PackageLib packageLib) {
            this.f8243x = packageLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class preload_searcher extends VarArgFunction {

        /* renamed from: x */
        public PackageLib f8244x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaString checkstring = varargs.checkstring(1);
            LuaValue luaValue = this.f8244x.f8241y.get(PackageLib.f8233B).get(checkstring);
            if (luaValue.isnil()) {
                return LuaValue.valueOf("\n\tno field package.preload['" + checkstring + "']");
            }
            return luaValue;
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8244x = (PackageLib) kryo.readObject(input, PackageLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8244x);
        }

        public preload_searcher() {
        }

        public preload_searcher(PackageLib packageLib) {
            this.f8244x = packageLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class require extends OneArgFunction {

        /* renamed from: x */
        public PackageLib f8245x;

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8245x = (PackageLib) kryo.readObject(input, PackageLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8245x);
        }

        public require() {
        }

        public require(PackageLib packageLib) {
            this.f8245x = packageLib;
        }

        @Override // com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            Varargs invoke;
            LuaString checkstring = luaValue.checkstring();
            LuaValue luaValue2 = this.f8245x.f8241y.get(PackageLib.f8239z);
            LuaValue luaValue3 = luaValue2.get(checkstring);
            if (luaValue3.toboolean()) {
                if (luaValue3 == PackageLib.f8237F) {
                    LuaValue.error("loop or previous error loading module '" + checkstring + "'");
                }
                return luaValue3;
            }
            LuaTable checktable = this.f8245x.f8241y.get(PackageLib.f8236E).checktable();
            StringBuffer stringBuffer = new StringBuffer();
            int i = 1;
            while (true) {
                LuaValue luaValue4 = checktable.get(i);
                if (luaValue4.isnil()) {
                    LuaValue.error("module '" + checkstring + "' not found: " + checkstring + ((Object) stringBuffer));
                }
                invoke = luaValue4.invoke(checkstring);
                if (invoke.isfunction(1)) {
                    break;
                }
                if (invoke.isstring(1)) {
                    stringBuffer.append(invoke.tojstring(1));
                }
                i++;
            }
            luaValue2.set(checkstring, PackageLib.f8237F);
            LuaValue call = invoke.arg1().call(checkstring, invoke.arg(2));
            if (!call.isnil()) {
                luaValue2.set(checkstring, call);
                return call;
            }
            LuaValue luaValue5 = luaValue2.get(checkstring);
            if (luaValue5 == PackageLib.f8237F) {
                LuaBoolean luaBoolean = LuaValue.TRUE;
                luaValue2.set(checkstring, luaBoolean);
                return luaBoolean;
            }
            return luaValue5;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class searchpath extends VarArgFunction {

        /* renamed from: x */
        public PackageLib f8246x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            int indexOf;
            String checkjstring = varargs.checkjstring(1);
            String checkjstring2 = varargs.checkjstring(2);
            String optjstring = varargs.optjstring(3, ".");
            String optjstring2 = varargs.optjstring(4, PackageLib.f8238G);
            int length = checkjstring2.length();
            String replace = checkjstring.replace(optjstring.charAt(0), optjstring2.charAt(0));
            int i = -1;
            StringBuffer stringBuffer = null;
            while (i < length) {
                int i2 = i + 1;
                int indexOf2 = checkjstring2.indexOf(59, i2);
                if (indexOf2 < 0) {
                    indexOf2 = checkjstring2.length();
                }
                String substring = checkjstring2.substring(i2, indexOf2);
                if (substring.indexOf(63) >= 0) {
                    substring = substring.substring(0, indexOf) + replace + substring.substring(indexOf + 1);
                }
                InputStream findResource = this.f8246x.f8240x.finder.findResource(substring);
                if (findResource != null) {
                    try {
                        findResource.close();
                    } catch (IOException unused) {
                    }
                    return LuaValue.valueOf(substring);
                }
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer();
                }
                stringBuffer.append("\n\t" + substring);
                i = indexOf2;
            }
            return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf(stringBuffer.toString()));
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8246x = (PackageLib) kryo.readObject(input, PackageLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8246x);
        }

        public searchpath() {
        }

        public searchpath(PackageLib packageLib) {
            this.f8246x = packageLib;
        }
    }

    /* renamed from: u */
    public static final boolean m22449u(char c) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || ((c >= '0' && c <= '9') || c == '$' || c == '.' || c == '_');
    }

    public void setIsLoaded(String str, LuaTable luaTable) {
        this.f8241y.get(f8239z).set(str, luaTable);
    }

    public void setLuaPath(String str) {
        this.f8241y.set(f8234C, LuaValue.valueOf(str));
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaFunction, com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
    public String tojstring() {
        return "package";
    }

    static {
        String str;
        try {
            str = System.getProperty("luaj.package.path");
        } catch (Exception e) {
            System.out.println(e.toString());
            str = null;
        }
        if (str == null) {
            str = "?.lua";
        }
        DEFAULT_LUA_PATH = str;
        f8239z = LuaValue.valueOf("loaded");
        f8232A = LuaValue.valueOf("loadlib");
        f8233B = LuaValue.valueOf("preload");
        f8234C = LuaValue.valueOf("path");
        f8235D = LuaValue.valueOf("searchpath");
        f8236E = LuaValue.valueOf("searchers");
        f8237F = LuaValue.valueOf("\u0001");
        f8238G = System.getProperty("file.separator");
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeClassAndObject(output, this.f8240x);
        kryo.writeClassAndObject(output, this.f8241y);
        kryo.writeClassAndObject(output, this.preload_searcher);
        kryo.writeClassAndObject(output, this.lua_searcher);
        kryo.writeClassAndObject(output, this.java_searcher);
    }

    public static final String toClassname(String str) {
        int length = str.length();
        int i = str.endsWith(".lua") ? length - 4 : length;
        for (int i2 = 0; i2 < i; i2++) {
            char charAt = str.charAt(i2);
            if (!m22449u(charAt) || charAt == '/' || charAt == '\\') {
                StringBuffer stringBuffer = new StringBuffer(i);
                for (int i3 = 0; i3 < i; i3++) {
                    char charAt2 = str.charAt(i3);
                    if (!m22449u(charAt2)) {
                        if (charAt2 != '/' && charAt2 != '\\') {
                            charAt2 = '_';
                        } else {
                            charAt2 = TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH;
                        }
                    }
                    stringBuffer.append(charAt2);
                }
                return stringBuffer.toString();
            }
        }
        if (length != i) {
            return str.substring(0, i);
        }
        return str;
    }

    @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        Globals checkglobals = luaValue2.checkglobals();
        this.f8240x = checkglobals;
        checkglobals.set("require", new require());
        LuaTable luaTable = new LuaTable();
        this.f8241y = luaTable;
        LuaString luaString = f8239z;
        luaTable.set(luaString, new LuaTable());
        this.f8241y.set(f8233B, new LuaTable());
        this.f8241y.set(f8234C, LuaValue.valueOf(DEFAULT_LUA_PATH));
        this.f8241y.set(f8232A, new loadlib());
        this.f8241y.set(f8235D, new searchpath());
        LuaValue luaTable2 = new LuaTable();
        preload_searcher preload_searcherVar = new preload_searcher();
        this.preload_searcher = preload_searcherVar;
        luaTable2.set(1, preload_searcherVar);
        lua_searcher lua_searcherVar = new lua_searcher();
        this.lua_searcher = lua_searcherVar;
        luaTable2.set(2, lua_searcherVar);
        java_searcher java_searcherVar = new java_searcher();
        this.java_searcher = java_searcherVar;
        luaTable2.set(3, java_searcherVar);
        this.f8241y.set(f8236E, luaTable2);
        LuaTable luaTable3 = this.f8241y;
        luaTable3.set("config", f8238G + "\n;\n?\n!\n-\n");
        this.f8241y.get(luaString).set("package", this.f8241y);
        luaValue2.set("package", this.f8241y);
        this.f8240x.package_ = this;
        return luaValue2;
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f8240x = (Globals) kryo.readClassAndObject(input);
        this.f8241y = (LuaTable) kryo.readClassAndObject(input);
        this.preload_searcher = (preload_searcher) kryo.readClassAndObject(input);
        this.lua_searcher = (lua_searcher) kryo.readClassAndObject(input);
        this.java_searcher = (java_searcher) kryo.readClassAndObject(input);
    }
}
