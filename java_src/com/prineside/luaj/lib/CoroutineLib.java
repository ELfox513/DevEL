package com.prineside.luaj.lib;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.Globals;
import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaThread;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class CoroutineLib extends TwoArgFunction {

    /* renamed from: x */
    public Globals f8147x;

    @REGS
    /* loaded from: classes2.dex */
    public static final class create extends LibFunction {

        /* renamed from: x */
        public CoroutineLib f8148x;

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return new LuaThread(this.f8148x.f8147x, luaValue.checkfunction());
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8148x = (CoroutineLib) kryo.readObject(input, CoroutineLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8148x);
        }

        public create() {
        }

        public create(CoroutineLib coroutineLib) {
            this.f8148x = coroutineLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class resume extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            return varargs.checkthread(1).resume(varargs.subargs(2));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class running extends VarArgFunction {

        /* renamed from: x */
        public CoroutineLib f8149x;

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8149x = (CoroutineLib) kryo.readObject(input, CoroutineLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8149x);
        }

        public running() {
        }

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThread = this.f8149x.f8147x.running;
            return LuaValue.varargsOf(luaThread, LuaValue.valueOf(luaThread.isMainThread()));
        }

        public running(CoroutineLib coroutineLib) {
            this.f8149x = coroutineLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class wrap extends LibFunction {

        /* renamed from: x */
        public CoroutineLib f8150x;

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8150x = (CoroutineLib) kryo.readObject(input, CoroutineLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8150x);
        }

        public wrap() {
        }

        public wrap(CoroutineLib coroutineLib) {
            this.f8150x = coroutineLib;
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return new wrapper(new LuaThread(this.f8150x.f8147x, luaValue.checkfunction()));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class wrapper extends VarArgFunction {

        /* renamed from: x */
        public LuaThread f8151x;

        public wrapper() {
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8151x = (LuaThread) kryo.readObjectOrNull(input, LuaThread.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f8151x, LuaThread.class);
        }

        public wrapper(LuaThread luaThread) {
            this.f8151x = luaThread;
        }

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            Varargs resume = this.f8151x.resume(varargs);
            if (resume.arg1().toboolean()) {
                return resume.subargs(2);
            }
            return LuaValue.error(resume.arg(2).tojstring());
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class yieldImpl extends VarArgFunction {

        /* renamed from: x */
        public CoroutineLib f8152x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            return this.f8152x.f8147x.yield(varargs);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8152x = (CoroutineLib) kryo.readObject(input, CoroutineLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8152x);
        }

        public yieldImpl() {
        }

        public yieldImpl(CoroutineLib coroutineLib) {
            this.f8152x = coroutineLib;
        }
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f8147x = (Globals) kryo.readObjectOrNull(input, Globals.class);
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.f8147x, Globals.class);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class status extends LibFunction {
        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.checkthread().getStatus());
        }
    }

    @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        this.f8147x = luaValue2.checkglobals();
        LuaTable luaTable = new LuaTable();
        luaTable.set("create", new create());
        luaTable.set("resume", new resume());
        luaTable.set("running", new running());
        luaTable.set("status", new status());
        luaTable.set("yield", new yieldImpl());
        luaTable.set("wrap", new wrap());
        luaValue2.set("coroutine", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get("loaded").set("coroutine", luaTable);
        }
        return luaTable;
    }
}
