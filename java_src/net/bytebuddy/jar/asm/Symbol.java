package net.bytebuddy.jar.asm;
/* loaded from: classes.dex */
abstract class Symbol {

    /* renamed from: a */
    public final int f19224a;

    /* renamed from: b */
    public final int f19225b;

    /* renamed from: c */
    public final String f19226c;

    /* renamed from: d */
    public final String f19227d;

    /* renamed from: e */
    public final String f19228e;

    /* renamed from: f */
    public final long f19229f;

    /* renamed from: g */
    public int f19230g;

    /* renamed from: a */
    public int m14867a() {
        if (this.f19230g == 0) {
            this.f19230g = Type.getArgumentsAndReturnSizes(this.f19228e);
        }
        return this.f19230g;
    }

    public Symbol(int i, int i2, String str, String str2, String str3, long j) {
        this.f19224a = i;
        this.f19225b = i2;
        this.f19226c = str;
        this.f19227d = str2;
        this.f19228e = str3;
        this.f19229f = j;
    }
}
