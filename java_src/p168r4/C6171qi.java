package p168r4;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import java.io.IOException;
/* renamed from: r4.qi */
/* loaded from: classes2.dex */
public final class C6171qi implements InterfaceC6319ui, InterfaceC6168qf, InterfaceC6136pk, InterfaceC5728ej {

    /* renamed from: A */
    public InterfaceC6390wf f30118A;

    /* renamed from: B */
    public boolean f30119B;

    /* renamed from: C */
    public boolean f30120C;

    /* renamed from: D */
    public boolean f30121D;

    /* renamed from: E */
    public boolean f30122E;

    /* renamed from: F */
    public int f30123F;

    /* renamed from: G */
    public C6023mj f30124G;

    /* renamed from: H */
    public long f30125H;

    /* renamed from: I */
    public boolean[] f30126I;

    /* renamed from: J */
    public boolean[] f30127J;

    /* renamed from: K */
    public boolean f30128K;

    /* renamed from: M */
    public long f30130M;

    /* renamed from: O */
    public int f30132O;

    /* renamed from: P */
    public boolean f30133P;

    /* renamed from: Q */
    public boolean f30134Q;

    /* renamed from: R */
    public final C5913jk f30135R;

    /* renamed from: a */
    public final Uri f30136a;

    /* renamed from: b */
    public final InterfaceC5766fk f30137b;

    /* renamed from: d */
    public final int f30138d;

    /* renamed from: k */
    public final Handler f30139k;

    /* renamed from: p */
    public final InterfaceC6208ri f30140p;

    /* renamed from: q */
    public final InterfaceC6356vi f30141q;

    /* renamed from: r */
    public final long f30142r;

    /* renamed from: t */
    public final C6097oi f30144t;

    /* renamed from: z */
    public InterfaceC6282ti f30150z;

    /* renamed from: s */
    public final C6284tk f30143s = new C6284tk("Loader:ExtractorMediaPeriod");

    /* renamed from: u */
    public final C6432xk f30145u = new C6432xk();

    /* renamed from: v */
    public final Runnable f30146v = new RunnableC5911ji(this);

    /* renamed from: w */
    public final Runnable f30147w = new RunnableC5948ki(this);

    /* renamed from: x */
    public final Handler f30148x = new Handler();

    /* renamed from: N */
    public long f30131N = -9223372036854775807L;

    /* renamed from: y */
    public final SparseArray<C5802gj> f30149y = new SparseArray<>();

    /* renamed from: L */
    public long f30129L = -1;

    /* renamed from: D */
    public final boolean m7840D(int i) {
        return this.f30133P || (!m7824u() && this.f30149y.valueAt(i).m11144h());
    }

    /* renamed from: E */
    public final void m7839E() {
        this.f30143s.m6795i(Integer.MIN_VALUE);
    }

    /* renamed from: F */
    public final int m7838F(int i, C5906jd c5906jd, C5835hf c5835hf, boolean z) {
        if (this.f30122E || m7824u()) {
            return -3;
        }
        return this.f30149y.valueAt(i).m11139m(c5906jd, c5835hf, z, this.f30133P, this.f30130M);
    }

    @Override // p168r4.InterfaceC6168qf
    /* renamed from: b */
    public final void mo7834b(InterfaceC6390wf interfaceC6390wf) {
        this.f30118A = interfaceC6390wf;
        this.f30148x.post(this.f30146v);
    }

    @Override // p168r4.InterfaceC5728ej
    /* renamed from: c */
    public final void mo7833c(C5870id c5870id) {
        this.f30148x.post(this.f30146v);
    }

