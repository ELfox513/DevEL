package com.prineside.luaj;
/* loaded from: classes2.dex */
public abstract class Varargs {

    /* loaded from: classes2.dex */
    public static final class ArrayPartVarargs extends Varargs {

        /* renamed from: a */
        public final int f8024a;

        /* renamed from: b */
        public final LuaValue[] f8025b;

        /* renamed from: d */
        public final int f8026d;

        /* renamed from: k */
        public final Varargs f8027k;

        @Override // com.prineside.luaj.Varargs
        public LuaValue arg(int i) {
            if (i < 1) {
                return LuaValue.NIL;
            }
            int i2 = this.f8026d;
            return i <= i2 ? this.f8025b[(this.f8024a + i) - 1] : this.f8027k.arg(i - i2);
        }

        @Override // com.prineside.luaj.Varargs
        public LuaValue arg1() {
            return this.f8026d > 0 ? this.f8025b[this.f8024a] : this.f8027k.arg1();
        }

        @Override // com.prineside.luaj.Varargs
        public int narg() {
            return this.f8026d + this.f8027k.narg();
        }

        @Override // com.prineside.luaj.Varargs
        public Varargs subargs(int i) {
            if (i <= 0) {
                LuaValue.argerror(1, "start must be > 0");
            }
            if (i == 1) {
                return this;
            }
            int i2 = this.f8026d;
            if (i > i2) {
                return this.f8027k.subargs(i - i2);
            }
            return LuaValue.varargsOf(this.f8025b, (this.f8024a + i) - 1, i2 - (i - 1), this.f8027k);
        }

        @Override // com.prineside.luaj.Varargs
        /* renamed from: a */
        public void mo22753a(LuaValue[] luaValueArr, int i, int i2) {
            int min = Math.min(this.f8026d, i2);
            System.arraycopy(this.f8025b, this.f8024a, luaValueArr, i, min);
            this.f8027k.mo22753a(luaValueArr, i + min, i2 - min);
        }

        public ArrayPartVarargs(LuaValue[] luaValueArr, int i, int i2, Varargs varargs) {
            this.f8025b = luaValueArr;
            this.f8024a = i;
            this.f8026d = i2;
            this.f8027k = varargs;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ArrayVarargs extends Varargs {

        /* renamed from: a */
        public final Varargs f8028a;

        /* renamed from: v */
        public final LuaValue[] f8029v;

        @Override // com.prineside.luaj.Varargs
        public LuaValue arg(int i) {
            if (i < 1) {
                return LuaValue.NIL;
            }
            LuaValue[] luaValueArr = this.f8029v;
            return i <= luaValueArr.length ? luaValueArr[i - 1] : this.f8028a.arg(i - luaValueArr.length);
        }

        @Override // com.prineside.luaj.Varargs
        public LuaValue arg1() {
            LuaValue[] luaValueArr = this.f8029v;
            return luaValueArr.length > 0 ? luaValueArr[0] : this.f8028a.arg1();
        }

        @Override // com.prineside.luaj.Varargs
        public int narg() {
            return this.f8029v.length + this.f8028a.narg();
        }

        @Override // com.prineside.luaj.Varargs
        public Varargs subargs(int i) {
            if (i <= 0) {
                LuaValue.argerror(1, "start must be > 0");
            }
            if (i == 1) {
                return this;
            }
            LuaValue[] luaValueArr = this.f8029v;
            if (i > luaValueArr.length) {
                return this.f8028a.subargs(i - luaValueArr.length);
            }
            int i2 = i - 1;
            return LuaValue.varargsOf(luaValueArr, i2, luaValueArr.length - i2, this.f8028a);
        }

        @Override // com.prineside.luaj.Varargs
        /* renamed from: a */
        public void mo22753a(LuaValue[] luaValueArr, int i, int i2) {
            int min = Math.min(this.f8029v.length, i2);
            System.arraycopy(this.f8029v, 0, luaValueArr, i, min);
            this.f8028a.mo22753a(luaValueArr, i + min, i2 - min);
        }

        public ArrayVarargs(LuaValue[] luaValueArr, Varargs varargs) {
            this.f8029v = luaValueArr;
            this.f8028a = varargs;
        }
    }

    /* loaded from: classes2.dex */
    public static class SubVarargs extends Varargs {

        /* renamed from: a */
        public final Varargs f8032a;

        /* renamed from: b */
        public final int f8033b;

        /* renamed from: d */
        public final int f8034d;

        @Override // com.prineside.luaj.Varargs
        public LuaValue arg1() {
            return this.f8032a.arg(this.f8033b);
        }

        @Override // com.prineside.luaj.Varargs
        public int narg() {
            return (this.f8034d + 1) - this.f8033b;
        }

        @Override // com.prineside.luaj.Varargs
        public Varargs subargs(int i) {
            if (i == 1) {
                return this;
            }
            int i2 = (this.f8033b + i) - 1;
            if (i > 0) {
                int i3 = this.f8034d;
                if (i2 >= i3) {
                    return LuaValue.NONE;
                }
                if (i2 == i3) {
                    return this.f8032a.arg(i3);
                }
                if (i2 == i3 - 1) {
                    return new PairVarargs(this.f8032a.arg(i3 - 1), this.f8032a.arg(this.f8034d));
                }
                return new SubVarargs(this.f8032a, i2, i3);
            }
            return new SubVarargs(this.f8032a, i2, this.f8034d);
        }

        @Override // com.prineside.luaj.Varargs
        public LuaValue arg(int i) {
            int i2 = this.f8033b;
            int i3 = i + (i2 - 1);
            if (i3 >= i2 && i3 <= this.f8034d) {
                return this.f8032a.arg(i3);
            }
            return LuaValue.NIL;
        }

        public SubVarargs(Varargs varargs, int i, int i2) {
            this.f8032a = varargs;
            this.f8033b = i;
            this.f8034d = i2;
        }
    }

    /* renamed from: a */
    public void mo22753a(LuaValue[] luaValueArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int i4 = i + i3;
            i3++;
            luaValueArr[i4] = arg(i3);
        }
    }

