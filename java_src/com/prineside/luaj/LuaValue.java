package com.prineside.luaj;

import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.Varargs;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
import java.lang.ref.WeakReference;
@REGS(arrayLevels = 1, classOnly = true)
/* loaded from: classes2.dex */
public abstract class LuaValue extends Varargs {
    public static final int TBOOLEAN = 1;
    public static final int TFUNCTION = 6;
    public static final int TINT = -2;
    public static final int TLIGHTUSERDATA = 2;
    public static final int TNIL = 0;
    public static final int TNONE = -1;
    public static final int TNUMBER = 3;
    public static final int TSTRING = 4;
    public static final int TTABLE = 5;
    public static final int TTHREAD = 8;
    public static final int TUSERDATA = 7;
    public static final int TVALUE = 9;

    /* renamed from: b */
    public static WeakReference<Varargs.PairVarargs> f8004b;

    /* renamed from: d */
    public static WeakReference<Varargs.ArrayVarargs> f8005d;

    /* renamed from: k */
    public static WeakReference<Varargs.ArrayVarargs> f8006k;

    /* renamed from: q */
    public static WeakReference<Varargs.ArrayVarargs> f8007q;

    /* renamed from: r */
    public static WeakReference<Varargs.ArrayVarargs> f8008r;

    /* renamed from: s */
    public static LuaDouble f8009s;

    /* renamed from: t */
    public static LuaInteger f8010t;
    public static final NillableSerializer NILLABLE_SERIALIZER = new NillableSerializer();
    public static final String[] TYPE_NAMES = {"nil", "boolean", "lightuserdata", "number", "string", "table", "function", "userdata", "thread", "value"};
    public static final LuaValue NIL = LuaNil.f7975u;
    public static final LuaBoolean TRUE = LuaBoolean.f7961u;
    public static final LuaBoolean FALSE = LuaBoolean.f7962w;
    public static final LuaValue NONE = None.f8012w;
    public static final LuaNumber ZERO = LuaInteger.valueOf(0);
    public static final LuaNumber ONE = LuaInteger.valueOf(1);
    public static final LuaNumber MINUSONE = LuaInteger.valueOf(-1);
    public static final LuaValue[] NOVALS = new LuaValue[0];
    public static LuaString ENV = valueOf("_ENV");
    public static final LuaString INDEX = valueOf("__index");
    public static final LuaString NEWINDEX = valueOf("__newindex");
    public static final LuaString CALL = valueOf("__call");
    public static final LuaString MODE = valueOf("__mode");
    public static final LuaString METATABLE = valueOf("__metatable");
    public static final LuaString ADD = valueOf("__add");
    public static final LuaString SUB = valueOf("__sub");
    public static final LuaString DIV = valueOf("__div");
    public static final LuaString MUL = valueOf("__mul");
    public static final LuaString POW = valueOf("__pow");
    public static final LuaString MOD = valueOf("__mod");
    public static final LuaString UNM = valueOf("__unm");
    public static final LuaString LEN = valueOf("__len");

    /* renamed from: EQ */
    public static final LuaString f8000EQ = valueOf("__eq");

    /* renamed from: LT */
    public static final LuaString f8002LT = valueOf("__lt");

    /* renamed from: LE */
    public static final LuaString f8001LE = valueOf("__le");
    public static final LuaString TOSTRING = valueOf("__tostring");
    public static final LuaString CONCAT = valueOf("__concat");
    public static final LuaString EMPTYSTRING = valueOf("");

    /* renamed from: a */
    public static int f8003a = 250;
    public static final LuaValue[] NILS = new LuaValue[250];

    @REGS(serializer = Serializer.class)
    /* loaded from: classes2.dex */
    public static final class None extends LuaNil {

        /* renamed from: w */
        public static None f8012w = new None();

        /* loaded from: classes2.dex */
        public static class Serializer extends SingletonSerializer<LuaNil> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.prineside.tdi2.serializers.SingletonSerializer
            public LuaNil read() {
                return None.f8012w;
            }
        }

        @Override // com.prineside.luaj.Varargs
        /* renamed from: a */
        public void mo22753a(LuaValue[] luaValueArr, int i, int i2) {
            while (i2 > 0) {
                luaValueArr[i] = LuaValue.NIL;
                i2--;
                i++;
            }
        }

        @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
        public LuaValue arg(int i) {
            return LuaValue.NIL;
        }

        @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
        public LuaValue arg1() {
            return LuaValue.NIL;
        }

        @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
        public int narg() {
            return 0;
        }

        @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
        public Varargs subargs(int i) {
            return i > 0 ? this : LuaValue.argerror(1, "start must be > 0");
        }

