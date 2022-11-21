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
/* renamed from: r4.fr0 */
/* loaded from: classes2.dex */
public final class fr0 extends AbstractC5898j5 {

    /* renamed from: e */
    public final Context f23633e;

    /* renamed from: f */
    public final InterfaceC6087o8 f23634f;

    /* renamed from: g */
    public final er0 f23635g;

    /* renamed from: h */
    public final String f23636h;

    /* renamed from: i */
    public final int f23637i;

    /* renamed from: j */
    public final boolean f23638j;

    /* renamed from: k */
    public InputStream f23639k;

    /* renamed from: l */
    public boolean f23640l;

    /* renamed from: m */
    public Uri f23641m;

    /* renamed from: n */
    public volatile C6288to f23642n;

    /* renamed from: o */
    public boolean f23643o;

    /* renamed from: p */
    public boolean f23644p;

    /* renamed from: q */
    public boolean f23645q;

    /* renamed from: r */
    public boolean f23646r;

    /* renamed from: s */
    public long f23647s;

    /* renamed from: t */
    public h83<Long> f23648t;

    /* renamed from: u */
    public final AtomicLong f23649u;

    public fr0(Context context, InterfaceC6087o8 interfaceC6087o8, String str, int i, InterfaceC5844ho interfaceC5844ho, er0 er0Var) {
        super(false);
        this.f23633e = context;
        this.f23634f = interfaceC6087o8;
        this.f23635g = er0Var;
        this.f23636h = str;
        this.f23637i = i;
        this.f23643o = false;
        this.f23644p = false;
        this.f23645q = false;
        this.f23646r = false;
        this.f23647s = 0L;
        this.f23649u = new AtomicLong(-1L);
        this.f23648t = null;
        this.f23638j = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue();
        mo5984c(interfaceC5844ho);
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        return this.f23641m;
    }

    /* renamed from: q */
    public final long m11390q() {
        return this.f23647s;
    }

    /* renamed from: t */
    public final boolean m11389t() {
        return this.f23643o;
    }

    /* renamed from: u */
    public final boolean m11388u() {
        return this.f23644p;
    }

    /* renamed from: v */
    public final boolean m11387v() {
        return this.f23645q;
    }

    /* renamed from: w */
    public final boolean m11386w() {
        return this.f23646r;
    }

    /* renamed from: y */
    public final /* synthetic */ Long m11384y() {
        return Long.valueOf(C7601t.m933j().m8239g(this.f23642n));
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        int mo4060b;
        if (this.f23640l) {
            InputStream inputStream = this.f23639k;
            if (inputStream != null) {
                mo4060b = inputStream.read(bArr, i, i2);
            } else {
                mo4060b = this.f23634f.mo4060b(bArr, i, i2);
            }
            if (!this.f23638j || this.f23639k != null) {
                m10420r(mo4060b);
            }
            return mo4060b;
        }
        throw new IOException("Attempt to read closed GcacheDataSource.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01e0  */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.StringBuilder] */
    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo4059g(p168r4.C6350vc r15) {
        /*
            Method dump skipped, instructions count: 520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.fr0.mo4059g(r4.vc):long");
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        if (this.f23640l) {
            boolean z = false;
            this.f23640l = false;
            this.f23641m = null;
            z = (this.f23638j && this.f23639k == null) ? true : true;
            InputStream inputStream = this.f23639k;
            if (inputStream != null) {
                C1052m.m24745a(inputStream);
                this.f23639k = null;
            } else {
                this.f23634f.mo4058h();
            }
            if (z) {
                m10419s();
                return;
            }
            return;
        }
        throw new IOException("Attempt to close an already closed GcacheDataSource.");
    }

    /* renamed from: x */
    public final long m11385x() {
        if (this.f23642n == null) {
            return -1L;
        }
        if (this.f23649u.get() != -1) {
            return this.f23649u.get();
        }
        synchronized (this) {
            if (this.f23648t == null) {
                this.f23648t = qm0.f30190a.mo8015c(new Callable(this) { // from class: r4.dr0

                    /* renamed from: a */
                    public final fr0 f22408a;

                    {
                        this.f22408a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f22408a.m11384y();
                    }
                });
            }
        }
        if (!this.f23648t.isDone()) {
            return -1L;
        }
        try {
            this.f23649u.compareAndSet(-1L, this.f23648t.get().longValue());
            return this.f23649u.get();
        } catch (InterruptedException | ExecutionException unused) {
            return -1L;
        }
    }

    /* renamed from: z */
    public final boolean m11383z() {
        if (!this.f23638j) {
            return false;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30849L2)).booleanValue() && !this.f23645q) {
            return true;
        }
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30857M2)).booleanValue() || this.f23646r) {
            return false;
        }
        return true;
    }
}