    public abstract LuaValue arg(int i);

    public abstract LuaValue arg1();

    public void argcheck(boolean z, int i, String str) {
        if (z) {
            return;
        }
        LuaValue.argerror(i, str);
    }

    public boolean checkboolean(int i) {
        return arg(i).checkboolean();
    }

    public LuaClosure checkclosure(int i) {
        return arg(i).checkclosure();
    }

    public double checkdouble(int i) {
        return arg(i).checkdouble();
    }

    public LuaFunction checkfunction(int i) {
        return arg(i).checkfunction();
    }

    public int checkint(int i) {
        return arg(i).checkint();
    }

    public LuaInteger checkinteger(int i) {
        return arg(i).checkinteger();
    }

    public String checkjstring(int i) {
        return arg(i).checkjstring();
    }

    public long checklong(int i) {
        return arg(i).checklong();
    }

    public LuaValue checknotnil(int i) {
        return arg(i).checknotnil();
    }

    public LuaNumber checknumber(int i) {
        return arg(i).checknumber();
    }

    public LuaString checkstring(int i) {
        return arg(i).checkstring();
    }

    public LuaTable checktable(int i) {
        return arg(i).checktable();
    }

    public LuaThread checkthread(int i) {
        return arg(i).checkthread();
    }

    public Object checkuserdata(int i) {
        return arg(i).checkuserdata();
    }

    public LuaValue checkvalue(int i) {
        return i <= narg() ? arg(i) : LuaValue.argerror(i, "value expected");
    }

    public Varargs eval() {
        return this;
    }

    public boolean isTailcall() {
        return false;
    }

    public boolean isfunction(int i) {
        return arg(i).isfunction();
    }

    public boolean isnil(int i) {
        return arg(i).isnil();
    }

    public boolean isnoneornil(int i) {
        return i > narg() || arg(i).isnil();
    }

    public boolean isnumber(int i) {
        return arg(i).isnumber();
    }

    public boolean isstring(int i) {
        return arg(i).isstring();
    }

    public boolean istable(int i) {
        return arg(i).istable();
    }

    public boolean isthread(int i) {
        return arg(i).isthread();
    }

    public boolean isuserdata(int i) {
        return arg(i).isuserdata();
    }

    public boolean isvalue(int i) {
        return i > 0 && i <= narg();
    }

    public abstract int narg();

    public boolean optboolean(int i, boolean z) {
        return arg(i).optboolean(z);
    }

    public LuaClosure optclosure(int i, LuaClosure luaClosure) {
        return arg(i).optclosure(luaClosure);
    }

    public double optdouble(int i, double d) {
        return arg(i).optdouble(d);
    }

