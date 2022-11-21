package com.prineside.luaj;
/* loaded from: classes2.dex */
public class LuaError extends RuntimeException {

    /* renamed from: a */
    public int f7968a;

    /* renamed from: b */
    public String f7969b;

    /* renamed from: d */
    public String f7970d;

    /* renamed from: k */
    public Throwable f7971k;

    /* renamed from: p */
    public LuaValue f7972p;

    public LuaError(Throwable th) {
        super("vm error: " + th);
        this.f7971k = th;
        this.f7968a = 1;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f7971k;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str = this.f7970d;
        if (str != null) {
            return str;
        }
        String message = super.getMessage();
        if (message == null) {
            return null;
        }
        if (this.f7969b != null) {
            return this.f7969b + " " + message;
        }
        return message;
    }

    public LuaValue getMessageObject() {
        LuaValue luaValue = this.f7972p;
        if (luaValue != null) {
            return luaValue;
        }
        String message = getMessage();
        if (message != null) {
            return LuaValue.valueOf(message);
        }
        return null;
    }

    public LuaError(String str) {
        super(str);
        this.f7968a = 1;
    }

    public LuaError(String str, int i) {
        super(str);
        this.f7968a = i;
    }

    public LuaError(LuaValue luaValue) {
        super(luaValue.tojstring());
        this.f7972p = luaValue;
        this.f7968a = 1;
    }
}
