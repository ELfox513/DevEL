package p168r4;

import android.os.SystemClock;
/* renamed from: r4.hl */
/* loaded from: classes2.dex */
public final class C5841hl implements InterfaceC6506zk {

    /* renamed from: a */
    public boolean f24660a;

    /* renamed from: b */
    public long f24661b;

    /* renamed from: c */
    public long f24662c;

    /* renamed from: d */
    public C6017md f24663d = C6017md.f27578d;

    /* renamed from: a */
    public final void m10894a() {
        if (this.f24660a) {
            return;
        }
        this.f24662c = SystemClock.elapsedRealtime();
        this.f24660a = true;
    }

    /* renamed from: b */
    public final void m10893b() {
        if (this.f24660a) {
            m10892c(mo4193r());
            this.f24660a = false;
        }
    }

    /* renamed from: c */
    public final void m10892c(long j) {
        this.f24661b = j;
        if (this.f24660a) {
            this.f24662c = SystemClock.elapsedRealtime();
        }
    }

    @Override // p168r4.InterfaceC6506zk
    /* renamed from: o0 */
    public final C6017md mo4195o0() {
        throw null;
    }

    @Override // p168r4.InterfaceC6506zk
    /* renamed from: p0 */
    public final C6017md mo4194p0(C6017md c6017md) {
        if (this.f24660a) {
            m10892c(mo4193r());
        }
        this.f24663d = c6017md;
        return c6017md;
    }

    @Override // p168r4.InterfaceC6506zk
    /* renamed from: r */
    public final long mo4193r() {
        long m9408a;
        long j = this.f24661b;
        if (this.f24660a) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f24662c;
            C6017md c6017md = this.f24663d;
            if (c6017md.f27579a == 1.0f) {
                m9408a = C6239sc.m7179b(elapsedRealtime);
            } else {
                m9408a = c6017md.m9408a(elapsedRealtime);
            }
            return j + m9408a;
        }
        return j;
    }

    /* renamed from: d */
    public final void m10891d(InterfaceC6506zk interfaceC6506zk) {
        m10892c(interfaceC6506zk.mo4193r());
        this.f24663d = interfaceC6506zk.mo4195o0();
    }
}