    @Override // p168r4.InterfaceC6168qf
    /* renamed from: j */
    public final void mo7830j() {
        this.f30119B = true;
        this.f30148x.post(this.f30146v);
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: k */
    public final void mo5299k(long j) {
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: l */
    public final void mo5298l() {
        this.f30143s.m6795i(Integer.MIN_VALUE);
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: o */
    public final long mo5296o() {
        if (this.f30122E) {
            this.f30122E = false;
            return this.f30130M;
        }
        return -9223372036854775807L;
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: p */
    public final C6023mj mo5295p() {
        return this.f30124G;
    }

    /* renamed from: q */
    public final void m7828q(C6060ni c6060ni) {
        long j;
        if (this.f30129L == -1) {
            j = c6060ni.f28296i;
            this.f30129L = j;
        }
    }

    /* renamed from: u */
    public final boolean m7824u() {
        return this.f30131N != -9223372036854775807L;
    }

    @Override // p168r4.InterfaceC6319ui, p168r4.InterfaceC5912jj
    public final long zza() {
        if (this.f30123F == 0) {
            return Long.MIN_VALUE;
        }
        return mo5297m();
    }

    /* renamed from: H */
    public static /* synthetic */ void m7836H(C6171qi c6171qi) {
        if (!c6171qi.f30134Q && !c6171qi.f30120C && c6171qi.f30118A != null && c6171qi.f30119B) {
            int size = c6171qi.f30149y.size();
            for (int i = 0; i < size; i++) {
                if (c6171qi.f30149y.valueAt(i).m11143i() == null) {
                    return;
                }
            }
            c6171qi.f30145u.m5291b();
            C5986lj[] c5986ljArr = new C5986lj[size];
            c6171qi.f30127J = new boolean[size];
            c6171qi.f30126I = new boolean[size];
            c6171qi.f30125H = c6171qi.f30118A.mo5740a();
            int i2 = 0;
            while (true) {
                boolean z = true;
                if (i2 < size) {
                    C5870id m11143i = c6171qi.f30149y.valueAt(i2).m11143i();
                    c5986ljArr[i2] = new C5986lj(m11143i);
                    String str = m11143i.f25060q;
                    if (!C5582al.m13003b(str) && !C5582al.m13004a(str)) {
                        z = false;
                    }
                    c6171qi.f30127J[i2] = z;
                    c6171qi.f30128K = z | c6171qi.f30128K;
                    i2++;
                } else {
                    c6171qi.f30124G = new C6023mj(c5986ljArr);
                    c6171qi.f30120C = true;
                    c6171qi.f30141q.mo4701f(new C5949kj(c6171qi.f30125H, c6171qi.f30118A.zza()), null);
                    c6171qi.f30150z.mo5305a(c6171qi);
                    return;
                }
            }
        }
    }

    /* renamed from: C */
    public final void m7841C() {
        this.f30143s.m6796h(new RunnableC5985li(this, this.f30144t));
        this.f30148x.removeCallbacksAndMessages(null);
        this.f30134Q = true;
    }

    /* renamed from: G */
    public final void m7837G(int i, long j) {
        C5802gj valueAt = this.f30149y.valueAt(i);
        if (this.f30133P && j > valueAt.m11142j()) {
            valueAt.m11141k();
        } else {
            valueAt.m11140l(j, true);
        }
    }

    @Override // p168r4.InterfaceC6136pk
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo7835a(InterfaceC6210rk interfaceC6210rk, long j, long j2, boolean z) {
        m7828q((C6060ni) interfaceC6210rk);
        if (!z && this.f30123F > 0) {
            int size = this.f30149y.size();
            for (int i = 0; i < size; i++) {
                this.f30149y.valueAt(i).m11147e(this.f30126I[i]);
            }
            this.f30150z.mo5304b(this);
        }
    }

    @Override // p168r4.InterfaceC6319ui, p168r4.InterfaceC5912jj
    /* renamed from: d */
    public final boolean mo5303d(long j) {
        if (!this.f30133P) {
            if (!this.f30120C || this.f30123F != 0) {
                boolean m5292a = this.f30145u.m5292a();
                if (!this.f30143s.m6798f()) {
                    m7827r();
                    return true;
                }
                return m5292a;
            }
            return false;
        }
        return false;
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: e */
    public final long mo5302e(C6172qj[] c6172qjArr, boolean[] zArr, InterfaceC5839hj[] interfaceC5839hjArr, boolean[] zArr2, long j) {
        C6172qj c6172qj;
        boolean z;
        int i;
        C6358vk.m6137d(this.f30120C);
        for (int i2 = 0; i2 < c6172qjArr.length; i2++) {
            InterfaceC5839hj interfaceC5839hj = interfaceC5839hjArr[i2];
            if (interfaceC5839hj != null && (c6172qjArr[i2] == null || !zArr[i2])) {
                i = ((C6134pi) interfaceC5839hj).f29466a;
                C6358vk.m6137d(this.f30126I[i]);
                this.f30123F--;
                this.f30126I[i] = false;
                this.f30149y.valueAt(i).m11145g();
                interfaceC5839hjArr[i2] = null;
            }
        }
        boolean z2 = false;
        for (int i3 = 0; i3 < c6172qjArr.length; i3++) {
            if (interfaceC5839hjArr[i3] == null && (c6172qj = c6172qjArr[i3]) != null) {
                c6172qj.m7813b();
                if (c6172qj.m7811d(0) == 0) {
                    z = true;
                } else {
                    z = false;
                }
                C6358vk.m6137d(z);
                int m9377b = this.f30124G.m9377b(c6172qj.m7814a());
                C6358vk.m6137d(!this.f30126I[m9377b]);
                this.f30123F++;
                this.f30126I[m9377b] = true;
                interfaceC5839hjArr[i3] = new C6134pi(this, m9377b);
                zArr2[i3] = true;
                z2 = true;
            }
        }
        if (!this.f30121D) {
            int size = this.f30149y.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (!this.f30126I[i4]) {
                    this.f30149y.valueAt(i4).m11145g();
                }
            }
        }
        if (this.f30123F == 0) {
            this.f30122E = false;
            if (this.f30143s.m6798f()) {
                this.f30143s.m6797g();
            }
        } else if (!this.f30121D ? j != 0 : z2) {
            j = mo5300h(j);
            for (int i5 = 0; i5 < interfaceC5839hjArr.length; i5++) {
                if (interfaceC5839hjArr[i5] != null) {
                    zArr2[i5] = true;
                }
            }
        }
        this.f30121D = true;
        return j;
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: f */
    public final void mo5301f(InterfaceC6282ti interfaceC6282ti, long j) {
        this.f30150z = interfaceC6282ti;
        this.f30145u.m5292a();
        m7827r();
    }

    @Override // p168r4.InterfaceC6136pk
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ int mo7832g(InterfaceC6210rk interfaceC6210rk, long j, long j2, IOException iOException) {
        InterfaceC6390wf interfaceC6390wf;
        boolean z;
        C6060ni c6060ni = (C6060ni) interfaceC6210rk;
        m7828q(c6060ni);
        Handler handler = this.f30139k;
        if (handler != null) {
            handler.post(new RunnableC6022mi(this, iOException));
        }
        if (iOException instanceof C6061nj) {
            return 3;
        }
        int m7826s = m7826s();
        int i = this.f30132O;
        if (this.f30129L == -1 && ((interfaceC6390wf = this.f30118A) == null || interfaceC6390wf.mo5740a() == -9223372036854775807L)) {
            this.f30130M = 0L;
            this.f30122E = this.f30120C;
            int size = this.f30149y.size();
            for (int i2 = 0; i2 < size; i2++) {
                C5802gj valueAt = this.f30149y.valueAt(i2);
                if (this.f30120C && !this.f30126I[i2]) {
                    z = false;
                } else {
                    z = true;
                }
                valueAt.m11147e(z);
            }
            c6060ni.m9087d(0L, 0L);
        }
        this.f30132O = m7826s();
        if (m7826s <= i) {
            return 0;
        }
        return 1;
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: h */
    public final long mo5300h(long j) {
        if (true != this.f30118A.zza()) {
            j = 0;
        }
        this.f30130M = j;
        int size = this.f30149y.size();
        boolean m7824u = true ^ m7824u();
        int i = 0;
        while (true) {
            if (m7824u) {
                if (i >= size) {
                    break;
                }
                if (this.f30126I[i]) {
                    m7824u = this.f30149y.valueAt(i).m11140l(j, false);
                }
                i++;
            } else {
                this.f30131N = j;
                this.f30133P = false;
                if (this.f30143s.m6798f()) {
                    this.f30143s.m6797g();
                } else {
                    for (int i2 = 0; i2 < size; i2++) {
                        this.f30149y.valueAt(i2).m11147e(this.f30126I[i2]);
                    }
                }
            }
        }
        this.f30122E = false;
        return j;
    }

    @Override // p168r4.InterfaceC6136pk
    /* renamed from: i */
    public final /* bridge */ /* synthetic */ void mo7831i(InterfaceC6210rk interfaceC6210rk, long j, long j2) {
        long j3;
        m7828q((C6060ni) interfaceC6210rk);
        this.f30133P = true;
        if (this.f30125H == -9223372036854775807L) {
            long m7825t = m7825t();
            if (m7825t == Long.MIN_VALUE) {
                j3 = 0;
            } else {
                j3 = m7825t + 10000;
            }
            this.f30125H = j3;
            this.f30141q.mo4701f(new C5949kj(j3, this.f30118A.zza()), null);
        }
        this.f30150z.mo5304b(this);
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: m */
    public final long mo5297m() {
        long m7825t;
        if (this.f30133P) {
            return Long.MIN_VALUE;
        }
        if (m7824u()) {
            return this.f30131N;
        }
        if (this.f30128K) {
            int size = this.f30149y.size();
            m7825t = Long.MAX_VALUE;
            for (int i = 0; i < size; i++) {
                if (this.f30127J[i]) {
                    m7825t = Math.min(m7825t, this.f30149y.valueAt(i).m11142j());
                }
            }
        } else {
            m7825t = m7825t();
        }
        if (m7825t == Long.MIN_VALUE) {
            return this.f30130M;
        }
        return m7825t;
    }

    @Override // p168r4.InterfaceC6168qf
    /* renamed from: n */
    public final InterfaceC6464yf mo7829n(int i, int i2) {
        C5802gj c5802gj = this.f30149y.get(i);
        if (c5802gj == null) {
            C5802gj c5802gj2 = new C5802gj(this.f30135R, null);
            c5802gj2.m11138n(this);
            this.f30149y.put(i, c5802gj2);
            return c5802gj2;
        }
        return c5802gj;
    }

    /* renamed from: r */
    public final void m7827r() {
        InterfaceC6390wf interfaceC6390wf;
        C6060ni c6060ni = new C6060ni(this, this.f30136a, this.f30137b, this.f30144t, this.f30145u);
        if (this.f30120C) {
            C6358vk.m6137d(m7824u());
            long j = this.f30125H;
            if (j != -9223372036854775807L && this.f30131N >= j) {
                this.f30133P = true;
                this.f30131N = -9223372036854775807L;
                return;
            }
            c6060ni.m9087d(this.f30118A.mo5739b(this.f30131N), this.f30131N);
            this.f30131N = -9223372036854775807L;
        }
        this.f30132O = m7826s();
        int i = this.f30138d;
        if (i == -1) {
            if (this.f30120C && this.f30129L == -1 && ((interfaceC6390wf = this.f30118A) == null || interfaceC6390wf.mo5740a() == -9223372036854775807L)) {
                i = 6;
            } else {
                i = 3;
            }
        }
        this.f30143s.m6799e(c6060ni, this, i);
    }

    /* renamed from: s */
    public final int m7826s() {
        int size = this.f30149y.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.f30149y.valueAt(i2).m11146f();
        }
        return i;
    }

    /* renamed from: t */
    public final long m7825t() {
        int size = this.f30149y.size();
        long j = Long.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            j = Math.max(j, this.f30149y.valueAt(i).m11142j());
        }
        return j;
    }

    public C6171qi(Uri uri, InterfaceC5766fk interfaceC5766fk, InterfaceC6131pf[] interfaceC6131pfArr, int i, Handler handler, InterfaceC6208ri interfaceC6208ri, InterfaceC6356vi interfaceC6356vi, C5913jk c5913jk, String str, int i2, byte[] bArr) {
        this.f30136a = uri;
        this.f30137b = interfaceC5766fk;
        this.f30138d = i;
        this.f30139k = handler;
        this.f30140p = interfaceC6208ri;
        this.f30141q = interfaceC6356vi;
        this.f30135R = c5913jk;
        this.f30142r = i2;
        this.f30144t = new C6097oi(interfaceC6131pfArr, this);
    }
}
