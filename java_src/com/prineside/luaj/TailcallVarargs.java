package com.prineside.luaj;
/* loaded from: classes2.dex */
public class TailcallVarargs extends Varargs {

    /* renamed from: a */
    public LuaValue f8019a;

    /* renamed from: b */
    public Varargs f8020b;

    /* renamed from: d */
    public Varargs f8021d;

    public TailcallVarargs(LuaValue luaValue, Varargs varargs) {
        this.f8019a = luaValue;
        this.f8020b = varargs;
    }

    @Override // com.prineside.luaj.Varargs
    public boolean isTailcall() {
        return true;
    }

    @Override // com.prineside.luaj.Varargs
    public LuaValue arg(int i) {
        if (this.f8021d == null) {
            eval();
        }
        return this.f8021d.arg(i);
    }

    @Override // com.prineside.luaj.Varargs
    public LuaValue arg1() {
        if (this.f8021d == null) {
            eval();
        }
        return this.f8021d.arg1();
    }

    @Override // com.prineside.luaj.Varargs
    public Varargs eval() {
        while (true) {
            Varargs varargs = this.f8021d;
            if (varargs == null) {
                Varargs onInvoke = this.f8019a.onInvoke(this.f8020b);
                if (onInvoke.isTailcall()) {
                    TailcallVarargs tailcallVarargs = (TailcallVarargs) onInvoke;
                    this.f8019a = tailcallVarargs.f8019a;
                    this.f8020b = tailcallVarargs.f8020b;
                } else {
                    this.f8021d = onInvoke;
                    this.f8019a = null;
                    this.f8020b = null;
                }
            } else {
                return varargs;
            }
        }
    }

    @Override // com.prineside.luaj.Varargs
    public int narg() {
        if (this.f8021d == null) {
            eval();
        }
        return this.f8021d.narg();
    }

    @Override // com.prineside.luaj.Varargs
    public Varargs subargs(int i) {
        if (this.f8021d == null) {
            eval();
        }
        return this.f8021d.subargs(i);
    }

    public TailcallVarargs(LuaValue luaValue, LuaValue luaValue2, Varargs varargs) {
        this.f8019a = luaValue.get(luaValue2);
        this.f8020b = LuaValue.varargsOf(luaValue, varargs);
    }
}
