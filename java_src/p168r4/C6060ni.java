package p168r4;

import android.net.Uri;
/* renamed from: r4.ni */
/* loaded from: classes2.dex */
public final class C6060ni implements InterfaceC6210rk {

    /* renamed from: a */
    public final Uri f28288a;

    /* renamed from: b */
    public final InterfaceC5766fk f28289b;

    /* renamed from: c */
    public final C6097oi f28290c;

    /* renamed from: d */
    public final C6432xk f28291d;

    /* renamed from: e */
    public final C6316uf f28292e;

    /* renamed from: f */
    public volatile boolean f28293f;

    /* renamed from: g */
    public boolean f28294g;

    /* renamed from: h */
    public long f28295h;

    /* renamed from: i */
    public long f28296i;

    /* renamed from: j */
    public final /* synthetic */ C6171qi f28297j;

    @Override // p168r4.InterfaceC6210rk
    /* renamed from: b */
    public final void mo7484b() {
        this.f28293f = true;
    }

    /* renamed from: d */
    public final void m9087d(long j, long j2) {
        this.f28292e.f32262a = j;
        this.f28295h = j2;
        this.f28294g = true;
    }

    @Override // p168r4.InterfaceC6210rk
    /* renamed from: e */
    public final boolean mo7482e() {
        return this.f28293f;
    }

    public C6060ni(C6171qi c6171qi, Uri uri, InterfaceC5766fk interfaceC5766fk, C6097oi c6097oi, C6432xk c6432xk) {
        this.f28297j = c6171qi;
        uri.getClass();
        this.f28288a = uri;
        interfaceC5766fk.getClass();
        this.f28289b = interfaceC5766fk;
        c6097oi.getClass();
        this.f28290c = c6097oi;
        this.f28291d = c6432xk;
        this.f28292e = new C6316uf();
        this.f28294g = true;
        this.f28296i = -1L;
    }

    @Override // p168r4.InterfaceC6210rk
    /* renamed from: c */
    public final void mo7483c() {
        C6094of c6094of;
        long j;
        while (!this.f28293f) {
            int i = 0;
            try {
                long j2 = this.f28292e.f32262a;
                long mo4614d = this.f28289b.mo4614d(new C5877ik(this.f28288a, null, j2, j2, -1L, null, 0));
                this.f28296i = mo4614d;
                if (mo4614d != -1) {
                    j = j2;
                    mo4614d += j;
                    this.f28296i = mo4614d;
                } else {
                    j = j2;
                }
                c6094of = new C6094of(this.f28289b, j, mo4614d);
                try {
                    InterfaceC6131pf m8793b = this.f28290c.m8793b(c6094of, this.f28289b.mo4615b());
                    if (this.f28294g) {
                        m8793b.mo4728l(j, this.f28295h);
                        this.f28294g = false;
                    }
                    long j3 = j;
                    int i2 = 0;
                    while (true) {
                        if (i2 != 0) {
                            break;
                        }
                        try {
                            if (!this.f28293f) {
                                this.f28291d.m5290c();
                                i2 = m8793b.mo4727m(c6094of, this.f28292e);
                                if (c6094of.m8811h() > C6171qi.m7822w(this.f28297j) + j3) {
                                    j3 = c6094of.m8811h();
                                    this.f28291d.m5291b();
                                    C6171qi.m7820y(this.f28297j).post(C6171qi.m7821x(this.f28297j));
                                }
                            } else {
                                i2 = 0;
                                break;
                            }
                        } catch (Throwable th) {
                            th = th;
                            i = i2;
                            if (i != 1 && c6094of != null) {
                                this.f28292e.f32262a = c6094of.m8811h();
                            }
                            C5988ll.m9651c(this.f28289b);
                            throw th;
                        }
                    }
                    if (i2 != 1) {
                        this.f28292e.f32262a = c6094of.m8811h();
                        i = i2;
                    }
                    C5988ll.m9651c(this.f28289b);
                    if (i != 0) {
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                c6094of = null;
            }
        }
    }
}