        @Override // com.prineside.luaj.LuaNil, com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
        public String tojstring() {
            return "none";
        }
    }

    public static LuaValue argerror(int i, String str) {
        throw new LuaError("bad argument #" + i + ": " + str);
    }

    public static void assert_(boolean z, String str) {
        if (!z) {
            throw new LuaError(str);
        }
    }

    public static Varargs cachedVarargsOf(LuaValue luaValue) {
        return luaValue;
    }

    public static Varargs cachedVarargsOf(LuaValue luaValue, LuaValue luaValue2) {
        WeakReference<Varargs.PairVarargs> weakReference = f8004b;
        Varargs.PairVarargs pairVarargs = weakReference == null ? null : weakReference.get();
        if (pairVarargs == null) {
            Varargs.PairVarargs pairVarargs2 = new Varargs.PairVarargs(luaValue, luaValue2);
            f8004b = new WeakReference<>(pairVarargs2);
            return pairVarargs2;
        }
        pairVarargs.f8030v1 = luaValue;
        pairVarargs.f8031v2 = luaValue2;
        return pairVarargs;
    }

    public static LuaValue error(String str) {
        throw new LuaError(str);
    }

    /* renamed from: j */
    public static LuaValue m22775j(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue metatag;
        LuaValue rawget;
        int i = 0;
        while (true) {
            if (luaValue.istable()) {
                rawget = luaValue.rawget(luaValue2);
                if (!rawget.isnil()) {
                    break;
                }
                LuaValue metatag2 = luaValue.metatag(INDEX);
                if (metatag2.isnil()) {
                    break;
                }
                metatag = metatag2;
            } else {
                metatag = luaValue.metatag(INDEX);
                if (metatag.isnil()) {
                    luaValue.m22773l(luaValue2.tojstring());
                }
            }
            if (metatag.isfunction()) {
                return metatag.call(luaValue, luaValue2);
            }
            i++;
            if (i >= 100) {
                error("loop in gettable");
                return NIL;
            }
            luaValue = metatag;
        }
        return rawget;
    }

    public static LuaTable listOf(LuaValue[] luaValueArr) {
        return new LuaTable(null, luaValueArr, null);
    }

    /* renamed from: n */
    public static boolean m22768n(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        LuaValue metatag;
        int i = 0;
        while (true) {
            if (luaValue.istable()) {
                if (!luaValue.rawget(luaValue2).isnil()) {
                    break;
                }
                metatag = luaValue.metatag(NEWINDEX);
                if (metatag.isnil()) {
                    break;
                }
            } else {
                metatag = luaValue.metatag(NEWINDEX);
                if (metatag.isnil()) {
                    throw new LuaError("table expected for set index ('" + luaValue2 + "') value, got " + luaValue.typename());
                }
            }
            if (metatag.isfunction()) {
                metatag.call(luaValue, luaValue2, luaValue3);
                return true;
            }
            i++;
            if (i >= 100) {
                error("loop in settable");
                return false;
            }
            luaValue = metatag;
        }
        luaValue.rawset(luaValue2, luaValue3);
        return true;
    }

    public static LuaTable tableOf() {
        return new LuaTable();
    }

    public static Varargs tailcallOf(LuaValue luaValue, Varargs varargs) {
        return new TailcallVarargs(luaValue, varargs);
    }

    public static LuaUserdata userdataOf(Object obj) {
        return new LuaUserdata(obj);
    }

    public static LuaBoolean valueOf(boolean z) {
        return z ? TRUE : FALSE;
    }

    public static Varargs varargsOf(LuaValue[] luaValueArr) {
        int length = luaValueArr.length;
        if (length != 0) {
            if (length != 1) {
                if (length != 2) {
                    return new Varargs.ArrayVarargs(luaValueArr, NONE);
                }
                return new Varargs.PairVarargs(luaValueArr[0], luaValueArr[1]);
            }
            return luaValueArr[0];
        }
        return NONE;
    }

    public LuaValue add(LuaValue luaValue) {
        return m22784e(ADD, luaValue);
    }

    public LuaValue and(LuaValue luaValue) {
        return toboolean() ? luaValue : this;
    }

    @Override // com.prineside.luaj.Varargs
    public LuaValue arg(int i) {
        return i == 1 ? this : NIL;
    }

    @Override // com.prineside.luaj.Varargs
    public LuaValue arg1() {
        return this;
    }

    /* renamed from: b */
    public LuaValue m22787b(String str) {
        throw new LuaError("bad argument: " + str + " expected, got " + typename());
    }

    public Buffer buffer() {
        return new Buffer(this);
    }

    /* renamed from: c */
    public LuaValue m22786c() {
        throw new LuaError("attempt to perform arithmetic on " + typename());
    }

    public LuaValue call() {
        return m22781g().call(this);
    }

    public boolean checkboolean() {
        m22787b("boolean");
        return false;
    }

    public LuaClosure checkclosure() {
        m22787b("closure");
        return null;
    }

    public double checkdouble() {
        m22787b("number");
        return 0.0d;
    }

    public LuaFunction checkfunction() {
        m22787b("function");
        return null;
    }

    public Globals checkglobals() {
        m22787b("globals");
        return null;
    }

    public int checkint() {
        m22787b("int");
        return 0;
    }

    public LuaInteger checkinteger() {
        m22787b("integer");
        return null;
    }

    public String checkjstring() {
        m22787b("string");
        return null;
    }

    public long checklong() {
        m22787b("long");
        return 0L;
    }

    public LuaValue checknotnil() {
        return this;
    }

    public LuaNumber checknumber() {
        m22787b("number");
        return null;
    }

    public LuaString checkstring() {
        m22787b("string");
        return null;
    }

    public LuaTable checktable() {
        m22787b("table");
        return null;
    }

    public LuaThread checkthread() {
        m22787b("thread");
        return null;
    }

    public Object checkuserdata() {
        m22787b("userdata");
        return null;
    }

    public LuaValue concat(LuaValue luaValue) {
        return concatmt(luaValue);
    }

    public LuaValue concatTo(LuaValue luaValue) {
        return luaValue.concatmt(this);
    }

    /* renamed from: d */
    public LuaValue m22785d(String str) {
        throw new LuaError("attempt to perform arithmetic '" + str + "' on " + typename());
    }

    public LuaValue div(LuaValue luaValue) {
        return m22784e(DIV, luaValue);
    }

    public LuaValue divInto(double d) {
        return m22782f(DIV, d);
    }

    /* renamed from: eq */
    public LuaValue mo22783eq(LuaValue luaValue) {
        return eq_b(luaValue) ? TRUE : FALSE;
    }

    public boolean eq_b(LuaValue luaValue) {
        return this == luaValue;
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    /* renamed from: g */
    public LuaValue m22781g() {
        return m22777h(CALL, "attempt to call ");
    }

    public LuaValue get(LuaValue luaValue) {
        return m22775j(this, luaValue);
    }

    public LuaValue getmetatable() {
        return null;
    }

    /* renamed from: gt */
    public LuaValue mo22778gt(LuaValue luaValue) {
        return luaValue.comparemt(f8001LE, this);
    }

    public boolean gt_b(LuaValue luaValue) {
        return luaValue.comparemt(f8001LE, this).toboolean();
    }

    public LuaValue gteq(LuaValue luaValue) {
        return luaValue.comparemt(f8002LT, this);
    }

    public boolean gteq_b(LuaValue luaValue) {
        return luaValue.comparemt(f8002LT, this).toboolean();
    }

    /* renamed from: i */
    public LuaValue m22776i(String str) {
        throw new LuaError("attempt to compare " + typename() + " with " + str);
    }

    public Varargs inext(LuaValue luaValue) {
        return m22767o("table");
    }

    public void initupvalue1(LuaValue luaValue) {
    }

    public Varargs invoke() {
        return invoke(NONE);
    }

    public Varargs invokemethod(String str) {
        return get(str).invoke(this);
    }

    public boolean isboolean() {
        return false;
    }

    public boolean isclosure() {
        return false;
    }

    public boolean isfunction() {
        return false;
    }

    public boolean isint() {
        return false;
    }

    public boolean isinttype() {
        return false;
    }

    public boolean islong() {
        return false;
    }

    public boolean isnil() {
        return false;
    }

    public boolean isnumber() {
        return false;
    }

    public boolean isstring() {
        return false;
    }

    public boolean istable() {
        return false;
    }

    public boolean isthread() {
        return false;
    }

    public boolean isuserdata() {
        return false;
    }

    public boolean isuserdata(Class cls) {
        return false;
    }

    public boolean isvalidkey() {
        return true;
    }

    /* renamed from: k */
    public LuaValue m22774k(String str, String str2) {
        throw new LuaError("illegal operation '" + str + "' for " + str2);
    }

    /* renamed from: l */
    public final void m22773l(String str) {
        error("attempt to index ? (a " + typename() + " value) with key '" + str + "'");
    }

    public LuaValue len() {
        return m22777h(LEN, "attempt to get length of ").call(this);
    }

    public int length() {
        return len().toint();
    }

    public LuaValue load(LuaValue luaValue) {
        return luaValue.call(EMPTYSTRING, this);
    }

    /* renamed from: lt */
    public LuaValue mo22770lt(LuaValue luaValue) {
        return comparemt(f8002LT, luaValue);
    }

    public boolean lt_b(LuaValue luaValue) {
        return comparemt(f8002LT, luaValue).toboolean();
    }

    public LuaValue lteq(LuaValue luaValue) {
        return comparemt(f8001LE, luaValue);
    }

    public boolean lteq_b(LuaValue luaValue) {
        return comparemt(f8001LE, luaValue).toboolean();
    }

    public LuaValue method(String str) {
        return get(str).call(this);
    }

    public LuaValue mod(LuaValue luaValue) {
        return m22784e(MOD, luaValue);
    }

    public LuaValue modFrom(double d) {
        return m22782f(MOD, d);
    }

    public LuaValue mul(LuaValue luaValue) {
        return m22784e(MUL, luaValue);
    }

    @Override // com.prineside.luaj.Varargs
    public int narg() {
        return 1;
    }

    public LuaValue neg() {
        return m22777h(UNM, "attempt to perform arithmetic on ").call(this);
    }

    public LuaValue neq(LuaValue luaValue) {
        return eq_b(luaValue) ? FALSE : TRUE;
    }

    public boolean neq_b(LuaValue luaValue) {
        return !eq_b(luaValue);
    }

    public Varargs next(LuaValue luaValue) {
        return m22767o("table");
    }

    public LuaValue not() {
        return FALSE;
    }

    /* renamed from: o */
    public LuaValue m22767o(String str) {
        throw new LuaError(str + " expected, got " + typename());
    }

    public Varargs onInvoke(Varargs varargs) {
        return invoke(varargs);
    }

    public boolean optboolean(boolean z) {
        m22787b("boolean");
        return false;
    }

    public LuaClosure optclosure(LuaClosure luaClosure) {
        m22787b("closure");
        return null;
    }

    public double optdouble(double d) {
        m22787b("number");
        return 0.0d;
    }

    public LuaFunction optfunction(LuaFunction luaFunction) {
        m22787b("function");
        return null;
    }

    public int optint(int i) {
        m22787b("int");
        return 0;
    }

    public LuaInteger optinteger(LuaInteger luaInteger) {
        m22787b("integer");
        return null;
    }

    public String optjstring(String str) {
        m22787b("String");
        return null;
    }

    public long optlong(long j) {
        m22787b("long");
        return 0L;
    }

    public LuaNumber optnumber(LuaNumber luaNumber) {
        m22787b("number");
        return null;
    }

    public LuaString optstring(LuaString luaString) {
        m22787b("string");
        return null;
    }

    public LuaTable opttable(LuaTable luaTable) {
        m22787b("table");
        return null;
    }

    public LuaThread optthread(LuaThread luaThread) {
        m22787b("thread");
        return null;
    }

    public Object optuserdata(Object obj) {
        m22787b("object");
        return null;
    }

    public LuaValue optvalue(LuaValue luaValue) {
        return this;
    }

    /* renamed from: or */
    public LuaValue m22766or(LuaValue luaValue) {
        return toboolean() ? this : luaValue;
    }

    /* renamed from: p */
    public LuaValue m22765p(String str) {
        throw new LuaError("'" + str + "' not implemented for " + typename());
    }

    public LuaValue pow(LuaValue luaValue) {
        return m22784e(POW, luaValue);
    }

    public LuaValue powWith(double d) {
        return m22782f(POW, d);
    }

    public void presize(int i) {
        m22767o("table");
    }

    public boolean raweq(double d) {
        return false;
    }

    public boolean raweq(int i) {
        return false;
    }

    public boolean raweq(LuaString luaString) {
        return false;
    }

    public boolean raweq(LuaUserdata luaUserdata) {
        return false;
    }

    public boolean raweq(LuaValue luaValue) {
        return this == luaValue;
    }

    public LuaValue rawget(LuaValue luaValue) {
        return m22765p("rawget");
    }

    public int rawlen() {
        m22767o("table or string");
        return 0;
    }

    public void rawset(LuaValue luaValue, LuaValue luaValue2) {
        m22765p("rawset");
    }

    public void rawsetlist(int i, Varargs varargs) {
        int narg = varargs.narg();
        int i2 = 0;
        while (i2 < narg) {
            int i3 = i + i2;
            i2++;
            rawset(i3, varargs.arg(i2));
        }
    }

    public void set(LuaValue luaValue, LuaValue luaValue2) {
        m22768n(this, luaValue, luaValue2);
    }

    public LuaValue setmetatable(LuaValue luaValue) {
        return m22787b("table");
    }

    public int strcmp(LuaValue luaValue) {
        error("attempt to compare " + typename());
        return 0;
    }

    public LuaValue strongvalue() {
        return this;
    }

    public LuaString strvalue() {
        m22767o("string or number");
        return null;
    }

    public LuaValue sub(LuaValue luaValue) {
        return m22784e(SUB, luaValue);
    }

    public LuaValue subFrom(double d) {
        return m22782f(SUB, d);
    }

    @Override // com.prineside.luaj.Varargs
    public Varargs subargs(int i) {
        if (i == 1) {
            return this;
        }
        if (i > 1) {
            return NONE;
        }
        return argerror(1, "start must be > 0");
    }

    public boolean testfor_b(LuaValue luaValue, LuaValue luaValue2) {
        return luaValue2.gt_b(0) ? lteq_b(luaValue) : gteq_b(luaValue);
    }

    @Override // com.prineside.luaj.Varargs
    public String toString() {
        return tojstring();
    }

    public boolean toboolean() {
        return true;
    }

    public byte tobyte() {
        return (byte) 0;
    }

    public char tochar() {
        return (char) 0;
    }

    public double todouble() {
        return 0.0d;
    }

    public float tofloat() {
        return 0.0f;
    }

    public int toint() {
        return 0;
    }

    @Override // com.prineside.luaj.Varargs
    public String tojstring() {
        return typename() + ": " + Integer.toHexString(hashCode());
    }

    public long tolong() {
        return 0L;
    }

    public LuaValue tonumber() {
        return NIL;
    }

    public short toshort() {
        return (short) 0;
    }

    public LuaValue tostring() {
        return NIL;
    }

    public Object touserdata() {
        return null;
    }

    public Object touserdata(Class cls) {
        return null;
    }

    public abstract int type();

    public abstract String typename();

    static {
        for (int i = 0; i < f8003a; i++) {
            NILS[i] = NIL;
        }
    }

    public static LuaDouble cachedDouble(double d) {
        if (f8009s == null) {
            f8009s = (LuaDouble) LuaDouble.valueOf(0.1d);
        }
        LuaDouble luaDouble = f8009s;
        luaDouble.f7967u = d;
        return luaDouble;
    }

    public static LuaInteger cachedInt(int i) {
        if (f8010t == null) {
            f8010t = LuaInteger.valueOf(9001);
        }
        LuaInteger luaInteger = f8010t;
        luaInteger.f7974v = i;
        return luaInteger;
    }

    public static final boolean eqmtcall(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
        LuaString luaString = f8000EQ;
        LuaValue rawget = luaValue2.rawget(luaString);
        if (!rawget.isnil() && rawget == luaValue4.rawget(luaString)) {
            return rawget.call(luaValue, luaValue3).toboolean();
        }
        return false;
    }

    public static LuaTable listOf(LuaValue[] luaValueArr, Varargs varargs) {
        return new LuaTable(null, luaValueArr, varargs);
    }

    /* renamed from: m */
    public static Metatable m22769m(LuaValue luaValue) {
        boolean z;
        Logger.log("LuaValue", "metatableOf " + luaValue);
        if (luaValue != null && luaValue.istable()) {
            LuaValue rawget = luaValue.rawget(MODE);
            if (rawget.isstring()) {
                Logger.log("LuaValue", "mode string ");
                String str = rawget.tojstring();
                boolean z2 = true;
                if (str.indexOf(107) >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (str.indexOf(118) < 0) {
                    z2 = false;
                }
                if (z || z2) {
                    return new WeakTable(z, z2, luaValue);
                }
            }
            return (LuaTable) luaValue;
        } else if (luaValue != null) {
            return new NonTableMetatable(luaValue);
        } else {
            return null;
        }
    }

    public static LuaTable tableOf(Varargs varargs, int i) {
        return new LuaTable(varargs, i);
    }

    public static LuaUserdata userdataOf(Object obj, LuaValue luaValue) {
        return new LuaUserdata(obj, luaValue);
    }

    public static LuaInteger valueOf(int i) {
        return LuaInteger.valueOf(i);
    }

    public LuaValue add(double d) {
        return m22782f(ADD, d);
    }

    public LuaValue call(LuaValue luaValue) {
        return m22781g().call(this, luaValue);
    }

    public LuaNumber checknumber(String str) {
        throw new LuaError(str);
    }

    public Object checkuserdata(Class cls) {
        m22787b("userdata");
        return null;
    }

    public Buffer concat(Buffer buffer) {
        return buffer.concatTo(this);
    }

    public LuaValue concatTo(LuaNumber luaNumber) {
        return luaNumber.concatmt(this);
    }

    public LuaValue concatmt(LuaValue luaValue) {
        LuaString luaString = CONCAT;
        LuaValue metatag = metatag(luaString);
        if (metatag.isnil()) {
            metatag = luaValue.metatag(luaString);
            if (metatag.isnil()) {
                error("attempt to concatenate " + typename() + " and " + luaValue.typename());
            }
        }
        return metatag.call(this, luaValue);
    }

    public LuaValue div(double d) {
        return m22785d("div");
    }

    public LuaValue get(int i) {
        return get(LuaInteger.valueOf(i));
    }

    /* renamed from: gt */
    public LuaValue mo22780gt(double d) {
        return m22776i("number");
    }

    public boolean gt_b(int i) {
        m22776i("number");
        return false;
    }

    public LuaValue gteq(double d) {
        return m22776i("number");
    }

    public boolean gteq_b(int i) {
        m22776i("number");
        return false;
    }

    public Varargs invoke(Varargs varargs) {
        return m22781g().invoke(this, varargs);
    }

    public Varargs invokemethod(LuaValue luaValue) {
        return get(luaValue).invoke(this);
    }

    /* renamed from: lt */
    public LuaValue mo22772lt(double d) {
        return m22776i("number");
    }

    public boolean lt_b(int i) {
        m22776i("number");
        return false;
    }

    public LuaValue lteq(double d) {
        return m22776i("number");
    }

    public boolean lteq_b(int i) {
        m22776i("number");
        return false;
    }

    public LuaValue method(LuaValue luaValue) {
        return get(luaValue).call(this);
    }

    public LuaValue mod(double d) {
        return m22785d("mod");
    }

    public LuaValue mul(double d) {
        return m22782f(MUL, d);
    }

    public Object optuserdata(Class cls, Object obj) {
        m22787b(cls.getName());
        return null;
    }

    public LuaValue pow(double d) {
        return m22785d("pow");
    }

    public LuaValue powWith(int i) {
        return powWith(i);
    }

    public LuaValue rawget(int i) {
        return rawget(valueOf(i));
    }

    public void rawset(int i, LuaValue luaValue) {
        rawset(valueOf(i), luaValue);
    }

    public void set(int i, LuaValue luaValue) {
        set(LuaInteger.valueOf(i), luaValue);
    }

    public int strcmp(LuaString luaString) {
        error("attempt to compare " + typename());
        return 0;
    }

    public LuaValue sub(double d) {
        return m22785d("sub");
    }

    public LuaValue subFrom(int i) {
        return subFrom(i);
    }

    public static LuaTable tableOf(int i, int i2) {
        return new LuaTable(i, i2);
    }

    public static LuaNumber valueOf(double d) {
        return LuaDouble.valueOf(d);
    }

    public LuaValue add(int i) {
        return add(i);
    }

    public LuaValue call(String str) {
        return call(valueOf(str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
        if (r1.isnil() == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.prineside.luaj.LuaValue comparemt(com.prineside.luaj.LuaValue r4, com.prineside.luaj.LuaValue r5) {
        /*
            r3 = this;
            com.prineside.luaj.LuaValue r0 = r3.metatag(r4)
            boolean r1 = r0.isnil()
            if (r1 == 0) goto L6a
            com.prineside.luaj.LuaValue r0 = r5.metatag(r4)
            boolean r1 = r0.isnil()
            if (r1 != 0) goto L15
            goto L6a
        L15:
            com.prineside.luaj.LuaString r0 = com.prineside.luaj.LuaValue.f8001LE
            boolean r0 = r0.raweq(r4)
            if (r0 == 0) goto L3c
            com.prineside.luaj.LuaString r0 = com.prineside.luaj.LuaValue.f8002LT
            com.prineside.luaj.LuaValue r1 = r3.metatag(r0)
            boolean r2 = r1.isnil()
            if (r2 == 0) goto L33
            com.prineside.luaj.LuaValue r1 = r5.metatag(r0)
            boolean r0 = r1.isnil()
            if (r0 != 0) goto L3c
        L33:
            com.prineside.luaj.LuaValue r4 = r1.call(r5, r3)
            com.prineside.luaj.LuaValue r4 = r4.not()
            return r4
        L3c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "attempt to compare "
            r0.append(r1)
            r0.append(r4)
            java.lang.String r4 = " on "
            r0.append(r4)
            java.lang.String r4 = r3.typename()
            r0.append(r4)
            java.lang.String r4 = " and "
            r0.append(r4)
            java.lang.String r4 = r5.typename()
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            com.prineside.luaj.LuaValue r4 = error(r4)
            return r4
        L6a:
            com.prineside.luaj.LuaValue r4 = r0.call(r3, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.LuaValue.comparemt(com.prineside.luaj.LuaValue, com.prineside.luaj.LuaValue):com.prineside.luaj.LuaValue");
    }

    public LuaValue concatTo(LuaString luaString) {
        return luaString.concatmt(this);
    }

    public LuaValue div(int i) {
        return m22785d("div");
    }

    /* renamed from: e */
    public LuaValue m22784e(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue metatag = metatag(luaValue);
        if (metatag.isnil()) {
            metatag = luaValue2.metatag(luaValue);
            if (metatag.isnil()) {
                error("attempt to perform arithmetic " + luaValue + " on " + typename() + " and " + luaValue2.typename());
            }
        }
        return metatag.call(this, luaValue2);
    }

    /* renamed from: f */
    public LuaValue m22782f(LuaValue luaValue, double d) {
        LuaValue metatag = metatag(luaValue);
        if (metatag.isnil()) {
            error("attempt to perform arithmetic " + luaValue + " on number and " + typename());
        }
        return metatag.call(valueOf(d), this);
    }

    public LuaValue get(String str) {
        return get(valueOf(str));
    }

    /* renamed from: gt */
    public LuaValue mo22779gt(int i) {
        return m22776i("number");
    }

    public boolean gt_b(double d) {
        m22776i("number");
        return false;
    }

    public LuaValue gteq(int i) {
        return valueOf(todouble() >= ((double) i));
    }

    public boolean gteq_b(double d) {
        m22776i("number");
        return false;
    }

    /* renamed from: h */
    public LuaValue m22777h(LuaValue luaValue, String str) {
        LuaValue metatag = metatag(luaValue);
        if (!metatag.isnil()) {
            return metatag;
        }
        throw new LuaError(str + "a " + typename() + " value");
    }

    public Varargs invoke(LuaValue luaValue, Varargs varargs) {
        return invoke(varargsOf(luaValue, varargs));
    }

    public Varargs invokemethod(String str, Varargs varargs) {
        return get(str).invoke(varargsOf(this, varargs));
    }

    /* renamed from: lt */
    public LuaValue mo22771lt(int i) {
        return m22776i("number");
    }

    public boolean lt_b(double d) {
        m22776i("number");
        return false;
    }

    public LuaValue lteq(int i) {
        return m22776i("number");
    }

    public boolean lteq_b(double d) {
        m22776i("number");
        return false;
    }

    public LuaValue metatag(LuaValue luaValue) {
        LuaValue luaValue2 = getmetatable();
        if (luaValue2 == null) {
            return NIL;
        }
        return luaValue2.rawget(luaValue);
    }

    public LuaValue method(String str, LuaValue luaValue) {
        return get(str).call(this, luaValue);
    }

    public LuaValue mod(int i) {
        return m22785d("mod");
    }

    public LuaValue mul(int i) {
        return mul(i);
    }

    public LuaValue pow(int i) {
        return m22785d("pow");
    }

    public LuaValue rawget(String str) {
        return rawget(valueOf(str));
    }

    public void rawset(int i, String str) {
        rawset(i, valueOf(str));
    }

    public void set(int i, String str) {
        set(i, valueOf(str));
    }

    public LuaValue sub(int i) {
        return m22785d("sub");
    }

    public static LuaTable tableOf(LuaValue[] luaValueArr) {
        return new LuaTable(luaValueArr, null, null);
    }

    public static LuaString valueOf(String str) {
        return LuaString.valueOf(str);
    }

    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return m22781g().call(this, luaValue, luaValue2);
    }

    public Varargs invoke(LuaValue luaValue, LuaValue luaValue2, Varargs varargs) {
        return invoke(varargsOf(luaValue, luaValue2, varargs));
    }

    public Varargs invokemethod(LuaValue luaValue, Varargs varargs) {
        return get(luaValue).invoke(varargsOf(this, varargs));
    }

    public LuaValue method(LuaValue luaValue, LuaValue luaValue2) {
        return get(luaValue).call(this, luaValue2);
    }

    public void rawset(String str, LuaValue luaValue) {
        rawset(valueOf(str), luaValue);
    }

    public void set(String str, LuaValue luaValue) {
        set(valueOf(str), luaValue);
    }

    public static LuaTable tableOf(LuaValue[] luaValueArr, LuaValue[] luaValueArr2) {
        return new LuaTable(luaValueArr, luaValueArr2, null);
    }

    public static LuaString valueOf(byte[] bArr) {
        return LuaString.valueOf(bArr);
    }

    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return m22781g().invoke(new LuaValue[]{this, luaValue, luaValue2, luaValue3}).arg1();
    }

    public Varargs invoke(LuaValue[] luaValueArr) {
        return invoke(varargsOf(luaValueArr));
    }

    public Varargs invokemethod(String str, LuaValue[] luaValueArr) {
        return get(str).invoke(varargsOf(this, varargsOf(luaValueArr)));
    }

    public LuaValue method(String str, LuaValue luaValue, LuaValue luaValue2) {
        return get(str).call(this, luaValue, luaValue2);
    }

    public void rawset(String str, double d) {
        rawset(valueOf(str), valueOf(d));
    }

    public void set(String str, double d) {
        set(valueOf(str), valueOf(d));
    }

    public static Varargs cachedVarargsOf(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        WeakReference<Varargs.ArrayVarargs> weakReference = f8005d;
        Varargs.ArrayVarargs arrayVarargs = weakReference == null ? null : weakReference.get();
        if (arrayVarargs == null) {
            Varargs.ArrayVarargs arrayVarargs2 = new Varargs.ArrayVarargs(new LuaValue[]{luaValue, luaValue2, luaValue3}, NONE);
            f8005d = new WeakReference<>(arrayVarargs2);
            return arrayVarargs2;
        }
        LuaValue[] luaValueArr = arrayVarargs.f8029v;
        luaValueArr[0] = luaValue;
        luaValueArr[1] = luaValue2;
        luaValueArr[2] = luaValue3;
        return arrayVarargs;
    }

    public static LuaTable tableOf(LuaValue[] luaValueArr, LuaValue[] luaValueArr2, Varargs varargs) {
        return new LuaTable(luaValueArr, luaValueArr2, varargs);
    }

    public static LuaString valueOf(byte[] bArr, int i, int i2) {
        return LuaString.valueOf(bArr, i, i2);
    }

    public static Varargs varargsOf(LuaValue[] luaValueArr, Varargs varargs) {
        int length = luaValueArr.length;
        if (length != 0) {
            if (length == 1) {
                if (varargs.narg() > 0) {
                    return new Varargs.PairVarargs(luaValueArr[0], varargs);
                }
                return luaValueArr[0];
            } else if (length != 2) {
                return new Varargs.ArrayVarargs(luaValueArr, varargs);
            } else {
                if (varargs.narg() > 0) {
                    return new Varargs.ArrayVarargs(luaValueArr, varargs);
                }
                return new Varargs.PairVarargs(luaValueArr[0], luaValueArr[1]);
            }
        }
        return varargs;
    }

    public Varargs invoke(LuaValue[] luaValueArr, Varargs varargs) {
        return invoke(varargsOf(luaValueArr, varargs));
    }

    public Varargs invokemethod(LuaValue luaValue, LuaValue[] luaValueArr) {
        return get(luaValue).invoke(varargsOf(this, varargsOf(luaValueArr)));
    }

    public LuaValue method(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return get(luaValue).call(this, luaValue2, luaValue3);
    }

    public void rawset(String str, int i) {
        rawset(valueOf(str), valueOf(i));
    }

    public void set(String str, int i) {
        set(valueOf(str), valueOf(i));
    }

    public void rawset(String str, String str2) {
        rawset(valueOf(str), valueOf(str2));
    }

    public void set(String str, String str2) {
        set(valueOf(str), valueOf(str2));
    }

    /* loaded from: classes2.dex */
    public static class NillableSerializer {

        /* renamed from: a */
        public static final Array<LuaValue> f8011a = new Array<>(LuaValue.class);

        public void writeClassAndObject(Kryo kryo, Output output, LuaValue luaValue) {
            Class<?> cls;
            if (luaValue instanceof LuaUserdata) {
                Object obj = ((LuaUserdata) luaValue).m_instance;
                if (obj instanceof Class) {
                    cls = (Class) obj;
                } else {
                    cls = obj.getClass();
                }
                if (!Game.f8589i.networkManager.fullKryo.hasRegistration(cls)) {
                    Logger.log("LuaValue", "skipping " + luaValue + " - " + cls + " not registered");
                    kryo.writeClassAndObject(output, LuaValue.NIL);
                    return;
                }
                kryo.writeClassAndObject(output, luaValue);
                return;
            }
            kryo.writeClassAndObject(output, luaValue);
        }

        public void writeClassAndObject(Kryo kryo, Output output, LuaValue[] luaValueArr) {
            Class<?> cls;
            if (luaValueArr == null) {
                kryo.writeClassAndObject(output, luaValueArr);
                return;
            }
            Array<LuaValue> array = f8011a;
            array.clear();
            array.setSize(luaValueArr.length);
            int i = 0;
            for (int i2 = 0; i2 < luaValueArr.length; i2++) {
                LuaValue luaValue = luaValueArr[i2];
                if (luaValue instanceof LuaUserdata) {
                    Object obj = ((LuaUserdata) luaValue).m_instance;
                    if (obj instanceof Class) {
                        cls = (Class) obj;
                    } else {
                        cls = obj.getClass();
                    }
                    if (!Game.f8589i.networkManager.fullKryo.hasRegistration(cls)) {
                        f8011a.set(i2, luaValueArr[i2]);
                        luaValueArr[i2] = LuaValue.NIL;
                    }
                }
            }
            kryo.writeClassAndObject(output, luaValueArr);
            while (true) {
                Array<LuaValue> array2 = f8011a;
                if (i < array2.size) {
                    LuaValue luaValue2 = array2.items[i];
                    if (luaValue2 != null) {
                        luaValueArr[i] = luaValue2;
                    }
                    i++;
                } else {
                    array2.clear();
                    return;
                }
            }
        }
    }

    public static Varargs cachedVarargsOf(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
        WeakReference<Varargs.ArrayVarargs> weakReference = f8006k;
        Varargs.ArrayVarargs arrayVarargs = weakReference == null ? null : weakReference.get();
        if (arrayVarargs == null) {
            Varargs.ArrayVarargs arrayVarargs2 = new Varargs.ArrayVarargs(new LuaValue[]{luaValue, luaValue2, luaValue3, luaValue4}, NONE);
            f8006k = new WeakReference<>(arrayVarargs2);
            return arrayVarargs2;
        }
        LuaValue[] luaValueArr = arrayVarargs.f8029v;
        luaValueArr[0] = luaValue;
        luaValueArr[1] = luaValue2;
        luaValueArr[2] = luaValue3;
        luaValueArr[3] = luaValue4;
        return arrayVarargs;
    }

    public static Varargs varargsOf(LuaValue[] luaValueArr, int i, int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return new Varargs.ArrayPartVarargs(luaValueArr, i, i2, NONE);
                }
                return new Varargs.PairVarargs(luaValueArr[i + 0], luaValueArr[i + 1]);
            }
            return luaValueArr[i];
        }
        return NONE;
    }

    public static Varargs varargsOf(LuaValue[] luaValueArr, int i, int i2, Varargs varargs) {
        if (i2 != 0) {
            if (i2 == 1) {
                if (varargs.narg() > 0) {
                    return new Varargs.PairVarargs(luaValueArr[i], varargs);
                }
                return luaValueArr[i];
            } else if (i2 != 2) {
                return new Varargs.ArrayPartVarargs(luaValueArr, i, i2, varargs);
            } else {
                if (varargs.narg() > 0) {
                    return new Varargs.ArrayPartVarargs(luaValueArr, i, i2, varargs);
                }
                return new Varargs.PairVarargs(luaValueArr[i], luaValueArr[i + 1]);
            }
        }
        return varargs;
    }

    public static Varargs cachedVarargsOf(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
        WeakReference<Varargs.ArrayVarargs> weakReference = f8007q;
        Varargs.ArrayVarargs arrayVarargs = weakReference == null ? null : weakReference.get();
        if (arrayVarargs == null) {
            Varargs.ArrayVarargs arrayVarargs2 = new Varargs.ArrayVarargs(new LuaValue[]{luaValue, luaValue2, luaValue3, luaValue4, luaValue5}, NONE);
            f8006k = new WeakReference<>(arrayVarargs2);
            return arrayVarargs2;
        }
        LuaValue[] luaValueArr = arrayVarargs.f8029v;
        luaValueArr[0] = luaValue;
        luaValueArr[1] = luaValue2;
        luaValueArr[2] = luaValue3;
        luaValueArr[3] = luaValue4;
        luaValueArr[4] = luaValue5;
        return arrayVarargs;
    }

    public static Varargs varargsOf(LuaValue luaValue, Varargs varargs) {
        return varargs.narg() != 0 ? new Varargs.PairVarargs(luaValue, varargs) : luaValue;
    }

    public static Varargs cachedVarargsOf(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5, LuaValue luaValue6) {
        WeakReference<Varargs.ArrayVarargs> weakReference = f8008r;
        Varargs.ArrayVarargs arrayVarargs = weakReference == null ? null : weakReference.get();
        if (arrayVarargs == null) {
            Varargs.ArrayVarargs arrayVarargs2 = new Varargs.ArrayVarargs(new LuaValue[]{luaValue, luaValue2, luaValue3, luaValue4, luaValue5, luaValue6}, NONE);
            f8006k = new WeakReference<>(arrayVarargs2);
            return arrayVarargs2;
        }
        LuaValue[] luaValueArr = arrayVarargs.f8029v;
        luaValueArr[0] = luaValue;
        luaValueArr[1] = luaValue2;
        luaValueArr[2] = luaValue3;
        luaValueArr[3] = luaValue4;
        luaValueArr[4] = luaValue5;
        luaValueArr[5] = luaValue6;
        return arrayVarargs;
    }

    public static Varargs varargsOf(LuaValue luaValue, LuaValue luaValue2, Varargs varargs) {
        if (varargs.narg() != 0) {
            return new Varargs.ArrayPartVarargs(new LuaValue[]{luaValue, luaValue2}, 0, 2, varargs);
        }
        return new Varargs.PairVarargs(luaValue, luaValue2);
    }
}
