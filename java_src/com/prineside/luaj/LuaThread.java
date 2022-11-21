package com.prineside.luaj;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.LuaValue;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import java.lang.ref.WeakReference;
@REGS
/* loaded from: classes2.dex */
public class LuaThread extends LuaValue implements KryoSerializable {
    public static final int MAX_CALLSTACK = 256;
    public static final int STATUS_DEAD = 4;
    public static final int STATUS_INITIAL = 0;
    public static final String[] STATUS_NAMES = {"suspended", "suspended", "running", "normal", "dead"};
    public static final int STATUS_NORMAL = 3;
    public static final int STATUS_RUNNING = 2;
    public static final int STATUS_SUSPENDED = 1;
    public static int coroutine_count = 0;
    public static LuaValue s_metatable = null;
    public static long thread_orphan_check_interval = 5000;
    @NAGS
    public Object callstack;
    @NAGS
    public LuaValue errorfunc;
    public Globals globals;
    public State state;

    @REGS
    /* loaded from: classes2.dex */
    public static final class State implements Runnable, KryoSerializable {

        /* renamed from: a */
        public Globals f7995a;

        /* renamed from: b */
        public WeakReference f7996b;
        public int bytecodes;

        /* renamed from: d */
        public Varargs f7997d;
        public LuaValue function;
        public boolean hookcall;
        public int hookcount;
        public LuaValue hookfunc;
        public boolean hookline;
        public boolean hookrtrn;
        public boolean inhook;

        /* renamed from: k */
        public Varargs f7998k;
        public int lastline;

        /* renamed from: p */
        public String f7999p;
        public int status;

        public State() {
            LuaValue luaValue = LuaValue.NONE;
            this.f7997d = luaValue;
            this.f7998k = luaValue;
            this.f7999p = null;
            this.status = 0;
        }

        public synchronized Varargs lua_resume(LuaThread luaThread, Varargs varargs) {
            Varargs varargsOf;
            Globals globals = this.f7995a;
            LuaThread luaThread2 = globals.running;
            try {
                globals.running = luaThread;
                this.f7997d = varargs;
                if (this.status == 0) {
                    this.status = 2;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Coroutine-");
                    int i = LuaThread.coroutine_count + 1;
                    LuaThread.coroutine_count = i;
                    sb.append(i);
                    Thread thread = new Thread(this, sb.toString());
                    thread.setDaemon(true);
                    thread.start();
                    Logger.handleThreadExceptionsForgiving(thread);
                } else {
                    notify();
                }
                if (luaThread2 != null) {
                    luaThread2.state.status = 3;
                }
                this.status = 2;
                wait();
                String str = this.f7999p;
                if (str != null) {
                    varargsOf = LuaValue.varargsOf(LuaValue.FALSE, LuaValue.valueOf(str));
                } else {
                    varargsOf = LuaValue.varargsOf(LuaValue.TRUE, this.f7998k);
                }
                LuaValue luaValue = LuaValue.NONE;
                this.f7997d = luaValue;
                this.f7998k = luaValue;
                this.f7999p = null;
                this.f7995a.running = luaThread2;
                if (luaThread2 != null) {
                    luaThread2.state.status = 2;
                }
            } catch (InterruptedException unused) {
                throw new OrphanedThread();
            }
            return varargsOf;
        }

