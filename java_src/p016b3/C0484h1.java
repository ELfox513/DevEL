package p016b3;

import p235z2.C7601t;
/* renamed from: b3.h1 */
/* loaded from: classes.dex */
public final class C0484h1 {

    /* renamed from: a */
    public long f1613a;

    /* renamed from: b */
    public long f1614b = Long.MIN_VALUE;

    /* renamed from: c */
    public final Object f1615c = new Object();

    public C0484h1(long j) {
        this.f1613a = j;
    }

    /* renamed from: b */
    public final void m26364b(long j) {
        synchronized (this.f1615c) {
            this.f1613a = j;
        }
    }

    /* renamed from: a */
    public final boolean m26365a() {
        synchronized (this.f1615c) {
            long mo24762b = C7601t.m932k().mo24762b();
            if (this.f1614b + this.f1613a > mo24762b) {
                return false;
            }
            this.f1614b = mo24762b;
            return true;
        }
    }
}
