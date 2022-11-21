package com.prineside.luaj.lib;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.Globals;
import com.prineside.luaj.Lua;
import com.prineside.luaj.LuaBoolean;
import com.prineside.luaj.LuaClosure;
import com.prineside.luaj.LuaError;
import com.prineside.luaj.LuaFunction;
import com.prineside.luaj.LuaNil;
import com.prineside.luaj.LuaNumber;
import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaThread;
import com.prineside.luaj.LuaUserdata;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Print;
import com.prineside.luaj.Prototype;
import com.prineside.luaj.UpValue;
import com.prineside.luaj.Upvaldesc;
import com.prineside.luaj.Varargs;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.utils.REGS;
import net.bytebuddy.description.type.TypeDescription;
@REGS
/* loaded from: classes2.dex */
public class DebugLib extends TwoArgFunction {

    /* renamed from: A */
    public static final LuaString f8153A;

    /* renamed from: B */
    public static final LuaString f8154B;

    /* renamed from: C */
    public static final LuaString f8155C;
    public static boolean CALLS;

    /* renamed from: D */
    public static final LuaString f8156D;

    /* renamed from: E */
    public static final LuaString f8157E;

    /* renamed from: F */
    public static final LuaString f8158F;

    /* renamed from: G */
    public static final LuaString f8159G;

    /* renamed from: H */
    public static final LuaString f8160H;

    /* renamed from: I */
    public static final LuaString f8161I;

    /* renamed from: J */
    public static final LuaString f8162J;

    /* renamed from: K */
    public static final LuaString f8163K;

    /* renamed from: L */
    public static final LuaString f8164L;

    /* renamed from: M */
    public static final LuaString f8165M;

    /* renamed from: N */
    public static final LuaString f8166N;

    /* renamed from: O */
    public static final LuaString f8167O;

    /* renamed from: P */
    public static final LuaString f8168P;

    /* renamed from: Q */
    public static final LuaString f8169Q;

    /* renamed from: R */
    public static final LuaString f8170R;
    public static boolean TRACE;

    /* renamed from: y */
    public static final LuaString f8171y;

    /* renamed from: z */
    public static final LuaString f8172z;

    /* renamed from: x */
    public Globals f8173x;

    @REGS(arrayLevels = 1)
    /* loaded from: classes2.dex */
    public static final class CallFrame implements KryoSerializable {

        /* renamed from: a */
        public LuaFunction f8174a;

        /* renamed from: b */
        public int f8175b;

        /* renamed from: d */
        public int f8176d;

        /* renamed from: k */
        public Varargs f8177k;

        /* renamed from: p */
        public LuaValue[] f8178p;

        /* renamed from: q */
        public CallFrame f8179q;

        /* renamed from: d */
        public int m22496d() {
            if (this.f8174a.isclosure()) {
                return this.f8174a.checkclosure().f7965p.linedefined;
            }
            return -1;
        }

        /* renamed from: e */
        public void m22495e() {
            this.f8174a = null;
            this.f8177k = null;
            this.f8178p = null;
        }

        /* renamed from: g */
        public void m22493g(LuaFunction luaFunction) {
            this.f8174a = luaFunction;
        }

        public String shortsource() {
            return this.f8174a.isclosure() ? this.f8174a.checkclosure().f7965p.shortsource() : "[Java]";
        }

        /* renamed from: b */
        public LuaString m22498b(int i) {
            if (!this.f8174a.isclosure()) {
                return null;
            }
            return this.f8174a.checkclosure().f7965p.getlocalname(i, this.f8175b);
        }

        /* renamed from: c */
        public void m22497c(int i, Varargs varargs, int i2) {
            this.f8175b = i;
            this.f8177k = varargs;
            this.f8176d = i2;
            if (DebugLib.TRACE) {
                Print.printState(this.f8174a.checkclosure(), i, this.f8178p, i2, varargs);
            }
        }

