package com.prineside.luaj.compiler;

import com.prineside.luaj.LoadState;
import com.prineside.luaj.LocVars;
import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Prototype;
import java.io.DataOutputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class DumpState {
    public static boolean ALLOW_INTEGER_CASTING = false;
    public static final int NUMBER_FORMAT_DEFAULT = 0;
    public static final int NUMBER_FORMAT_FLOATS_OR_DOUBLES = 0;
    public static final int NUMBER_FORMAT_INTS_ONLY = 1;
    public static final int NUMBER_FORMAT_NUM_PATCH_INT32 = 4;

    /* renamed from: d */
    public DataOutputStream f8053d;

    /* renamed from: e */
    public boolean f8054e;

    /* renamed from: a */
    public boolean f8050a = true;

    /* renamed from: b */
    public int f8051b = 0;

    /* renamed from: c */
    public int f8052c = 8;

    /* renamed from: f */
    public int f8055f = 0;

    public static int dump(Prototype prototype, OutputStream outputStream, boolean z) {
        DumpState dumpState = new DumpState(outputStream, z);
        dumpState.m22715g();
        dumpState.m22716f(prototype);
        return dumpState.f8055f;
    }

    /* renamed from: a */
    public void m22721a(int i) {
        this.f8053d.write(i);
    }

    /* renamed from: b */
    public void m22720b(Prototype prototype) {
        int[] iArr = prototype.code;
        m22714h(iArr.length);
        for (int i : iArr) {
            m22714h(i);
        }
    }

    /* renamed from: c */
    public void m22719c(Prototype prototype) {
        LuaValue[] luaValueArr = prototype.f8017k;
        m22714h(luaValueArr.length);
        for (LuaValue luaValue : luaValueArr) {
            int type = luaValue.type();
            if (type != 0) {
                if (type != 1) {
                    if (type != 3) {
                        if (type == 4) {
                            this.f8053d.write(4);
                            m22713i((LuaString) luaValue);
                        } else {
                            throw new IllegalArgumentException("bad type for " + luaValue);
                        }
                    } else {
                        int i = this.f8051b;
                        if (i != 0) {
                            if (i != 1) {
                                if (i == 4) {
                                    if (luaValue.isint()) {
                                        this.f8053d.write(-2);
                                        m22714h(luaValue.toint());
                                    } else {
                                        this.f8053d.write(3);
                                        m22717e(luaValue.todouble());
                                    }
                                } else {
                                    throw new IllegalArgumentException("number format not supported: " + this.f8051b);
                                }
                            } else if (!ALLOW_INTEGER_CASTING && !luaValue.isint()) {
                                throw new IllegalArgumentException("not an integer: " + luaValue);
                            } else {
                                this.f8053d.write(3);
                                m22714h(luaValue.toint());
                            }
                        } else {
                            this.f8053d.write(3);
                            m22717e(luaValue.todouble());
                        }
                    }
                } else {
                    this.f8053d.write(1);
                    m22721a(luaValue.toboolean() ? 1 : 0);
                }
            } else {
                this.f8053d.write(0);
            }
        }
        int length = prototype.f8018p.length;
        m22714h(length);
        for (int i2 = 0; i2 < length; i2++) {
            m22716f(prototype.f8018p[i2]);
        }
    }

    /* renamed from: d */
    public void m22718d(Prototype prototype) {
        int length;
        int length2;
        int length3;
        if (this.f8054e) {
            m22714h(0);
        } else {
            m22713i(prototype.source);
        }
        if (this.f8054e) {
            length = 0;
        } else {
            length = prototype.lineinfo.length;
        }
        m22714h(length);
        for (int i = 0; i < length; i++) {
            m22714h(prototype.lineinfo[i]);
        }
        if (this.f8054e) {
            length2 = 0;
        } else {
            length2 = prototype.locvars.length;
        }
        m22714h(length2);
        for (int i2 = 0; i2 < length2; i2++) {
            LocVars locVars = prototype.locvars[i2];
            m22713i(locVars.varname);
            m22714h(locVars.startpc);
            m22714h(locVars.endpc);
        }
        if (this.f8054e) {
            length3 = 0;
        } else {
            length3 = prototype.upvalues.length;
        }
        m22714h(length3);
        for (int i3 = 0; i3 < length3; i3++) {
            m22713i(prototype.upvalues[i3].name);
        }
    }

    /* renamed from: f */
    public void m22716f(Prototype prototype) {
        m22714h(prototype.linedefined);
        m22714h(prototype.lastlinedefined);
        m22721a(prototype.numparams);
        m22721a(prototype.is_vararg);
        m22721a(prototype.maxstacksize);
        m22720b(prototype);
        m22719c(prototype);
        m22712j(prototype);
        m22718d(prototype);
    }

    /* renamed from: g */
    public void m22715g() {
        this.f8053d.write(LoadState.LUA_SIGNATURE);
        this.f8053d.write(82);
        this.f8053d.write(0);
        this.f8053d.write(this.f8050a ? 1 : 0);
        this.f8053d.write(4);
        this.f8053d.write(4);
        this.f8053d.write(4);
        this.f8053d.write(this.f8052c);
        this.f8053d.write(this.f8051b);
        this.f8053d.write(LoadState.LUAC_TAIL);
    }

    /* renamed from: h */
    public void m22714h(int i) {
        if (this.f8050a) {
            this.f8053d.writeByte(i & 255);
            this.f8053d.writeByte((i >> 8) & 255);
            this.f8053d.writeByte((i >> 16) & 255);
            this.f8053d.writeByte((i >> 24) & 255);
            return;
        }
        this.f8053d.writeInt(i);
    }

    /* renamed from: j */
    public void m22712j(Prototype prototype) {
        int length = prototype.upvalues.length;
        m22714h(length);
        for (int i = 0; i < length; i++) {
            this.f8053d.writeByte(prototype.upvalues[i].instack ? 1 : 0);
            this.f8053d.writeByte(prototype.upvalues[i].idx);
        }
    }

    public DumpState(OutputStream outputStream, boolean z) {
        this.f8053d = new DataOutputStream(outputStream);
        this.f8054e = z;
    }

    /* renamed from: e */
    public void m22717e(double d) {
        long doubleToLongBits = Double.doubleToLongBits(d);
        if (this.f8050a) {
            m22714h((int) doubleToLongBits);
            m22714h((int) (doubleToLongBits >> 32));
            return;
        }
        this.f8053d.writeLong(doubleToLongBits);
    }

    /* renamed from: i */
    public void m22713i(LuaString luaString) {
        int i = luaString.len().toint();
        m22714h(i + 1);
        luaString.write(this.f8053d, 0, i);
        this.f8053d.write(0);
    }

    public static int dump(Prototype prototype, OutputStream outputStream, boolean z, int i, boolean z2) {
        if (i != 0 && i != 1 && i != 4) {
            throw new IllegalArgumentException("number format not supported: " + i);
        }
        DumpState dumpState = new DumpState(outputStream, z);
        dumpState.f8050a = z2;
        dumpState.f8051b = i;
        dumpState.f8052c = i != 1 ? 8 : 4;
        dumpState.m22715g();
        dumpState.m22716f(prototype);
        return dumpState.f8055f;
    }
}
