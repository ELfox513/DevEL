package p168r4;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicLong;
import p026c4.C1052m;
import p235z2.C7601t;
/* renamed from: r4.lp0 */
/* loaded from: classes2.dex */
public final class lp0 implements InterfaceC5766fk {

    /* renamed from: a */
    public final InterfaceC6321uk<InterfaceC5766fk> f27295a;

    /* renamed from: b */
    public final Context f27296b;

    /* renamed from: c */
    public final InterfaceC5766fk f27297c;

    /* renamed from: d */
    public final kp0 f27298d;

    /* renamed from: e */
    public final String f27299e;

    /* renamed from: f */
    public final int f27300f;

    /* renamed from: h */
    public InputStream f27302h;

    /* renamed from: i */
    public boolean f27303i;

    /* renamed from: j */
    public Uri f27304j;

    /* renamed from: k */
    public volatile C6288to f27305k;

    /* renamed from: l */
    public boolean f27306l = false;

    /* renamed from: m */
    public boolean f27307m = false;

    /* renamed from: n */
    public boolean f27308n = false;

    /* renamed from: o */
    public boolean f27309o = false;

    /* renamed from: p */
    public long f27310p = 0;

    /* renamed from: r */
    public final AtomicLong f27312r = new AtomicLong(-1);

    /* renamed from: q */
    public h83<Long> f27311q = null;

    /* renamed from: g */
    public final boolean f27301g = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue();

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: b */
    public final Uri mo4615b() {
        return this.f27304j;
    }

    /* renamed from: f */
    public final boolean m9597f() {
        return this.f27306l;
    }

    /* renamed from: g */
    public final boolean m9596g() {
        return this.f27307m;
    }

    /* renamed from: h */
    public final boolean m9595h() {
        return this.f27308n;
    }

    /* renamed from: i */
    public final boolean m9594i() {
        return this.f27309o;
    }

    /* renamed from: j */
    public final long m9593j() {
        return this.f27310p;
    }

    /* renamed from: l */
    public final /* synthetic */ Long m9591l() {
        return Long.valueOf(C7601t.m933j().m8239g(this.f27305k));
    }

    /* renamed from: m */
    public final void m9590m(C5877ik c5877ik) {
        InterfaceC6321uk<InterfaceC5766fk> interfaceC6321uk = this.f27295a;
        if (interfaceC6321uk != null) {
            ((xp0) interfaceC6321uk).mo5195l(this, c5877ik);
        }
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: a */
    public final int mo4616a(byte[] bArr, int i, int i2) {
        int mo4616a;
        InterfaceC6321uk<InterfaceC5766fk> interfaceC6321uk;
        if (this.f27303i) {
            InputStream inputStream = this.f27302h;
            if (inputStream != null) {
                mo4616a = inputStream.read(bArr, i, i2);
            } else {
                mo4616a = this.f27297c.mo4616a(bArr, i, i2);
            }
            if ((!this.f27301g || this.f27302h != null) && (interfaceC6321uk = this.f27295a) != null) {
                ((xp0) interfaceC6321uk).m5205d0(this, mo4616a);
            }
            return mo4616a;
        }
        throw new IOException("Attempt to read closed CacheDataSource.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01e0  */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.StringBuilder] */
    @Override // p168r4.InterfaceC5766fk
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo4614d(p168r4.C5877ik r15) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.lp0.mo4614d(r4.ik):long");
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: e */
    public final void mo4613e() {
        if (this.f27303i) {
            this.f27303i = false;
            this.f27304j = null;
            InputStream inputStream = this.f27302h;
            if (inputStream != null) {
                C1052m.m24745a(inputStream);
                this.f27302h = null;
                return;
            }
            this.f27297c.mo4613e();
            return;
        }
        throw new IOException("Attempt to close an already closed CacheDataSource.");
    }

    /* renamed from: k */
    public final long m9592k() {
        if (this.f27305k == null) {
            return -1L;
        }
        if (this.f27312r.get() != -1) {
            return this.f27312r.get();
        }
        synchronized (this) {
            if (this.f27311q == null) {
                this.f27311q = qm0.f30190a.mo8015c(new Callable(this) { // from class: r4.jp0

                    /* renamed from: a */
                    public final lp0 f26092a;

                    {
                        this.f26092a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f26092a.m9591l();
                    }
                });
            }
        }
        if (!this.f27311q.isDone()) {
            return -1L;
        }
        try {
            this.f27312r.compareAndSet(-1L, this.f27311q.get().longValue());
            return this.f27312r.get();
        } catch (InterruptedException | ExecutionException unused) {
            return -1L;
        }
    }

    /* renamed from: n */
    public final boolean m9589n() {
        if (!this.f27301g) {
            return false;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30849L2)).booleanValue() && !this.f27308n) {
            return true;
        }
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30857M2)).booleanValue() || this.f27309o) {
            return false;
        }
        return true;
    }

    public lp0(Context context, InterfaceC5766fk interfaceC5766fk, String str, int i, InterfaceC6321uk<InterfaceC5766fk> interfaceC6321uk, kp0 kp0Var) {
        this.f27296b = context;
        this.f27297c = interfaceC5766fk;
        this.f27295a = interfaceC6321uk;
        this.f27298d = kp0Var;
        this.f27299e = str;
        this.f27300f = i;
    }
}