    public LuaFunction optfunction(int i, LuaFunction luaFunction) {
        return arg(i).optfunction(luaFunction);
    }

    public int optint(int i, int i2) {
        return arg(i).optint(i2);
    }

    public LuaInteger optinteger(int i, LuaInteger luaInteger) {
        return arg(i).optinteger(luaInteger);
    }

    public String optjstring(int i, String str) {
        return arg(i).optjstring(str);
    }

    public long optlong(int i, long j) {
        return arg(i).optlong(j);
    }

    public LuaNumber optnumber(int i, LuaNumber luaNumber) {
        return arg(i).optnumber(luaNumber);
    }

    public LuaString optstring(int i, LuaString luaString) {
        return arg(i).optstring(luaString);
    }

    public LuaTable opttable(int i, LuaTable luaTable) {
        return arg(i).opttable(luaTable);
    }

    public LuaThread optthread(int i, LuaThread luaThread) {
        return arg(i).optthread(luaThread);
    }

    public Object optuserdata(int i, Object obj) {
        return arg(i).optuserdata(obj);
    }

    public LuaValue optvalue(int i, LuaValue luaValue) {
        return (i <= 0 || i > narg()) ? luaValue : arg(i);
    }

    public abstract Varargs subargs(int i);

    public String toString() {
        return tojstring();
    }

    public boolean toboolean(int i) {
        return arg(i).toboolean();
    }

    public byte tobyte(int i) {
        return arg(i).tobyte();
    }

    public char tochar(int i) {
        return arg(i).tochar();
    }

    public double todouble(int i) {
        return arg(i).todouble();
    }

    public float tofloat(int i) {
        return arg(i).tofloat();
    }

    public int toint(int i) {
        return arg(i).toint();
    }

    public String tojstring(int i) {
        return arg(i).tojstring();
    }

    public long tolong(int i) {
        return arg(i).tolong();
    }

    public short toshort(int i) {
        return arg(i).toshort();
    }

    public Object touserdata(int i) {
        return arg(i).touserdata();
    }

    public int type(int i) {
        return arg(i).type();
    }

    /* loaded from: classes2.dex */
    public static final class PairVarargs extends Varargs {

        /* renamed from: v1 */
        public LuaValue f8030v1;

        /* renamed from: v2 */
        public Varargs f8031v2;

        @Override // com.prineside.luaj.Varargs
        public LuaValue arg(int i) {
            return i == 1 ? this.f8030v1 : this.f8031v2.arg(i - 1);
        }

        @Override // com.prineside.luaj.Varargs
        public LuaValue arg1() {
            return this.f8030v1;
        }

        @Override // com.prineside.luaj.Varargs
        public int narg() {
            return this.f8031v2.narg() + 1;
        }

        @Override // com.prineside.luaj.Varargs
        public Varargs subargs(int i) {
            if (i == 1) {
                return this;
            }
            if (i == 2) {
                return this.f8031v2;
            }
            if (i > 2) {
                return this.f8031v2.subargs(i - 1);
            }
            return LuaValue.argerror(1, "start must be > 0");
        }

        public PairVarargs(LuaValue luaValue, Varargs varargs) {
            this.f8030v1 = luaValue;
            this.f8031v2 = varargs;
        }
    }

    public Object checkuserdata(int i, Class cls) {
        return arg(i).checkuserdata(cls);
    }

    public Object optuserdata(int i, Class cls, Object obj) {
        return arg(i).optuserdata(cls, obj);
    }

    public String tojstring() {
        Buffer buffer = new Buffer();
        buffer.append("(");
        int narg = narg();
        for (int i = 1; i <= narg; i++) {
            if (i > 1) {
                buffer.append(",");
            }
            buffer.append(arg(i).tojstring());
        }
        buffer.append(")");
        return buffer.tojstring();
    }

    public Object touserdata(int i, Class cls) {
        return arg(i).touserdata(cls);
    }

    public Varargs dealias() {
        int narg = narg();
        if (narg != 0) {
            if (narg != 1) {
                if (narg != 2) {
                    LuaValue[] luaValueArr = new LuaValue[narg];
                    mo22753a(luaValueArr, 0, narg);
                    return new ArrayVarargs(luaValueArr, LuaValue.NONE);
                }
                return new PairVarargs(arg1(), arg(2));
            }
            return arg1();
        }
        return LuaValue.NONE;
    }
}