        public int currentline() {
            int[] iArr;
            int i;
            if (!this.f8174a.isclosure() || (iArr = this.f8174a.checkclosure().f7965p.lineinfo) == null || (i = this.f8175b) < 0 || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        /* renamed from: f */
        public void m22494f(LuaClosure luaClosure, Varargs varargs, LuaValue[] luaValueArr) {
            this.f8174a = luaClosure;
            this.f8177k = varargs;
            this.f8178p = luaValueArr;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.f8174a);
            output.writeInt(this.f8175b);
            output.writeInt(this.f8176d);
            kryo.writeClassAndObject(output, this.f8177k);
            LuaValue.NILLABLE_SERIALIZER.writeClassAndObject(kryo, output, this.f8178p);
            kryo.writeObjectOrNull(output, this.f8179q, CallFrame.class);
        }

        /* renamed from: a */
        public Varargs m22499a(int i) {
            LuaValue luaValue;
            LuaValue m22498b = m22498b(i);
            if (i >= 1) {
                LuaValue[] luaValueArr = this.f8178p;
                if (i <= luaValueArr.length && (luaValue = luaValueArr[i - 1]) != null) {
                    if (m22498b == null) {
                        m22498b = LuaValue.NIL;
                    }
                    return LuaValue.varargsOf(m22498b, luaValue);
                }
            }
            return LuaValue.NIL;
        }

        /* renamed from: h */
        public Varargs m22492h(int i, LuaValue luaValue) {
            LuaString m22498b = m22498b(i);
            if (i >= 1) {
                LuaValue[] luaValueArr = this.f8178p;
                if (i <= luaValueArr.length) {
                    int i2 = i - 1;
                    if (luaValueArr[i2] != null) {
                        luaValueArr[i2] = luaValue;
                        if (m22498b == null) {
                            return LuaValue.NIL;
                        }
                        return m22498b;
                    }
                }
            }
            return LuaValue.NIL;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8174a = (LuaFunction) kryo.readClassAndObject(input);
            this.f8175b = input.readInt();
            this.f8176d = input.readInt();
            this.f8177k = (Varargs) kryo.readClassAndObject(input);
            this.f8178p = (LuaValue[]) kryo.readClassAndObject(input);
            this.f8179q = (CallFrame) kryo.readObjectOrNull(input, CallFrame.class);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class CallStack implements KryoSerializable {

        /* renamed from: d */
        public static final CallFrame[] f8180d = new CallFrame[0];

        /* renamed from: a */
        public CallFrame[] f8181a = f8180d;

        /* renamed from: b */
        public int f8182b = 0;

        /* renamed from: a */
        public synchronized DebugInfo m22491a(String str, LuaFunction luaFunction, CallFrame callFrame) {
            DebugInfo debugInfo;
            int i;
            CallFrame callFrame2;
            NameWhat m22501x;
            debugInfo = new DebugInfo();
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i2);
                if (charAt != 'S') {
                    if (charAt != 'l') {
                        if (charAt != 'n') {
                            if (charAt != 't') {
                                if (charAt == 'u') {
                                    boolean z = true;
                                    if (luaFunction != null && luaFunction.isclosure()) {
                                        Prototype prototype = luaFunction.checkclosure().f7965p;
                                        debugInfo.f8190h = (short) prototype.upvalues.length;
                                        debugInfo.f8191i = (short) prototype.numparams;
                                        if (prototype.is_vararg == 0) {
                                            z = false;
                                        }
                                        debugInfo.f8192j = z;
                                    } else {
                                        debugInfo.f8190h = (short) 0;
                                        debugInfo.f8192j = true;
                                        debugInfo.f8191i = (short) 0;
                                    }
                                }
                            } else {
                                debugInfo.f8193k = false;
                            }
                        } else {
                            if (callFrame != null && (callFrame2 = callFrame.f8179q) != null && callFrame2.f8174a.isclosure() && (m22501x = DebugLib.m22501x(callFrame.f8179q)) != null) {
                                debugInfo.f8183a = m22501x.f8195a;
                                debugInfo.f8184b = m22501x.f8196b;
                            }
                            if (debugInfo.f8184b == null) {
                                debugInfo.f8184b = "";
                                debugInfo.f8183a = null;
                            }
                        }
                    } else {
                        if (callFrame != null && callFrame.f8174a.isclosure()) {
                            i = callFrame.currentline();
                        } else {
                            i = -1;
                        }
                        debugInfo.f8187e = i;
                    }
                } else {
                    debugInfo.funcinfo(luaFunction);
                }
            }
            return debugInfo;
        }

        /* renamed from: b */
        public synchronized int m22490b() {
            int i;
            i = this.f8182b;
            return i > 0 ? this.f8181a[i - 1].currentline() : -1;
        }

        /* renamed from: c */
        public synchronized CallFrame m22489c(LuaValue luaValue) {
            int i = 1;
            while (true) {
                int i2 = this.f8182b;
                if (i <= i2) {
                    CallFrame[] callFrameArr = this.f8181a;
                    if (callFrameArr[i2 - i].f8174a == luaValue) {
                        return callFrameArr[i];
                    }
                    i++;
                } else {
                    return null;
                }
            }
        }

        /* renamed from: d */
        public synchronized CallFrame m22488d(int i) {
            if (i >= 1) {
                int i2 = this.f8182b;
                if (i <= i2) {
                    return this.f8181a[i2 - i];
                }
            }
            return null;
        }

        /* renamed from: e */
        public final synchronized void m22487e(LuaClosure luaClosure, Varargs varargs, LuaValue[] luaValueArr) {
            m22483i().m22494f(luaClosure, varargs, luaValueArr);
        }

        /* renamed from: f */
        public final synchronized void m22486f(LuaFunction luaFunction) {
            m22483i().m22493g(luaFunction);
        }

        /* renamed from: g */
        public final synchronized void m22485g(int i, Varargs varargs, int i2) {
            int i3 = this.f8182b;
            if (i3 > 0) {
                this.f8181a[i3 - 1].m22497c(i, varargs, i2);
            }
        }

        /* renamed from: h */
        public final synchronized void m22484h() {
            int i = this.f8182b;
            if (i > 0) {
                CallFrame[] callFrameArr = this.f8181a;
                int i2 = i - 1;
                this.f8182b = i2;
                callFrameArr[i2].m22495e();
            }
        }

        /* renamed from: i */
        public final synchronized CallFrame m22483i() {
            CallFrame[] callFrameArr;
            int i;
            int i2 = this.f8182b;
            CallFrame[] callFrameArr2 = this.f8181a;
            if (i2 >= callFrameArr2.length) {
                int max = Math.max(4, (callFrameArr2.length * 3) / 2);
                CallFrame[] callFrameArr3 = new CallFrame[max];
                CallFrame[] callFrameArr4 = this.f8181a;
                System.arraycopy(callFrameArr4, 0, callFrameArr3, 0, callFrameArr4.length);
                for (int length = this.f8181a.length; length < max; length++) {
                    callFrameArr3[length] = new CallFrame();
                }
                this.f8181a = callFrameArr3;
                for (int i3 = 1; i3 < max; i3++) {
                    callFrameArr3[i3].f8179q = callFrameArr3[i3 - 1];
                }
            }
            callFrameArr = this.f8181a;
            i = this.f8182b;
            this.f8182b = i + 1;
            return callFrameArr[i];
        }

        /* renamed from: j */
        public synchronized String m22482j(int i) {
            StringBuffer stringBuffer;
            stringBuffer = new StringBuffer();
            stringBuffer.append("stack traceback:");
            while (true) {
                int i2 = i + 1;
                CallFrame m22488d = m22488d(i);
                if (m22488d != null) {
                    stringBuffer.append("\n\t");
                    stringBuffer.append(m22488d.shortsource());
                    stringBuffer.append(':');
                    if (m22488d.currentline() > 0) {
                        stringBuffer.append(m22488d.currentline() + ":");
                    }
                    stringBuffer.append(" in ");
                    DebugInfo m22491a = m22491a("n", m22488d.f8174a, m22488d);
                    if (m22488d.m22496d() == 0) {
                        stringBuffer.append("main chunk");
                    } else if (m22491a.f8183a != null) {
                        stringBuffer.append("function '");
                        stringBuffer.append(m22491a.f8183a);
                        stringBuffer.append('\'');
                    } else {
                        stringBuffer.append("function <");
                        stringBuffer.append(m22488d.shortsource());
                        stringBuffer.append(':');
                        stringBuffer.append(m22488d.m22496d());
                        stringBuffer.append('>');
                    }
                    i = i2;
                } else {
                    stringBuffer.append("\n\t[Java]: in ?");
                }
            }
            return stringBuffer.toString();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8181a = (CallFrame[]) kryo.readObject(input, CallFrame[].class);
            this.f8182b = input.readInt();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8181a);
            output.writeInt(this.f8182b);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class debug extends ZeroArgFunction {
        @Override // com.prineside.luaj.lib.ZeroArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call() {
            return LuaValue.NONE;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class gethook extends VarArgFunction {

        /* renamed from: x */
        public DebugLib f8197x;

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8197x = (DebugLib) kryo.readObject(input, DebugLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8197x);
        }

        public gethook() {
        }

        public gethook(DebugLib debugLib) {
            this.f8197x = debugLib;
        }

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThread;
            String str;
            String str2;
            if (varargs.narg() > 0) {
                luaThread = varargs.checkthread(1);
            } else {
                luaThread = this.f8197x.f8173x.running;
            }
            LuaThread.State state = luaThread.state;
            LuaValue luaValue = state.hookfunc;
            if (luaValue == null) {
                luaValue = LuaValue.NIL;
            }
            StringBuilder sb = new StringBuilder();
            String str3 = "";
            if (!state.hookcall) {
                str = "";
            } else {
                str = "c";
            }
            sb.append(str);
            if (!state.hookline) {
                str2 = "";
            } else {
                str2 = "l";
            }
            sb.append(str2);
            if (state.hookrtrn) {
                str3 = "r";
            }
            sb.append(str3);
            return LuaValue.varargsOf(luaValue, LuaValue.valueOf(sb.toString()), LuaValue.valueOf(state.hookcount));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class getinfo extends VarArgFunction {

        /* renamed from: x */
        public DebugLib f8198x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThread;
            int i;
            CallFrame m22489c;
            LuaNumber luaNumber;
            int i2 = 1;
            if (varargs.isthread(1)) {
                luaThread = varargs.checkthread(1);
                i = 2;
            } else {
                luaThread = this.f8198x.f8173x.running;
                i = 1;
            }
            int i3 = i + 1;
            LuaValue arg = varargs.arg(i);
            int i4 = i3 + 1;
            String optjstring = varargs.optjstring(i3, "flnStu");
            CallStack m22504u = this.f8198x.m22504u(luaThread);
            if (arg.isnumber()) {
                m22489c = m22504u.m22488d(arg.toint());
                if (m22489c == null) {
                    return LuaValue.NONE;
                }
                arg = m22489c.f8174a;
            } else if (arg.isfunction()) {
                m22489c = m22504u.m22489c(arg);
            } else {
                return LuaValue.argerror(i4 - 2, "function or level");
            }
            DebugInfo m22491a = m22504u.m22491a(optjstring, (LuaFunction) arg, m22489c);
            LuaTable luaTable = new LuaTable();
            if (optjstring.indexOf(83) >= 0) {
                luaTable.set(DebugLib.f8164L, DebugLib.f8171y);
                luaTable.set(DebugLib.f8165M, LuaValue.valueOf(m22491a.f8186d));
                luaTable.set(DebugLib.f8166N, LuaValue.valueOf(m22491a.f8194l));
                luaTable.set(DebugLib.f8167O, LuaValue.valueOf(m22491a.f8188f));
                luaTable.set(DebugLib.f8168P, LuaValue.valueOf(m22491a.f8189g));
            }
            if (optjstring.indexOf(108) >= 0) {
                luaTable.set(DebugLib.f8169Q, LuaValue.valueOf(m22491a.f8187e));
            }
            if (optjstring.indexOf(117) >= 0) {
                luaTable.set(DebugLib.f8160H, LuaValue.valueOf((int) m22491a.f8190h));
                luaTable.set(DebugLib.f8161I, LuaValue.valueOf((int) m22491a.f8191i));
                LuaString luaString = DebugLib.f8159G;
                if (m22491a.f8192j) {
                    luaNumber = LuaValue.ONE;
                } else {
                    luaNumber = LuaValue.ZERO;
                }
                luaTable.set(luaString, luaNumber);
            }
            if (optjstring.indexOf(110) >= 0) {
                LuaString luaString2 = DebugLib.f8162J;
                String str = m22491a.f8183a;
                if (str == null) {
                    str = TypeDescription.Generic.OfWildcardType.SYMBOL;
                }
                luaTable.set(luaString2, LuaValue.valueOf(str));
                luaTable.set(DebugLib.f8163K, LuaValue.valueOf(m22491a.f8184b));
            }
            if (optjstring.indexOf(116) >= 0) {
                luaTable.set(DebugLib.f8158F, LuaValue.ZERO);
            }
            if (optjstring.indexOf(76) >= 0) {
                LuaTable luaTable2 = new LuaTable();
                luaTable.set(DebugLib.f8170R, luaTable2);
                while (true) {
                    CallFrame m22488d = m22504u.m22488d(i2);
                    if (m22488d == null) {
                        break;
                    }
                    if (m22488d.f8174a == arg) {
                        luaTable2.insert(-1, LuaValue.valueOf(m22488d.currentline()));
                    }
                    i2++;
                }
            }
            if (optjstring.indexOf(102) >= 0 && arg != null) {
                luaTable.set(DebugLib.f8157E, arg);
            }
            return luaTable;
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8198x = (DebugLib) kryo.readObject(input, DebugLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8198x);
        }

        public getinfo() {
        }

        public getinfo(DebugLib debugLib) {
            this.f8198x = debugLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class getlocal extends VarArgFunction {

        /* renamed from: x */
        public DebugLib f8199x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThread;
            int i;
            if (varargs.isthread(1)) {
                i = 2;
                luaThread = varargs.checkthread(1);
            } else {
                luaThread = this.f8199x.f8173x.running;
                i = 1;
            }
            int i2 = i + 1;
            int checkint = varargs.checkint(i);
            int checkint2 = varargs.checkint(i2);
            CallFrame m22488d = this.f8199x.m22504u(luaThread).m22488d(checkint);
            if (m22488d != null) {
                return m22488d.m22499a(checkint2);
            }
            return LuaValue.NONE;
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8199x = (DebugLib) kryo.readObject(input, DebugLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8199x);
        }

        public getlocal() {
        }

        public getlocal(DebugLib debugLib) {
            this.f8199x = debugLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class getregistry extends ZeroArgFunction {

        /* renamed from: x */
        public DebugLib f8200x;

        @Override // com.prineside.luaj.lib.ZeroArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call() {
            return this.f8200x.f8173x;
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8200x = (DebugLib) kryo.readObject(input, DebugLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8200x);
        }

        public getregistry() {
        }

        public getregistry(DebugLib debugLib) {
            this.f8200x = debugLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class getupvalue extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaClosure luaClosure;
            LuaString m22502w;
            LuaFunction checkfunction = varargs.checkfunction(1);
            int checkint = varargs.checkint(2);
            if ((checkfunction instanceof LuaClosure) && (m22502w = DebugLib.m22502w((luaClosure = (LuaClosure) checkfunction), checkint)) != null) {
                return LuaValue.varargsOf(m22502w, luaClosure.upValues[checkint - 1].getValue());
            }
            return LuaValue.NIL;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class getuservalue extends LibFunction {
        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return luaValue.isuserdata() ? luaValue : LuaValue.NIL;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class sethook extends VarArgFunction {

        /* renamed from: x */
        public DebugLib f8201x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThread;
            int i;
            if (varargs.isthread(1)) {
                i = 2;
                luaThread = varargs.checkthread(1);
            } else {
                luaThread = this.f8201x.f8173x.running;
                i = 1;
            }
            int i2 = i + 1;
            LuaFunction optfunction = varargs.optfunction(i, null);
            int i3 = i2 + 1;
            String optjstring = varargs.optjstring(i2, "");
            int optint = varargs.optint(i3, 0);
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            for (int i4 = 0; i4 < optjstring.length(); i4++) {
                char charAt = optjstring.charAt(i4);
                if (charAt != 'c') {
                    if (charAt != 'l') {
                        if (charAt == 'r') {
                            z3 = true;
                        }
                    } else {
                        z2 = true;
                    }
                } else {
                    z = true;
                }
            }
            LuaThread.State state = luaThread.state;
            state.hookfunc = optfunction;
            state.hookcall = z;
            state.hookline = z2;
            state.hookcount = optint;
            state.hookrtrn = z3;
            return LuaValue.NONE;
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8201x = (DebugLib) kryo.readObject(input, DebugLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8201x);
        }

        public sethook() {
        }

        public sethook(DebugLib debugLib) {
            this.f8201x = debugLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class setlocal extends VarArgFunction {

        /* renamed from: x */
        public DebugLib f8202x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThread;
            int i;
            if (varargs.isthread(1)) {
                i = 2;
                luaThread = varargs.checkthread(1);
            } else {
                luaThread = this.f8202x.f8173x.running;
                i = 1;
            }
            int i2 = i + 1;
            int checkint = varargs.checkint(i);
            int i3 = i2 + 1;
            int checkint2 = varargs.checkint(i2);
            LuaValue arg = varargs.arg(i3);
            CallFrame m22488d = this.f8202x.m22504u(luaThread).m22488d(checkint);
            if (m22488d != null) {
                return m22488d.m22492h(checkint2, arg);
            }
            return LuaValue.NONE;
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8202x = (DebugLib) kryo.readObject(input, DebugLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8202x);
        }

        public setlocal() {
        }

        public setlocal(DebugLib debugLib) {
            this.f8202x = debugLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class setmetatable extends TwoArgFunction {
        @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            Logger.log("DebugLib", "setmetatable");
            LuaTable opttable = luaValue2.opttable(null);
            int type = luaValue.type();
            if (type != 0) {
                if (type != 1) {
                    if (type != 3) {
                        if (type != 4) {
                            if (type != 6) {
                                if (type != 8) {
                                    luaValue.setmetatable(opttable);
                                } else {
                                    LuaThread.s_metatable = opttable;
                                }
                            } else {
                                LuaFunction.s_metatable = opttable;
                            }
                        } else {
                            LuaString.s_metatable = opttable;
                        }
                    } else {
                        LuaNumber.s_metatable = opttable;
                    }
                } else {
                    LuaBoolean.s_metatable = opttable;
                }
            } else {
                LuaNil.s_metatable = opttable;
            }
            return luaValue;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class setupvalue extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaClosure luaClosure;
            LuaString m22502w;
            LuaFunction checkfunction = varargs.checkfunction(1);
            int checkint = varargs.checkint(2);
            LuaValue arg = varargs.arg(3);
            if ((checkfunction instanceof LuaClosure) && (m22502w = DebugLib.m22502w((luaClosure = (LuaClosure) checkfunction), checkint)) != null) {
                luaClosure.upValues[checkint - 1].setValue(arg);
                return m22502w;
            }
            return LuaValue.NIL;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class setuservalue extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            varargs.checkuserdata(1);
            LuaValue checkvalue = varargs.checkvalue(2);
            LuaUserdata luaUserdata = (LuaUserdata) varargs.arg1();
            Object checkuserdata = checkvalue.checkuserdata();
            luaUserdata.m_instance = checkuserdata;
            if (checkuserdata != null) {
                luaUserdata.m_metatable = checkvalue.getmetatable();
                return LuaValue.NONE;
            }
            throw new IllegalStateException("u.m_instance is null");
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class traceback extends VarArgFunction {

        /* renamed from: x */
        public DebugLib f8203x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThread;
            int i;
            if (varargs.isthread(1)) {
                i = 2;
                luaThread = varargs.checkthread(1);
            } else {
                luaThread = this.f8203x.f8173x.running;
                i = 1;
            }
            int i2 = i + 1;
            String optjstring = varargs.optjstring(i, null);
            String m22482j = this.f8203x.m22504u(luaThread).m22482j(varargs.optint(i2, 1));
            if (optjstring != null) {
                m22482j = optjstring + "\n" + m22482j;
            }
            return LuaValue.valueOf(m22482j);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8203x = (DebugLib) kryo.readObject(input, DebugLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8203x);
        }

        public traceback() {
        }

        public traceback(DebugLib debugLib) {
            this.f8203x = debugLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class upvalueid extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            UpValue[] upValueArr;
            LuaFunction checkfunction = varargs.checkfunction(1);
            int checkint = varargs.checkint(2);
            if ((checkfunction instanceof LuaClosure) && (upValueArr = ((LuaClosure) checkfunction).upValues) != null && checkint > 0 && checkint <= upValueArr.length) {
                return LuaValue.valueOf(upValueArr[checkint - 1].hashCode());
            }
            return LuaValue.NIL;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class upvaluejoin extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaClosure checkclosure = varargs.checkclosure(1);
            int checkint = varargs.checkint(2);
            LuaClosure checkclosure2 = varargs.checkclosure(3);
            int checkint2 = varargs.checkint(4);
            if (checkint < 1 || checkint > checkclosure.upValues.length) {
                m22787b("index out of range");
            }
            if (checkint2 < 1 || checkint2 > checkclosure2.upValues.length) {
                m22787b("index out of range");
            }
            checkclosure.upValues[checkint - 1] = checkclosure2.upValues[checkint2 - 1];
            return LuaValue.NONE;
        }
    }

    static {
        boolean z;
        boolean z2 = true;
        try {
            if (System.getProperty("CALLS") != null) {
                z = true;
            } else {
                z = false;
            }
            CALLS = z;
        } catch (Exception unused) {
        }
        try {
            if (System.getProperty("TRACE") == null) {
                z2 = false;
            }
            TRACE = z2;
        } catch (Exception unused2) {
        }
        f8171y = LuaValue.valueOf("Lua");
        f8172z = LuaValue.valueOf(TypeDescription.Generic.OfWildcardType.SYMBOL);
        f8153A = LuaValue.valueOf("call");
        f8154B = LuaValue.valueOf("line");
        f8155C = LuaValue.valueOf("count");
        f8156D = LuaValue.valueOf("return");
        f8157E = LuaValue.valueOf("func");
        f8158F = LuaValue.valueOf("istailcall");
        f8159G = LuaValue.valueOf("isvararg");
        f8160H = LuaValue.valueOf("nups");
        f8161I = LuaValue.valueOf("nparams");
        f8162J = LuaValue.valueOf("name");
        f8163K = LuaValue.valueOf("namewhat");
        f8164L = LuaValue.valueOf("what");
        f8165M = LuaValue.valueOf("source");
        f8166N = LuaValue.valueOf("short_src");
        f8167O = LuaValue.valueOf("linedefined");
        f8168P = LuaValue.valueOf("lastlinedefined");
        f8169Q = LuaValue.valueOf("currentline");
        f8170R = LuaValue.valueOf("activelines");
    }

    /* renamed from: v */
    public static int m22503v(Prototype prototype, int i, int i2) {
        int i3 = -1;
        int i4 = 0;
        while (i4 < i) {
            int i5 = prototype.code[i4];
            int GET_OPCODE = Lua.GET_OPCODE(i5);
            int GETARG_A = Lua.GETARG_A(i5);
            if (GET_OPCODE != 4) {
                if (GET_OPCODE != 23) {
                    if (GET_OPCODE != 27) {
                        if (GET_OPCODE != 34) {
                            if (GET_OPCODE != 36) {
                                if (GET_OPCODE != 29 && GET_OPCODE != 30) {
                                    if (Lua.testAMode(GET_OPCODE)) {
                                        if (i2 != GETARG_A) {
                                        }
                                        i3 = i4;
                                    }
                                } else {
                                    if (i2 < GETARG_A) {
                                    }
                                    i3 = i4;
                                }
                            } else if (((i5 >> 14) & 511) == 0) {
                                i4++;
                            }
                        } else {
                            if (i2 < GETARG_A + 2) {
                            }
                            i3 = i4;
                        }
                    } else {
                        if (i2 != GETARG_A) {
                        }
                        i3 = i4;
                    }
                } else {
                    int GETARG_sBx = Lua.GETARG_sBx(i5);
                    int i6 = i4 + 1 + GETARG_sBx;
                    if (i4 < i6 && i6 <= i) {
                        i4 += GETARG_sBx;
                    }
                }
                i4++;
            } else {
                int GETARG_B = Lua.GETARG_B(i5);
                if (GETARG_A <= i2) {
                    if (i2 > GETARG_A + GETARG_B) {
                    }
                    i3 = i4;
                }
                i4++;
            }
        }
        return i3;
    }

    public CallFrame getCallFrame(int i) {
        return m22505t().m22488d(i);
    }

    public void onCall(LuaFunction luaFunction) {
        LuaThread.State state = this.f8173x.running.state;
        if (state.inhook) {
            return;
        }
        m22505t().m22486f(luaFunction);
        if (state.hookcall) {
            m22506s(state, f8153A, LuaValue.NIL);
        }
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f8173x = (Globals) kryo.readObjectOrNull(input, Globals.class);
    }

    /* renamed from: t */
    public CallStack m22505t() {
        return m22504u(this.f8173x.running);
    }

    public String traceback(int i) {
        return m22505t().m22482j(i);
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.f8173x, Globals.class);
    }

    /* loaded from: classes2.dex */
    public static class DebugInfo {

        /* renamed from: a */
        public String f8183a;

        /* renamed from: b */
        public String f8184b;

        /* renamed from: c */
        public String f8185c;

        /* renamed from: d */
        public String f8186d;

        /* renamed from: e */
        public int f8187e;

        /* renamed from: f */
        public int f8188f;

        /* renamed from: g */
        public int f8189g;

        /* renamed from: h */
        public short f8190h;

        /* renamed from: i */
        public short f8191i;

        /* renamed from: j */
        public boolean f8192j;

        /* renamed from: k */
        public boolean f8193k;

        /* renamed from: l */
        public String f8194l;

        public void funcinfo(LuaFunction luaFunction) {
            String str;
            String str2;
            if (luaFunction.isclosure()) {
                Prototype prototype = luaFunction.checkclosure().f7965p;
                LuaString luaString = prototype.source;
                if (luaString != null) {
                    str = luaString.tojstring();
                } else {
                    str = "=?";
                }
                this.f8186d = str;
                int i = prototype.linedefined;
                this.f8188f = i;
                this.f8189g = prototype.lastlinedefined;
                if (i == 0) {
                    str2 = "main";
                } else {
                    str2 = "Lua";
                }
                this.f8185c = str2;
                this.f8194l = prototype.shortsource();
                return;
            }
            this.f8186d = "=[Java]";
            this.f8188f = -1;
            this.f8189g = -1;
            this.f8185c = "Java";
            this.f8194l = luaFunction.name();
        }
    }

    /* loaded from: classes2.dex */
    public static class NameWhat {

        /* renamed from: a */
        public final String f8195a;

        /* renamed from: b */
        public final String f8196b;

        public NameWhat(String str, String str2) {
            this.f8195a = str;
            this.f8196b = str2;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class getmetatable extends LibFunction {
        @Override // com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            LuaValue luaValue2 = luaValue.getmetatable();
            if (luaValue2 == null) {
                return LuaValue.NIL;
            }
            return luaValue2;
        }
    }

    public static NameWhat getobjname(Prototype prototype, int i, int i2) {
        int GETARG_Ax;
        LuaString luaString;
        LuaString luaString2;
        String str;
        LuaString luaString3 = prototype.getlocalname(i2 + 1, i);
        if (luaString3 != null) {
            return new NameWhat(luaString3.tojstring(), "local");
        }
        int m22503v = m22503v(prototype, i, i2);
        if (m22503v != -1) {
            int i3 = prototype.code[m22503v];
            int GET_OPCODE = Lua.GET_OPCODE(i3);
            if (GET_OPCODE != 0) {
                if (GET_OPCODE != 1 && GET_OPCODE != 2) {
                    if (GET_OPCODE != 5) {
                        if (GET_OPCODE != 6 && GET_OPCODE != 7) {
                            if (GET_OPCODE == 12) {
                                return new NameWhat(m22500y(prototype, m22503v, Lua.GETARG_C(i3)), "method");
                            }
                        } else {
                            int GETARG_C = Lua.GETARG_C(i3);
                            int GETARG_B = Lua.GETARG_B(i3);
                            if (Lua.GET_OPCODE(i3) == 7) {
                                luaString2 = prototype.getlocalname(GETARG_B + 1, m22503v);
                            } else {
                                Upvaldesc[] upvaldescArr = prototype.upvalues;
                                if (GETARG_B < upvaldescArr.length) {
                                    luaString2 = upvaldescArr[GETARG_B].name;
                                } else {
                                    luaString2 = f8172z;
                                }
                            }
                            String m22500y = m22500y(prototype, m22503v, GETARG_C);
                            if (luaString2 != null && luaString2.eq_b(LuaValue.ENV)) {
                                str = "global";
                            } else {
                                str = "field";
                            }
                            return new NameWhat(m22500y, str);
                        }
                    } else {
                        int GETARG_B2 = Lua.GETARG_B(i3);
                        Upvaldesc[] upvaldescArr2 = prototype.upvalues;
                        if (GETARG_B2 < upvaldescArr2.length) {
                            luaString = upvaldescArr2[GETARG_B2].name;
                        } else {
                            luaString = f8172z;
                        }
                        if (luaString == null) {
                            return null;
                        }
                        return new NameWhat(luaString.tojstring(), "upvalue");
                    }
                } else {
                    if (Lua.GET_OPCODE(i3) == 1) {
                        GETARG_Ax = Lua.GETARG_Bx(i3);
                    } else {
                        GETARG_Ax = Lua.GETARG_Ax(prototype.code[m22503v + 1]);
                    }
                    if (prototype.f8017k[GETARG_Ax].isstring()) {
                        return new NameWhat(prototype.f8017k[GETARG_Ax].strvalue().tojstring(), "constant");
                    }
                }
            } else {
                int GETARG_A = Lua.GETARG_A(i3);
                int GETARG_B3 = Lua.GETARG_B(i3);
                if (GETARG_B3 < GETARG_A) {
                    return getobjname(prototype, m22503v, GETARG_B3);
                }
            }
        }
        return null;
    }

    /* renamed from: w */
    public static LuaString m22502w(LuaClosure luaClosure, int i) {
        UpValue[] upValueArr = luaClosure.upValues;
        if (upValueArr != null && i > 0 && i <= upValueArr.length) {
            Upvaldesc[] upvaldescArr = luaClosure.f7965p.upvalues;
            if (upvaldescArr != null && i <= upvaldescArr.length) {
                return upvaldescArr[i - 1].name;
            }
            return LuaString.valueOf("." + i);
        }
        return null;
    }

    /* renamed from: x */
    public static NameWhat m22501x(CallFrame callFrame) {
        LuaString luaString;
        if (!callFrame.f8174a.isclosure()) {
            return new NameWhat(callFrame.f8174a.classnamestub(), "Java");
        }
        Prototype prototype = callFrame.f8174a.checkclosure().f7965p;
        int i = callFrame.f8175b;
        int i2 = prototype.code[i];
        switch (Lua.GET_OPCODE(i2)) {
            case 6:
            case 7:
            case 12:
                luaString = LuaValue.INDEX;
                break;
            case 8:
            case 10:
                luaString = LuaValue.NEWINDEX;
                break;
            case 9:
            case 11:
            case 20:
            case 23:
            case 27:
            case 28:
            case 31:
            case 32:
            case 33:
            default:
                return null;
            case 13:
                luaString = LuaValue.ADD;
                break;
            case 14:
                luaString = LuaValue.SUB;
                break;
            case 15:
                luaString = LuaValue.MUL;
                break;
            case 16:
                luaString = LuaValue.DIV;
                break;
            case 17:
                luaString = LuaValue.MOD;
                break;
            case 18:
                luaString = LuaValue.POW;
                break;
            case 19:
                luaString = LuaValue.UNM;
                break;
            case 21:
                luaString = LuaValue.LEN;
                break;
            case 22:
                luaString = LuaValue.CONCAT;
                break;
            case 24:
                luaString = LuaValue.f8000EQ;
                break;
            case 25:
                luaString = LuaValue.f8002LT;
                break;
            case 26:
                luaString = LuaValue.f8001LE;
                break;
            case 29:
            case 30:
                return getobjname(prototype, i, Lua.GETARG_A(i2));
            case 34:
                return new NameWhat("(for iterator)", "(for iterator");
        }
        return new NameWhat(luaString.tojstring(), "metamethod");
    }

    public void onInstruction(int i, Varargs varargs, int i2) {
        int m22490b;
        LuaThread.State state = this.f8173x.running.state;
        if (state.inhook) {
            return;
        }
        m22505t().m22485g(i, varargs, i2);
        if (state.hookfunc == null) {
            return;
        }
        int i3 = state.hookcount;
        if (i3 > 0) {
            int i4 = state.bytecodes + 1;
            state.bytecodes = i4;
            if (i4 % i3 == 0) {
                m22506s(state, f8155C, LuaValue.NIL);
            }
        }
        if (state.hookline && (m22490b = m22505t().m22490b()) != state.lastline) {
            state.lastline = m22490b;
            m22506s(state, f8154B, LuaValue.valueOf(m22490b));
        }
    }

    public void onReturn() {
        LuaThread.State state = this.f8173x.running.state;
        if (state.inhook) {
            return;
        }
        m22505t().m22484h();
        if (state.hookrtrn) {
            m22506s(state, f8156D, LuaValue.NIL);
        }
    }

    /* renamed from: s */
    public void m22506s(LuaThread.State state, LuaValue luaValue, LuaValue luaValue2) {
        LuaValue luaValue3;
        if (!state.inhook && (luaValue3 = state.hookfunc) != null) {
            state.inhook = true;
            try {
                try {
                    luaValue3.call(luaValue, luaValue2);
                } catch (LuaError e) {
                    throw e;
                } catch (RuntimeException e2) {
                    throw new LuaError(e2);
                }
            } finally {
                state.inhook = false;
            }
        }
    }

    /* renamed from: u */
    public CallStack m22504u(LuaThread luaThread) {
        if (luaThread.callstack == null) {
            luaThread.callstack = new CallStack();
        }
        return (CallStack) luaThread.callstack;
    }

    /* renamed from: y */
    public static String m22500y(Prototype prototype, int i, int i2) {
        if (Lua.ISK(i2)) {
            LuaValue luaValue = prototype.f8017k[Lua.INDEXK(i2)];
            if (luaValue.isstring()) {
                return luaValue.tojstring();
            }
            return TypeDescription.Generic.OfWildcardType.SYMBOL;
        }
        NameWhat nameWhat = getobjname(prototype, i, i2);
        if (nameWhat != null && "constant".equals(nameWhat.f8196b)) {
            return nameWhat.f8195a;
        }
        return TypeDescription.Generic.OfWildcardType.SYMBOL;
    }

    @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        Globals checkglobals = luaValue2.checkglobals();
        this.f8173x = checkglobals;
        checkglobals.debuglib = this;
        LuaTable luaTable = new LuaTable();
        luaTable.set("debug", new debug());
        luaTable.set("gethook", new gethook());
        luaTable.set("getinfo", new getinfo());
        luaTable.set("getlocal", new getlocal());
        luaTable.set("getmetatable", new getmetatable());
        luaTable.set("getregistry", new getregistry());
        luaTable.set("getupvalue", new getupvalue());
        luaTable.set("getuservalue", new getuservalue());
        luaTable.set("sethook", new sethook());
        luaTable.set("setlocal", new setlocal());
        luaTable.set("setmetatable", new setmetatable());
        luaTable.set("setupvalue", new setupvalue());
        luaTable.set("setuservalue", new setuservalue());
        luaTable.set("traceback", new traceback());
        luaTable.set("upvalueid", new upvalueid());
        luaTable.set("upvaluejoin", new upvaluejoin());
        luaValue2.set("debug", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get("loaded").set("debug", luaTable);
        }
        return luaTable;
    }

    public void onCall(LuaClosure luaClosure, Varargs varargs, LuaValue[] luaValueArr) {
        LuaThread.State state = this.f8173x.running.state;
        if (state.inhook) {
            return;
        }
        m22505t().m22487e(luaClosure, varargs, luaValueArr);
        if (state.hookcall) {
            m22506s(state, f8153A, LuaValue.NIL);
        }
    }
}
