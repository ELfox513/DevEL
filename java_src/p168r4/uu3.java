package p168r4;

import android.os.Looper;
import android.util.Log;
import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.uu3 */
/* loaded from: classes2.dex */
public final class uu3 implements d14 {

    /* renamed from: A */
    public C5713e5 f32399A;

    /* renamed from: B */
    public boolean f32400B;

    /* renamed from: C */
    public boolean f32401C;

    /* renamed from: D */
    public vu2 f32402D;

    /* renamed from: a */
    public final ou3 f32403a;

    /* renamed from: d */
    public final ut2 f32406d;

    /* renamed from: e */
    public final po2 f32407e;

    /* renamed from: f */
    public final Looper f32408f;

    /* renamed from: g */
    public tu3 f32409g;

    /* renamed from: h */
    public C5713e5 f32410h;

    /* renamed from: p */
    public int f32418p;

    /* renamed from: q */
    public int f32419q;

    /* renamed from: r */
    public int f32420r;

    /* renamed from: s */
    public int f32421s;

    /* renamed from: w */
    public boolean f32425w;

    /* renamed from: z */
    public C5713e5 f32428z;

    /* renamed from: b */
    public final ru3 f32404b = new ru3();

    /* renamed from: i */
    public int f32411i = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;

    /* renamed from: j */
    public int[] f32412j = new int[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: k */
    public long[] f32413k = new long[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: n */
    public long[] f32416n = new long[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: m */
    public int[] f32415m = new int[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: l */
    public int[] f32414l = new int[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: o */
    public c14[] f32417o = new c14[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: c */
    public final bv3<su3> f32405c = new bv3<>(pu3.f29598a);

    /* renamed from: t */
    public long f32422t = Long.MIN_VALUE;

    /* renamed from: u */
    public long f32423u = Long.MIN_VALUE;

    /* renamed from: v */
    public long f32424v = Long.MIN_VALUE;

    /* renamed from: y */
    public boolean f32427y = true;

    /* renamed from: x */
    public boolean f32426x = true;

    /* renamed from: A */
    public final synchronized long m6369A() {
        return this.f32424v;
    }

    /* renamed from: B */
    public final synchronized boolean m6368B() {
        return this.f32425w;
    }

    /* renamed from: C */
    public final synchronized boolean m6367C(boolean z) {
        boolean z2 = true;
        if (!m6351m()) {
            if (!z && !this.f32425w) {
                C5713e5 c5713e5 = this.f32399A;
                if (c5713e5 != null) {
                    if (c5713e5 == this.f32410h) {
                        return false;
                    }
                } else {
                    z2 = false;
                }
            }
            return z2;
        } else if (this.f32405c.m12689a(this.f32419q + this.f32421s).f31519a != this.f32410h) {
            return true;
        } else {
            return m6349o(m6346r(this.f32421s));
        }
    }

    /* renamed from: E */
    public final synchronized boolean m6365E(long j, boolean z) {
        m6358L();
        int m6346r = m6346r(this.f32421s);
        if (!m6351m() || j < this.f32416n[m6346r] || (j > this.f32424v && !z)) {
            return false;
        }
        int m6348p = m6348p(m6346r, this.f32418p - this.f32421s, j, true);
        if (m6348p == -1) {
            return false;
        }
        this.f32422t = j;
        this.f32421s += m6348p;
        return true;
    }

    /* renamed from: F */
    public final synchronized int m6364F(long j, boolean z) {
        int m6346r = m6346r(this.f32421s);
        if (m6351m() && j >= this.f32416n[m6346r]) {
            if (j > this.f32424v && z) {
                return this.f32418p - this.f32421s;
            }
            int m6348p = m6348p(m6346r, this.f32418p - this.f32421s, j, true);
            if (m6348p == -1) {
                return 0;
            }
            return m6348p;
        }
        return 0;
    }

    /* renamed from: G */
    public final synchronized void m6363G(int i) {
        boolean z = false;
        if (i >= 0) {
            try {
                if (this.f32421s + i <= this.f32418p) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C5903ja.m10374a(z);
        this.f32421s += i;
    }

    /* renamed from: I */
    public final void m6361I() {
        this.f32403a.m8678e(m6354j());
    }

    /* renamed from: J */
    public final void m6360J(tu3 tu3Var) {
        this.f32409g = tu3Var;
    }

    /* renamed from: L */
    public final synchronized void m6358L() {
        this.f32421s = 0;
        this.f32403a.m8681b();
    }

    @Override // p168r4.d14
    /* renamed from: a */
    public final void mo4009a(C6423xb c6423xb, int i) {
        b14.m12888b(this, c6423xb, i);
    }

    @Override // p168r4.d14
    /* renamed from: b */
    public final int mo4008b(InterfaceC5936k6 interfaceC5936k6, int i, boolean z) {
        return b14.m12889a(this, interfaceC5936k6, i, true);
    }

    @Override // p168r4.d14
    /* renamed from: c */
    public final void mo4007c(C6423xb c6423xb, int i, int i2) {
        this.f32403a.m8675h(c6423xb, i);
    }

    @Override // p168r4.d14
    /* renamed from: d */
    public final int mo4006d(InterfaceC5936k6 interfaceC5936k6, int i, boolean z, int i2) {
        return this.f32403a.m8676g(interfaceC5936k6, i, z);
    }

    /* renamed from: g */
    public final synchronized int m6357g(C5751f5 c5751f5, C5861i4 c5861i4, boolean z, boolean z2, ru3 ru3Var) {
        c5861i4.f24959d = false;
        if (!m6351m()) {
            if (!z2 && !this.f32425w) {
                C5713e5 c5713e5 = this.f32399A;
                if (c5713e5 == null || (!z && c5713e5 == this.f32410h)) {
                    return -3;
                }
                m6350n(c5713e5, c5751f5);
                return -5;
            }
            c5861i4.m7887f(4);
            return -4;
        }
        C5713e5 c5713e52 = this.f32405c.m12689a(this.f32419q + this.f32421s).f31519a;
        if (!z && c5713e52 == this.f32410h) {
            int m6346r = m6346r(this.f32421s);
            if (!m6349o(m6346r)) {
                c5861i4.f24959d = true;
                return -3;
            }
            c5861i4.m7887f(this.f32415m[m6346r]);
            long j = this.f32416n[m6346r];
            c5861i4.f24960e = j;
            if (j < this.f32422t) {
                c5861i4.m7886g(Integer.MIN_VALUE);
            }
            ru3Var.f30695a = this.f32414l[m6346r];
            ru3Var.f30696b = this.f32413k[m6346r];
            ru3Var.f30697c = this.f32417o[m6346r];
            return -4;
        }
        m6350n(c5713e52, c5751f5);
        return -5;
    }

    /* renamed from: h */
    public final synchronized boolean m6356h(C5713e5 c5713e5) {
        this.f32427y = false;
        if (C5979lc.m9729H(c5713e5, this.f32399A)) {
            return false;
        }
        if (!this.f32405c.m12684f() && this.f32405c.m12687c().f31519a.equals(c5713e5)) {
            this.f32399A = this.f32405c.m12687c().f31519a;
        } else {
            this.f32399A = c5713e5;
        }
        C5713e5 c5713e52 = this.f32399A;
        this.f32400B = C5941kb.m10069c(c5713e52.f22814l, c5713e52.f22811i);
        this.f32401C = false;
        return true;
    }

    /* renamed from: i */
    public final synchronized long m6355i(long j, boolean z, boolean z2) {
        int i;
        int i2 = this.f32418p;
        if (i2 != 0) {
            long[] jArr = this.f32416n;
            int i3 = this.f32420r;
            if (j >= jArr[i3]) {
                if (z2 && (i = this.f32421s) != i2) {
                    i2 = i + 1;
                }
                int m6348p = m6348p(i3, i2, j, false);
                if (m6348p == -1) {
                    return -1L;
                }
                return m6347q(m6348p);
            }
        }
        return -1L;
    }

    /* renamed from: j */
    public final synchronized long m6354j() {
        int i = this.f32418p;
        if (i == 0) {
            return -1L;
        }
        return m6347q(i);
    }

    /* renamed from: k */
    public final void m6353k() {
        if (this.f32402D != null) {
            this.f32402D = null;
            this.f32410h = null;
        }
    }

    /* renamed from: l */
    public final synchronized void m6352l(long j, int i, long j2, int i2, c14 c14Var) {
        boolean z;
        boolean z2;
        int i3 = this.f32418p;
        if (i3 > 0) {
            int m6346r = m6346r(i3 - 1);
            if (this.f32413k[m6346r] + this.f32414l[m6346r] <= j2) {
                z2 = true;
            } else {
                z2 = false;
            }
            C5903ja.m10374a(z2);
        }
        if ((536870912 & i) != 0) {
            z = true;
        } else {
            z = false;
        }
        this.f32425w = z;
        this.f32424v = Math.max(this.f32424v, j);
        int m6346r2 = m6346r(this.f32418p);
        this.f32416n[m6346r2] = j;
        this.f32413k[m6346r2] = j2;
        this.f32414l[m6346r2] = i2;
        this.f32415m[m6346r2] = i;
        this.f32417o[m6346r2] = c14Var;
        this.f32412j[m6346r2] = 0;
        if (this.f32405c.m12684f() || !this.f32405c.m12687c().f31519a.equals(this.f32399A)) {
            ts2 ts2Var = ts2.f31983a;
            bv3<su3> bv3Var = this.f32405c;
            int i4 = this.f32419q + this.f32418p;
            C5713e5 c5713e5 = this.f32399A;
            c5713e5.getClass();
            bv3Var.m12688b(i4, new su3(c5713e5, ts2Var, null));
        }
        int i5 = this.f32418p + 1;
        this.f32418p = i5;
        int i6 = this.f32411i;
        if (i5 == i6) {
            int i7 = i6 + CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
            int[] iArr = new int[i7];
            long[] jArr = new long[i7];
            long[] jArr2 = new long[i7];
            int[] iArr2 = new int[i7];
            int[] iArr3 = new int[i7];
            c14[] c14VarArr = new c14[i7];
            int i8 = this.f32420r;
            int i9 = i6 - i8;
            System.arraycopy(this.f32413k, i8, jArr, 0, i9);
            System.arraycopy(this.f32416n, this.f32420r, jArr2, 0, i9);
            System.arraycopy(this.f32415m, this.f32420r, iArr2, 0, i9);
            System.arraycopy(this.f32414l, this.f32420r, iArr3, 0, i9);
            System.arraycopy(this.f32417o, this.f32420r, c14VarArr, 0, i9);
            System.arraycopy(this.f32412j, this.f32420r, iArr, 0, i9);
            int i10 = this.f32420r;
            System.arraycopy(this.f32413k, 0, jArr, i9, i10);
            System.arraycopy(this.f32416n, 0, jArr2, i9, i10);
            System.arraycopy(this.f32415m, 0, iArr2, i9, i10);
            System.arraycopy(this.f32414l, 0, iArr3, i9, i10);
            System.arraycopy(this.f32417o, 0, c14VarArr, i9, i10);
            System.arraycopy(this.f32412j, 0, iArr, i9, i10);
            this.f32413k = jArr;
            this.f32416n = jArr2;
            this.f32415m = iArr2;
            this.f32414l = iArr3;
            this.f32417o = c14VarArr;
            this.f32412j = iArr;
            this.f32420r = 0;
            this.f32411i = i7;
        }
    }

    /* renamed from: m */
    public final boolean m6351m() {
        return this.f32421s != this.f32418p;
    }

    /* renamed from: o */
    public final boolean m6349o(int i) {
        if (this.f32402D != null) {
            return (this.f32415m[i] & 1073741824) != 0 ? false : false;
        }
        return true;
    }

    /* renamed from: p */
    public final int m6348p(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.f32416n[i];
            if (j2 <= j) {
                if (!z || (this.f32415m[i] & 1) != 0) {
                    if (j2 == j) {
                        return i4;
                    }
                    i3 = i4;
                }
                i++;
                if (i == this.f32411i) {
                    i = 0;
                }
            } else {
                return i3;
            }
        }
        return i3;
    }

    /* renamed from: r */
    public final int m6346r(int i) {
        int i2 = this.f32420r + i;
        int i3 = this.f32411i;
        return i2 < i3 ? i2 : i2 - i3;
    }

    /* renamed from: s */
    public final void m6345s() {
        m6344t(true);
        m6353k();
    }

    /* renamed from: u */
    public final void m6343u(long j) {
        this.f32422t = j;
    }

    /* renamed from: v */
    public final int m6342v() {
        return this.f32419q + this.f32418p;
    }

    /* renamed from: x */
    public final void m6340x() {
        vu2 vu2Var = this.f32402D;
        if (vu2Var != null) {
            throw vu2Var.m6001a();
        }
    }

    /* renamed from: y */
    public final int m6339y() {
        return this.f32419q + this.f32421s;
    }

    /* renamed from: z */
    public final synchronized C5713e5 m6338z() {
        if (this.f32427y) {
            return null;
        }
        return this.f32399A;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
        if (r9 != 0) goto L17;
     */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m6366D(p168r4.C5751f5 r9, p168r4.C5861i4 r10, int r11, boolean r12) {
        /*
            r8 = this;
            r0 = r11 & 2
            r1 = 1
            if (r0 == 0) goto L7
            r5 = 1
            goto L9
        L7:
            r0 = 0
            r5 = 0
        L9:
            r4.ru3 r7 = r8.f32404b
            r2 = r8
            r3 = r9
            r4 = r10
            r6 = r12
            int r9 = r2.m6357g(r3, r4, r5, r6, r7)
            r12 = -4
            if (r9 != r12) goto L3e
            boolean r9 = r10.m7890c()
            if (r9 != 0) goto L3d
            r9 = r11 & 1
            r11 = r11 & 4
            if (r11 != 0) goto L34
            if (r9 == 0) goto L2c
            r4.ou3 r9 = r8.f32403a
            r4.ru3 r11 = r8.f32404b
            r9.m8679d(r10, r11)
            goto L3d
        L2c:
            r4.ou3 r9 = r8.f32403a
            r4.ru3 r11 = r8.f32404b
            r9.m8680c(r10, r11)
            goto L37
        L34:
            if (r9 == 0) goto L37
            goto L3d
        L37:
            int r9 = r8.f32421s
            int r9 = r9 + r1
            r8.f32421s = r9
            return r12
        L3d:
            r9 = -4
        L3e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.uu3.m6366D(r4.f5, r4.i4, int, boolean):int");
    }

    /* renamed from: H */
    public final void m6362H(long j, boolean z, boolean z2) {
        this.f32403a.m8678e(m6355i(j, false, z2));
    }

    @Override // p168r4.d14
    /* renamed from: e */
    public final void mo4005e(long j, int i, int i2, int i3, c14 c14Var) {
        int i4 = i & 1;
        if (this.f32426x) {
            if (i4 == 0) {
                return;
            }
            this.f32426x = false;
        }
        if (this.f32400B) {
            if (j < this.f32422t) {
                return;
            }
            if (i4 == 0) {
                if (!this.f32401C) {
                    Log.w("SampleQueue", "Overriding unexpected non-sync sample for format: ".concat(String.valueOf(this.f32399A)));
                    this.f32401C = true;
                }
                i |= 1;
            }
        }
        m6352l(j, i, (this.f32403a.m8677f() - i2) - i3, i2, c14Var);
    }

    @Override // p168r4.d14
    /* renamed from: f */
    public final void mo4004f(C5713e5 c5713e5) {
        this.f32428z = c5713e5;
        boolean m6356h = m6356h(c5713e5);
        tu3 tu3Var = this.f32409g;
        if (tu3Var != null && m6356h) {
            tu3Var.mo6709h(c5713e5);
        }
    }

    /* renamed from: n */
    public final void m6350n(C5713e5 c5713e5, C5751f5 c5751f5) {
        fz3 fz3Var;
        C5713e5 c5713e52 = this.f32410h;
        vu2 vu2Var = null;
        if (c5713e52 == null) {
            fz3Var = null;
        } else {
            fz3Var = c5713e52.f22817o;
        }
        this.f32410h = c5713e5;
        fz3 fz3Var2 = c5713e5.f22817o;
        c5751f5.f23299a = c5713e5.m11855b(this.f32406d.mo6371a(c5713e5));
        c5751f5.f23300b = this.f32402D;
        if (c5713e52 != null && C5979lc.m9729H(fz3Var, fz3Var2)) {
            return;
        }
        if (c5713e5.f22817o != null) {
            vu2Var = new vu2(new mm2(new yw2(1), 6001));
        }
        this.f32402D = vu2Var;
        c5751f5.f23300b = vu2Var;
    }

    /* renamed from: q */
    public final long m6347q(int i) {
        int i2;
        long j = this.f32423u;
        long j2 = Long.MIN_VALUE;
        if (i != 0) {
            int m6346r = m6346r(i - 1);
            for (int i3 = 0; i3 < i; i3++) {
                j2 = Math.max(j2, this.f32416n[m6346r]);
                if ((this.f32415m[m6346r] & 1) != 0) {
                    break;
                }
                m6346r--;
                if (m6346r == -1) {
                    m6346r = this.f32411i - 1;
                }
            }
        }
        this.f32423u = Math.max(j, j2);
        this.f32418p -= i;
        int i4 = this.f32419q + i;
        this.f32419q = i4;
        int i5 = this.f32420r + i;
        this.f32420r = i5;
        int i6 = this.f32411i;
        if (i5 >= i6) {
            this.f32420r = i5 - i6;
        }
        int i7 = this.f32421s - i;
        this.f32421s = i7;
        if (i7 < 0) {
            this.f32421s = 0;
        }
        this.f32405c.m12686d(i4);
        if (this.f32418p == 0) {
            int i8 = this.f32420r;
            if (i8 == 0) {
                i8 = this.f32411i;
            }
            return this.f32413k[i8 - 1] + this.f32414l[i2];
        }
        return this.f32413k[this.f32420r];
    }

    /* renamed from: t */
    public final void m6344t(boolean z) {
        this.f32403a.m8682a();
        this.f32418p = 0;
        this.f32419q = 0;
        this.f32420r = 0;
        this.f32421s = 0;
        this.f32426x = true;
        this.f32422t = Long.MIN_VALUE;
        this.f32423u = Long.MIN_VALUE;
        this.f32424v = Long.MIN_VALUE;
        this.f32425w = false;
        this.f32405c.m12685e();
        if (z) {
            this.f32428z = null;
            this.f32399A = null;
            this.f32427y = true;
        }
    }

    public uu3(qw3 qw3Var, Looper looper, ut2 ut2Var, po2 po2Var, byte[] bArr) {
        this.f32408f = looper;
        this.f32406d = ut2Var;
        this.f32407e = po2Var;
        this.f32403a = new ou3(qw3Var, null);
    }

    /* renamed from: w */
    public final void m6341w() {
        m6361I();
        m6353k();
    }
}
