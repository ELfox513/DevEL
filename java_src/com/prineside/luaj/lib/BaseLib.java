package com.prineside.luaj.lib;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import com.prineside.luaj.Globals;
import com.prineside.luaj.Lua;
import com.prineside.luaj.LuaBoolean;
import com.prineside.luaj.LuaError;
import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaThread;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.utils.REGS;
import java.io.InputStream;
/* loaded from: classes2.dex */
public abstract class BaseLib extends TwoArgFunction implements ResourceFinder {

    /* renamed from: x */
    public Globals f8134x;

    /* loaded from: classes2.dex */
    public static class StringInputStream extends InputStream {

        /* renamed from: a */
        public final LuaValue f8135a;

        /* renamed from: b */
        public byte[] f8136b;

        /* renamed from: d */
        public int f8137d;

        /* renamed from: k */
        public int f8138k = 0;

        @Override // java.io.InputStream
        public int read() {
            int i = this.f8138k;
            if (i < 0) {
                return -1;
            }
            if (i == 0) {
                LuaValue call = this.f8135a.call();
                if (call.isnil()) {
                    this.f8138k = -1;
                    return -1;
                }
                LuaString strvalue = call.strvalue();
                this.f8136b = strvalue.m_bytes;
                this.f8137d = strvalue.m_offset;
                int i2 = strvalue.m_length;
                this.f8138k = i2;
                if (i2 <= 0) {
                    return -1;
                }
            }
            this.f8138k--;
            byte[] bArr = this.f8136b;
            int i3 = this.f8137d;
            this.f8137d = i3 + 1;
            return bArr[i3] & DefaultClassResolver.NAME;
        }

