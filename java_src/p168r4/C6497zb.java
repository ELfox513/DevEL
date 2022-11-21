package p168r4;

import android.os.SystemClock;
/* renamed from: r4.zb */
/* loaded from: classes2.dex */
public final class C6497zb implements InterfaceC5794gb {

    /* renamed from: a */
    public final InterfaceC5940ka f34431a;

    /* renamed from: b */
    public boolean f34432b;

    /* renamed from: d */
    public long f34433d;

    /* renamed from: k */
    public long f34434k;

    /* renamed from: p */
    public C6159q6 f34435p = C6159q6.f29990d;

    public C6497zb(InterfaceC5940ka interfaceC5940ka) {
        this.f34431a = interfaceC5940ka;
    }

    /* renamed from: a */
    public final void m4345a() {
        if (this.f34432b) {
            return;
        }
        this.f34434k = SystemClock.elapsedRealtime();
        this.f34432b = true;
    }

    /* renamed from: b */
    public final void m4344b() {
        if (this.f34432b) {
            m4342d(mo4346B());
            this.f34432b = false;
        }
    }

    @Override // p168r4.InterfaceC5794gb
    /* renamed from: c */
    public final void mo4343c(C6159q6 c6159q6) {
        if (this.f34432b) {
            m4342d(mo4346B());
        }
        this.f34435p = c6159q6;
    }

    /* renamed from: d */
    public final void m4342d(long j) {
        this.f34433d = j;
        if (this.f34432b) {
            this.f34434k = SystemClock.elapsedRealtime();
        }
    }

    @Override // p168r4.InterfaceC5794gb
    /* renamed from: z */
    public final C6159q6 mo4341z() {
        return this.f34435p;
    }

    @Override // p168r4.InterfaceC5794gb
    /* renamed from: B */
    public final long mo4346B() {
        long m8019a;
        long j = this.f34433d;
        if (this.f34432b) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f34434k;
            C6159q6 c6159q6 = this.f34435p;
            if (c6159q6.f29992a == 1.0f) {
                m8019a = C5711e3.m11871b(elapsedRealtime);
            } else {
                m8019a = c6159q6.m8019a(elapsedRealtime);
            }
            return j + m8019a;
        }
        return j;
    }
}
