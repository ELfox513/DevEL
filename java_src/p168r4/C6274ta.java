package p168r4;

import android.util.SparseBooleanArray;
/* renamed from: r4.ta */
/* loaded from: classes2.dex */
public final class C6274ta {

    /* renamed from: a */
    public final SparseBooleanArray f31750a = new SparseBooleanArray();

    /* renamed from: b */
    public boolean f31751b;

    /* renamed from: a */
    public final C6274ta m6894a(int i) {
        C5903ja.m10371d(!this.f31751b);
        this.f31750a.append(i, true);
        return this;
    }

    /* renamed from: b */
    public final C6348va m6893b() {
        C5903ja.m10371d(!this.f31751b);
        this.f31751b = true;
        return new C6348va(this.f31750a, null);
    }
}