        public StringInputStream(LuaValue luaValue) {
            this.f8135a = luaValue;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class collectgarbage extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            long freeMemory;
            String optjstring = varargs.optjstring(1, "collect");
            if ("collect".equals(optjstring)) {
                System.gc();
                return LuaValue.ZERO;
            } else if ("count".equals(optjstring)) {
                Runtime runtime = Runtime.getRuntime();
                double freeMemory2 = runtime.totalMemory() - runtime.freeMemory();
                Double.isNaN(freeMemory2);
                return LuaValue.varargsOf(LuaValue.valueOf(freeMemory2 / 1024.0d), LuaValue.valueOf(freeMemory % 1024));
            } else if ("step".equals(optjstring)) {
                System.gc();
                return LuaValue.TRUE;
            } else {
                LuaValue.argerror(1, "invalid option '" + optjstring + "'");
                return LuaValue.NIL;
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class dofile extends VarArgFunction {

        /* renamed from: x */
        public BaseLib f8139x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            boolean z;
            String str;
            Varargs loadFile;
            if (!varargs.isstring(1) && !varargs.isnil(1)) {
                z = false;
            } else {
                z = true;
            }
            varargs.argcheck(z, 1, "filename must be string or nil");
            if (varargs.isstring(1)) {
                str = varargs.tojstring(1);
            } else {
                str = null;
            }
            if (str == null) {
                BaseLib baseLib = this.f8139x;
                Globals globals = baseLib.f8134x;
                loadFile = baseLib.loadStream(globals.STDIN, "=stdin", "bt", globals);
            } else {
                loadFile = this.f8139x.loadFile(varargs.checkjstring(1), "bt", this.f8139x.f8134x);
            }
            if (loadFile.isnil(1)) {
                return LuaValue.error(loadFile.tojstring(2));
            }
            return loadFile.arg1().invoke();
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8139x = (BaseLib) kryo.readClassAndObject(input);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.f8139x);
        }

        public dofile() {
        }

        public dofile(BaseLib baseLib) {
            if (baseLib != null) {
                this.f8139x = baseLib;
                return;
            }
            throw new IllegalArgumentException("baseLib cannot be null");
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class getmetatable extends LibFunction {
        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call() {
            return LuaValue.argerror(1, "value expected");
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            LuaValue luaValue2 = luaValue.getmetatable();
            return luaValue2 != null ? luaValue2.rawget(LuaValue.METATABLE).optvalue(luaValue2) : LuaValue.NIL;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class inext extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            return varargs.checktable(1).inext(varargs.arg(2));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class ipairs extends VarArgFunction {

        /* renamed from: x */
        public inext f8140x = new inext();

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            return LuaValue.varargsOf(this.f8140x, varargs.checktable(1), LuaValue.ZERO);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class load extends VarArgFunction {

        /* renamed from: x */
        public BaseLib f8141x;

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8141x = (BaseLib) kryo.readClassAndObject(input);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.f8141x);
        }

        public load() {
        }

        public load(BaseLib baseLib) {
            if (baseLib != null) {
                this.f8141x = baseLib;
                return;
            }
            throw new IllegalArgumentException("baseLib cannot be null");
        }

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            String str;
            InputStream stringInputStream;
            LuaValue arg1 = varargs.arg1();
            if (!arg1.isstring() && !arg1.isfunction()) {
                throw new LuaError("bad argument #1 to 'load' (string or function expected, got " + arg1.typename() + ")");
            }
            if (arg1.isstring()) {
                str = arg1.tojstring();
            } else {
                str = "=(load)";
            }
            String optjstring = varargs.optjstring(2, str);
            String optjstring2 = varargs.optjstring(3, "bt");
            LuaValue optvalue = varargs.optvalue(4, this.f8141x.f8134x);
            BaseLib baseLib = this.f8141x;
            if (arg1.isstring()) {
                stringInputStream = arg1.strvalue().toInputStream();
            } else {
                stringInputStream = new StringInputStream(arg1.checkfunction());
            }
            return baseLib.loadStream(stringInputStream, optjstring, optjstring2, optvalue);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class loadfile extends VarArgFunction {

        /* renamed from: x */
        public BaseLib f8142x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            boolean z;
            String str;
            if (!varargs.isstring(1) && !varargs.isnil(1)) {
                z = false;
            } else {
                z = true;
            }
            varargs.argcheck(z, 1, "filename must be string or nil");
            if (varargs.isstring(1)) {
                str = varargs.tojstring(1);
            } else {
                str = null;
            }
            String optjstring = varargs.optjstring(2, "bt");
            LuaValue optvalue = varargs.optvalue(3, this.f8142x.f8134x);
            if (str == null) {
                BaseLib baseLib = this.f8142x;
                return baseLib.loadStream(baseLib.f8134x.STDIN, "=stdin", optjstring, optvalue);
            }
            return this.f8142x.loadFile(str, optjstring, optvalue);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8142x = (BaseLib) kryo.readClassAndObject(input);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.f8142x);
        }

        public loadfile() {
        }

        public loadfile(BaseLib baseLib) {
            this.f8142x = baseLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class next extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            return varargs.checktable(1).next(varargs.arg(2));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class pairs extends VarArgFunction {

        /* renamed from: x */
        public next f8143x;

        public pairs() {
        }

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            return LuaValue.varargsOf(this.f8143x, varargs.checktable(1), LuaValue.NIL);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8143x = (next) kryo.readClassAndObject(input);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.f8143x);
        }

        public pairs(next nextVar) {
            this.f8143x = nextVar;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class pcall extends VarArgFunction {

        /* renamed from: x */
        public BaseLib f8144x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            DebugLib debugLib;
            DebugLib debugLib2;
            DebugLib debugLib3;
            DebugLib debugLib4;
            DebugLib debugLib5;
            LuaValue checkvalue = varargs.checkvalue(1);
            Globals globals = this.f8144x.f8134x;
            if (globals != null && (debugLib5 = globals.debuglib) != null) {
                debugLib5.onCall(this);
            }
            try {
                try {
                    Varargs varargsOf = LuaValue.varargsOf(LuaValue.TRUE, checkvalue.invoke(varargs.subargs(2)));
                    Globals globals2 = this.f8144x.f8134x;
                    if (globals2 != null && (debugLib4 = globals2.debuglib) != null) {
                        debugLib4.onReturn();
                    }
                    return varargsOf;
                } catch (LuaError e) {
                    LuaValue messageObject = e.getMessageObject();
                    LuaBoolean luaBoolean = LuaValue.FALSE;
                    if (messageObject == null) {
                        messageObject = LuaValue.NIL;
                    }
                    Varargs varargsOf2 = LuaValue.varargsOf(luaBoolean, messageObject);
                    Globals globals3 = this.f8144x.f8134x;
                    if (globals3 != null && (debugLib2 = globals3.debuglib) != null) {
                        debugLib2.onReturn();
                    }
                    return varargsOf2;
                } catch (Exception e2) {
                    String message = e2.getMessage();
                    LuaBoolean luaBoolean2 = LuaValue.FALSE;
                    if (message == null) {
                        message = e2.toString();
                    }
                    Varargs varargsOf3 = LuaValue.varargsOf(luaBoolean2, LuaValue.valueOf(message));
                    Globals globals4 = this.f8144x.f8134x;
                    if (globals4 != null && (debugLib = globals4.debuglib) != null) {
                        debugLib.onReturn();
                    }
                    return varargsOf3;
                }
            } catch (Throwable th) {
                Globals globals5 = this.f8144x.f8134x;
                if (globals5 != null && (debugLib3 = globals5.debuglib) != null) {
                    debugLib3.onReturn();
                }
                throw th;
            }
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8144x = (BaseLib) kryo.readClassAndObject(input);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.f8144x);
        }

        public pcall() {
        }

        public pcall(BaseLib baseLib) {
            this.f8144x = baseLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class print extends VarArgFunction {

        /* renamed from: x */
        public BaseLib f8145x;

        public print() {
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8145x = (BaseLib) kryo.readClassAndObject(input);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.f8145x);
        }

        public print(BaseLib baseLib) {
            this.f8145x = baseLib;
        }

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaValue luaValue = this.f8145x.f8134x.get("tostring");
            int narg = varargs.narg();
            for (int i = 1; i <= narg; i++) {
                if (i > 1) {
                    this.f8145x.f8134x.STDOUT.print('\t');
                }
                this.f8145x.f8134x.STDOUT.print(luaValue.call(varargs.arg(i)).strvalue().tojstring());
            }
            this.f8145x.f8134x.STDOUT.print('\n');
            return LuaValue.NONE;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class rawequal extends LibFunction {
        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call() {
            return LuaValue.argerror(1, "value expected");
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.argerror(2, "value expected");
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return LuaValue.valueOf(luaValue.raweq(luaValue2));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class rawget extends TableLibFunction {
        @Override // com.prineside.luaj.lib.TableLibFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call() {
            return super.call();
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.argerror(2, "value expected");
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return luaValue.checktable().rawget(luaValue2);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class rawlen extends LibFunction {
        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.rawlen());
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class rawset extends TableLibFunction {
        @Override // com.prineside.luaj.lib.TableLibFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call() {
            return super.call();
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.argerror(2, "value expected");
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return LuaValue.argerror(3, "value expected");
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            LuaTable checktable = luaValue.checktable();
            if (!luaValue2.isvalidkey()) {
                LuaValue.argerror(2, "table index is nil");
            }
            checktable.rawset(luaValue2, luaValue3);
            return checktable;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class setmetatable extends TableLibFunction {
        @Override // com.prineside.luaj.lib.TableLibFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public /* bridge */ /* synthetic */ LuaValue call() {
            return super.call();
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.argerror(2, "nil or table expected");
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            LuaValue luaValue3 = luaValue.checktable().getmetatable();
            if (luaValue3 != null && !luaValue3.rawget(LuaValue.METATABLE).isnil()) {
                LuaValue.error("cannot change a protected metatable");
            }
            return luaValue.setmetatable(luaValue2.isnil() ? null : luaValue2.checktable());
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class tonumber extends LibFunction {
        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return luaValue.tonumber();
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            if (luaValue2.isnil()) {
                return luaValue.tonumber();
            }
            int checkint = luaValue2.checkint();
            if (checkint < 2 || checkint > 36) {
                LuaValue.argerror(2, "base out of range");
            }
            return luaValue.checkstring().tonumber(checkint);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class tostring extends LibFunction {
        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            LuaValue metatag = luaValue.metatag(LuaValue.TOSTRING);
            if (!metatag.isnil()) {
                return metatag.call(luaValue);
            }
            LuaValue luaValue2 = luaValue.tostring();
            if (!luaValue2.isnil()) {
                return luaValue2;
            }
            return LuaValue.valueOf(luaValue.tojstring());
        }
    }

    @REGS
    /* renamed from: com.prineside.luaj.lib.BaseLib$type */
    /* loaded from: classes2.dex */
    public static final class C1448type extends LibFunction {
        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.typename());
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class xpcall extends VarArgFunction {

        /* renamed from: x */
        public BaseLib f8146x;

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8146x = (BaseLib) kryo.readClassAndObject(input);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.f8146x);
        }

        public xpcall() {
        }

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            DebugLib debugLib;
            DebugLib debugLib2;
            DebugLib debugLib3;
            DebugLib debugLib4;
            LuaThread luaThread = this.f8146x.f8134x.running;
            LuaValue luaValue = luaThread.errorfunc;
            luaThread.errorfunc = varargs.checkvalue(2);
            try {
                Globals globals = this.f8146x.f8134x;
                if (globals != null && (debugLib4 = globals.debuglib) != null) {
                    debugLib4.onCall(this);
                }
                try {
                    Varargs varargsOf = LuaValue.varargsOf(LuaValue.TRUE, varargs.arg1().invoke(varargs.subargs(3)));
                    Globals globals2 = this.f8146x.f8134x;
                    if (globals2 != null && (debugLib3 = globals2.debuglib) != null) {
                        debugLib3.onReturn();
                    }
                    return varargsOf;
                } catch (LuaError e) {
                    LuaValue messageObject = e.getMessageObject();
                    LuaBoolean luaBoolean = LuaValue.FALSE;
                    if (messageObject == null) {
                        messageObject = LuaValue.NIL;
                    }
                    Varargs varargsOf2 = LuaValue.varargsOf(luaBoolean, messageObject);
                    Globals globals3 = this.f8146x.f8134x;
                    if (globals3 != null && (debugLib2 = globals3.debuglib) != null) {
                        debugLib2.onReturn();
                    }
                    return varargsOf2;
                } catch (Exception e2) {
                    String message = e2.getMessage();
                    LuaBoolean luaBoolean2 = LuaValue.FALSE;
                    if (message == null) {
                        message = e2.toString();
                    }
                    Varargs varargsOf3 = LuaValue.varargsOf(luaBoolean2, LuaValue.valueOf(message));
                    Globals globals4 = this.f8146x.f8134x;
                    if (globals4 != null && (debugLib = globals4.debuglib) != null) {
                        debugLib.onReturn();
                    }
                    return varargsOf3;
                }
            } finally {
                luaThread.errorfunc = luaValue;
            }
        }

        public xpcall(BaseLib baseLib) {
            this.f8146x = baseLib;
        }
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f8134x = (Globals) kryo.readObjectOrNull(input, Globals.class);
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.f8134x, Globals.class);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class _assert extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            if (!varargs.arg1().toboolean()) {
                String str = "assertion failed!";
                if (varargs.narg() > 1) {
                    str = varargs.optjstring(2, "assertion failed!");
                }
                LuaValue.error(str);
            }
            return varargs;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class error extends TwoArgFunction {
        @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            if (!luaValue.isnil()) {
                if (luaValue.isstring() && luaValue2.optint(1) != 0) {
                    throw new LuaError(luaValue.tojstring(), luaValue2.optint(1));
                }
                throw new LuaError(luaValue);
            }
            throw new LuaError(LuaValue.NIL);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class select extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            int i;
            int narg = varargs.narg() - 1;
            if (varargs.arg1().equals(LuaValue.valueOf("#"))) {
                return LuaValue.valueOf(narg);
            }
            int checkint = varargs.checkint(1);
            if (checkint == 0 || checkint < (-narg)) {
                LuaValue.argerror(1, "index out of range");
            }
            if (checkint < 0) {
                i = narg + checkint + 2;
            } else {
                i = checkint + 1;
            }
            return varargs.subargs(i);
        }
    }

    @Override // com.prineside.luaj.lib.ResourceFinder
    public InputStream findResource(String str) {
        Logger.log("BaseLib", "trying to load " + str);
        if (str.contains("..")) {
            Logger.error("BaseLib", "filename should not contain ../");
            return null;
        }
        FileHandle local = Gdx.files.external(str);
        if (!local.exists()) {
            local = Gdx.files.external(str);
        }
        if (!local.exists()) {
            return null;
        }
        return local.read();
    }

    public Varargs loadFile(String str, String str2, LuaValue luaValue) {
        InputStream findResource = this.f8134x.finder.findResource(str);
        if (findResource == null) {
            LuaValue luaValue2 = LuaValue.NIL;
            return LuaValue.varargsOf(luaValue2, LuaValue.valueOf("cannot open " + str + ": No such file or directory"));
        }
        try {
            return loadStream(findResource, "@" + str, str2, luaValue);
        } finally {
            try {
                findResource.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public Varargs loadStream(InputStream inputStream, String str, String str2, LuaValue luaValue) {
        try {
            if (inputStream == null) {
                LuaValue luaValue2 = LuaValue.NIL;
                return LuaValue.varargsOf(luaValue2, LuaValue.valueOf("not found: " + str));
            }
            return this.f8134x.load(inputStream, str, str2, luaValue);
        } catch (Exception e) {
            return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf(e.getMessage()));
        }
    }

    @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        Globals checkglobals = luaValue2.checkglobals();
        this.f8134x = checkglobals;
        checkglobals.finder = this;
        checkglobals.baselib = this;
        luaValue2.set("_G", luaValue2);
        luaValue2.set("_VERSION", Lua._VERSION);
        luaValue2.set("assert", new _assert());
        luaValue2.set("collectgarbage", new collectgarbage());
        luaValue2.set("dofile", new dofile());
        luaValue2.set("error", new error());
        luaValue2.set("getmetatable", new getmetatable());
        luaValue2.set("load", new load());
        luaValue2.set("loadfile", new loadfile());
        luaValue2.set("pcall", new pcall());
        luaValue2.set("print", new print(this));
        luaValue2.set("rawequal", new rawequal());
        luaValue2.set("rawget", new rawget());
        luaValue2.set("rawlen", new rawlen());
        luaValue2.set("rawset", new rawset());
        luaValue2.set("select", new select());
        luaValue2.set("setmetatable", new setmetatable());
        luaValue2.set("tonumber", new tonumber());
        luaValue2.set("tostring", new tostring());
        luaValue2.set("type", new C1448type());
        luaValue2.set("xpcall", new xpcall());
        next nextVar = new next();
        luaValue2.set("next", nextVar);
        luaValue2.set("pairs", new pairs(nextVar));
        luaValue2.set("ipairs", new ipairs());
        return luaValue2;
    }
}
