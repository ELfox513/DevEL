package p168r4;

import p220x3.C7289o;
/* renamed from: r4.bh0 */
/* loaded from: classes2.dex */
public final class bh0 extends dh0 {

    /* renamed from: a */
    public final String f21060a;

    /* renamed from: b */
    public final int f21061b;

    public bh0(String str, int i) {
        this.f21060a = str;
        this.f21061b = i;
    }

    @Override // p168r4.eh0
    /* renamed from: a */
    public final String mo11797a() {
        return this.f21060a;
    }

    @Override // p168r4.eh0
    /* renamed from: b */
    public final int mo11796b() {
        return this.f21061b;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof bh0)) {
            bh0 bh0Var = (bh0) obj;
            if (C7289o.m1908a(this.f21060a, bh0Var.f21060a) && C7289o.m1908a(Integer.valueOf(this.f21061b), Integer.valueOf(bh0Var.f21061b))) {
                return true;
            }
        }
        return false;
    }
}
