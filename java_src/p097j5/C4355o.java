package p097j5;

import java.util.concurrent.ExecutionException;
/* renamed from: j5.o */
/* loaded from: classes2.dex */
public final class C4355o implements InterfaceC4354n {

    /* renamed from: a */
    public final Object f18229a = new Object();

    /* renamed from: b */
    public final int f18230b;

    /* renamed from: c */
    public final C4347i0<Void> f18231c;

    /* renamed from: d */
    public int f18232d;

    /* renamed from: e */
    public int f18233e;

    /* renamed from: f */
    public int f18234f;

    /* renamed from: g */
    public Exception f18235g;

    /* renamed from: h */
    public boolean f18236h;

    public C4355o(int i, C4347i0<Void> c4347i0) {
        this.f18230b = i;
        this.f18231c = c4347i0;
    }

    /* renamed from: a */
    public final void m16759a() {
        int i = this.f18232d;
        int i2 = this.f18233e;
        int i3 = this.f18234f;
        int i4 = this.f18230b;
        if (i + i2 + i3 == i4) {
            if (this.f18235g != null) {
                C4347i0<Void> c4347i0 = this.f18231c;
                StringBuilder sb = new StringBuilder(54);
                sb.append(i2);
                sb.append(" out of ");
                sb.append(i4);
                sb.append(" underlying tasks failed");
                c4347i0.m16781u(new ExecutionException(sb.toString(), this.f18235g));
            } else if (this.f18236h) {
                this.f18231c.m16779w();
            } else {
                this.f18231c.m16783s(null);
            }
        }
    }

    @Override // p097j5.InterfaceC4340f
    /* renamed from: c */
    public final void mo1c(Object obj) {
        synchronized (this.f18229a) {
            this.f18232d++;
            m16759a();
        }
    }

    @Override // p097j5.InterfaceC4334c
    /* renamed from: d */
    public final void mo15406d() {
        synchronized (this.f18229a) {
            this.f18234f++;
            this.f18236h = true;
            m16759a();
        }
    }

    @Override // p097j5.InterfaceC4338e
    /* renamed from: e */
    public final void mo0e(Exception exc) {
        synchronized (this.f18229a) {
            this.f18233e++;
            this.f18235g = exc;
            m16759a();
        }
    }
}