        public synchronized Varargs lua_yield(Varargs varargs) {
            Varargs varargs2;
            try {
                this.f7998k = varargs;
                this.status = 1;
                notify();
                do {
                    wait(LuaThread.thread_orphan_check_interval);
                    if (this.f7996b.get() == null) {
                        this.status = 4;
                        throw new OrphanedThread();
                    }
                } while (this.status == 1);
                varargs2 = this.f7997d;
                LuaValue luaValue = LuaValue.NONE;
                this.f7997d = luaValue;
                this.f7998k = luaValue;
            } catch (InterruptedException unused) {
                this.status = 4;
                throw new OrphanedThread();
            }
            return varargs2;
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            Varargs varargs = this.f7997d;
            this.f7997d = LuaValue.NONE;
            this.f7998k = this.function.invoke(varargs);
            this.status = 4;
            notify();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f7995a = (Globals) kryo.readObjectOrNull(input, Globals.class);
            this.f7996b = (WeakReference) kryo.readObjectOrNull(input, WeakReference.class);
            this.function = (LuaValue) kryo.readClassAndObject(input);
            this.f7997d = (Varargs) kryo.readClassAndObject(input);
            this.f7998k = (Varargs) kryo.readClassAndObject(input);
            this.f7999p = (String) kryo.readObjectOrNull(input, String.class);
            this.hookfunc = (LuaValue) kryo.readClassAndObject(input);
            this.hookline = input.readBoolean();
            this.hookcall = input.readBoolean();
            this.hookrtrn = input.readBoolean();
            this.hookcount = input.readInt();
            this.inhook = input.readBoolean();
            this.lastline = input.readInt();
            this.bytecodes = input.readInt();
            this.status = input.readInt();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f7995a, Globals.class);
            kryo.writeObjectOrNull(output, this.f7996b, WeakReference.class);
            LuaValue.NillableSerializer nillableSerializer = LuaValue.NILLABLE_SERIALIZER;
            nillableSerializer.writeClassAndObject(kryo, output, this.function);
            kryo.writeClassAndObject(output, this.f7997d);
            kryo.writeClassAndObject(output, this.f7998k);
            kryo.writeObjectOrNull(output, this.f7999p, String.class);
            nillableSerializer.writeClassAndObject(kryo, output, this.hookfunc);
            output.writeBoolean(this.hookline);
            output.writeBoolean(this.hookcall);
            output.writeBoolean(this.hookrtrn);
            output.writeInt(this.hookcount);
            output.writeBoolean(this.inhook);
            output.writeInt(this.lastline);
            output.writeInt(this.bytecodes);
            output.writeInt(this.status);
        }

        public State(Globals globals, LuaThread luaThread, LuaValue luaValue) {
            LuaValue luaValue2 = LuaValue.NONE;
            this.f7997d = luaValue2;
            this.f7998k = luaValue2;
            this.f7999p = null;
            this.status = 0;
            this.f7995a = globals;
            this.f7996b = new WeakReference(luaThread);
            this.function = luaValue;
        }
    }

    public LuaThread() {
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaThread checkthread() {
        return this;
    }

    public String getStatus() {
        return STATUS_NAMES[this.state.status];
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue getmetatable() {
        return s_metatable;
    }

    public boolean isMainThread() {
        return this.state.function == null;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean isthread() {
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaThread optthread(LuaThread luaThread) {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public int type() {
        return 8;
    }

    @Override // com.prineside.luaj.LuaValue
    public String typename() {
        return "thread";
    }

    public LuaThread(Globals globals) {
        State state = new State(globals, this, null);
        this.state = state;
        state.status = 2;
        this.globals = globals;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.state = (State) kryo.readObjectOrNull(input, State.class);
        this.callstack = kryo.readClassAndObject(input);
        this.globals = (Globals) kryo.readObjectOrNull(input, Globals.class);
        this.errorfunc = (LuaValue) kryo.readClassAndObject(input);
    }

    public Varargs resume(Varargs varargs) {
        String str;
        State state = this.state;
        if (state.status > 1) {
            LuaBoolean luaBoolean = LuaValue.FALSE;
            StringBuilder sb = new StringBuilder();
            sb.append("cannot resume ");
            if (state.status == 4) {
                str = "dead";
            } else {
                str = "non-suspended";
            }
            sb.append(str);
            sb.append(" coroutine");
            return LuaValue.varargsOf(luaBoolean, LuaValue.valueOf(sb.toString()));
        }
        return state.lua_resume(this, varargs);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.state, State.class);
        kryo.writeClassAndObject(output, this.callstack);
        kryo.writeObjectOrNull(output, this.globals, Globals.class);
        LuaValue.NILLABLE_SERIALIZER.writeClassAndObject(kryo, output, this.errorfunc);
    }

    public LuaThread(Globals globals, LuaValue luaValue) {
        LuaValue.assert_(luaValue != null, "function cannot be null");
        this.state = new State(globals, this, luaValue);
        this.globals = globals;
    }
}
