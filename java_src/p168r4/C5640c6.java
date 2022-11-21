package p168r4;

import android.os.Handler;
import android.util.Pair;
/* renamed from: r4.c6 */
/* loaded from: classes2.dex */
public final class C5640c6 {

    /* renamed from: a */
    public final C5606b8 f21400a = new C5606b8();

    /* renamed from: b */
    public final C5679d8 f21401b = new C5679d8();

    /* renamed from: c */
    public final c41 f21402c;

    /* renamed from: d */
    public final Handler f21403d;

    /* renamed from: e */
    public long f21404e;

    /* renamed from: f */
    public int f21405f;

    /* renamed from: g */
    public boolean f21406g;

    /* renamed from: h */
    public C6491z5 f21407h;

    /* renamed from: i */
    public C6491z5 f21408i;

    /* renamed from: j */
    public C6491z5 f21409j;

    /* renamed from: k */
    public int f21410k;

    /* renamed from: l */
    public Object f21411l;

    /* renamed from: m */
    public long f21412m;

    /* renamed from: c */
    public static final boolean m12546c(ft3 ft3Var) {
        return !ft3Var.m11647b() && ft3Var.f23241e == -1;
    }

    /* renamed from: d */
    public final boolean m12545d(AbstractC5717e8 abstractC5717e8, int i) {
        this.f21405f = i;
        return m12525x(abstractC5717e8);
    }

    /* renamed from: e */
    public final boolean m12544e(AbstractC5717e8 abstractC5717e8, boolean z) {
        this.f21406g = z;
        return m12525x(abstractC5717e8);
    }

    /* renamed from: f */
    public final boolean m12543f(et3 et3Var) {
        C6491z5 c6491z5 = this.f21409j;
        return c6491z5 != null && c6491z5.f34335a == et3Var;
    }

    /* renamed from: g */
    public final void m12542g(long j) {
        C6491z5 c6491z5 = this.f21409j;
        if (c6491z5 != null) {
            c6491z5.m4443h(j);
        }
    }

    /* renamed from: j */
    public final C6491z5 m12539j() {
        return this.f21409j;
    }

    /* renamed from: k */
    public final C6491z5 m12538k() {
        return this.f21407h;
    }

    /* renamed from: l */
    public final C6491z5 m12537l() {
        return this.f21408i;
    }

    /* renamed from: o */
    public final boolean m12534o(C6491z5 c6491z5) {
        boolean z;
        boolean z2 = false;
        if (c6491z5 != null) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        if (c6491z5.equals(this.f21409j)) {
            return false;
        }
        this.f21409j = c6491z5;
        while (c6491z5.m4436o() != null) {
            c6491z5 = c6491z5.m4436o();
            if (c6491z5 == this.f21408i) {
                this.f21408i = this.f21407h;
                z2 = true;
            }
            c6491z5.m4438m();
            this.f21410k--;
        }
        this.f21409j.m4437n(null);
        m12527v();
        return z2;
    }

    /* renamed from: t */
    public final /* synthetic */ void m12529t(l33 l33Var, ft3 ft3Var) {
        this.f21402c.m12618R(l33Var.m9797g(), ft3Var);
    }

    /* renamed from: u */
    public final C6491z5 m12528u(InterfaceC5827h7[] interfaceC5827h7Arr, aw3 aw3Var, qw3 qw3Var, C5899j6 c5899j6, C5567a6 c5567a6, cw3 cw3Var) {
        long m4450a;
        C6491z5 c6491z5 = this.f21409j;
        if (c6491z5 == null) {
            if (c5567a6.f20386a.m11647b()) {
                long j = c5567a6.f20388c;
                if (j != -9223372036854775807L) {
                    m4450a = j;
                }
            }
            m4450a = 0;
        } else {
            m4450a = (c6491z5.m4450a() + this.f21409j.f34340f.f20390e) - c5567a6.f20387b;
        }
        C6491z5 c6491z52 = new C6491z5(interfaceC5827h7Arr, m4450a, aw3Var, qw3Var, c5899j6, c5567a6, cw3Var, null);
        C6491z5 c6491z53 = this.f21409j;
        if (c6491z53 != null) {
            c6491z53.m4437n(c6491z52);
        } else {
            this.f21407h = c6491z52;
            this.f21408i = c6491z52;
        }
        this.f21411l = null;
        this.f21409j = c6491z52;
        this.f21410k++;
        m12527v();
        return c6491z52;
    }

    /* renamed from: z */
    public final C5567a6 m12523z(AbstractC5717e8 abstractC5717e8, ft3 ft3Var, long j, long j2) {
        abstractC5717e8.mo6932o(ft3Var.f23237a, this.f21400a);
        if (ft3Var.m11647b()) {
            return m12551A(abstractC5717e8, ft3Var.f23237a, ft3Var.f23238b, ft3Var.f23239c, j, ft3Var.f23240d);
        }
        return m12550B(abstractC5717e8, ft3Var.f23237a, j2, j, ft3Var.f23240d);
    }

    /* renamed from: A */
    public final C5567a6 m12551A(AbstractC5717e8 abstractC5717e8, Object obj, int i, int i2, long j, long j2) {
        ft3 ft3Var = new ft3(obj, i, i2, j2);
        long m12850h = abstractC5717e8.mo6932o(ft3Var.f23237a, this.f21400a).m12850h(ft3Var.f23238b, ft3Var.f23239c);
        if (i2 == this.f21400a.m12855c(i)) {
            this.f21400a.m12849i();
        }
        this.f21400a.m12848j(ft3Var.f23238b);
        long j3 = 0;
        if (m12850h != -9223372036854775807L && m12850h <= 0) {
            j3 = Math.max(0L, (-1) + m12850h);
        }
        return new C5567a6(ft3Var, j3, j, -9223372036854775807L, m12850h, false, false, false, false);
    }

    /* renamed from: B */
    public final C5567a6 m12550B(AbstractC5717e8 abstractC5717e8, Object obj, long j, long j2, long j3) {
        long j4;
        long j5;
        long j6 = j;
        abstractC5717e8.mo6932o(obj, this.f21400a);
        int m12852f = this.f21400a.m12852f(j6);
        ft3 ft3Var = new ft3(obj, j3, m12852f);
        boolean m12546c = m12546c(ft3Var);
        boolean m12549C = m12549C(abstractC5717e8, ft3Var);
        boolean m12548a = m12548a(abstractC5717e8, ft3Var, m12546c);
        if (m12852f != -1) {
            this.f21400a.m12848j(m12852f);
        }
        if (m12852f != -1) {
            this.f21400a.m12856b(m12852f);
            j4 = 0;
        } else {
            j4 = -9223372036854775807L;
        }
        if (j4 != -9223372036854775807L) {
            j5 = j4;
        } else {
            j5 = this.f21400a.f20896d;
        }
        if (j5 != -9223372036854775807L && j6 >= j5) {
            j6 = Math.max(0L, (-1) + j5);
        }
        return new C5567a6(ft3Var, j6, j2, j4, j5, false, m12546c, m12549C, m12548a);
    }

    /* renamed from: a */
    public final boolean m12548a(AbstractC5717e8 abstractC5717e8, ft3 ft3Var, boolean z) {
        int mo4072i = abstractC5717e8.mo4072i(ft3Var.f23237a);
        if (abstractC5717e8.mo4075f(abstractC5717e8.mo4073h(mo4072i, this.f21400a, false).f20895c, this.f21401b, 0L).f22152g || abstractC5717e8.m11842l(mo4072i, this.f21400a, this.f21401b, this.f21405f, this.f21406g) != -1 || !z) {
            return false;
        }
        return true;
    }

    /* renamed from: b */
    public final long m12547b(AbstractC5717e8 abstractC5717e8, Object obj, int i) {
        abstractC5717e8.mo6932o(obj, this.f21400a);
        this.f21400a.m12856b(i);
        this.f21400a.m12847k(i);
        return 0L;
    }

    /* renamed from: h */
    public final boolean m12541h() {
        C6491z5 c6491z5 = this.f21409j;
        if (c6491z5 == null) {
            return true;
        }
        if (!c6491z5.f34340f.f20394i && c6491z5.m4447d() && this.f21409j.f34340f.f20390e != -9223372036854775807L && this.f21410k < 100) {
            return true;
        }
        return false;
    }

    /* renamed from: i */
    public final C5567a6 m12540i(long j, C6085o6 c6085o6) {
        C6491z5 c6491z5 = this.f21409j;
        if (c6491z5 == null) {
            return m12523z(c6085o6.f28881a, c6085o6.f28882b, c6085o6.f28883c, c6085o6.f28899s);
        }
        return m12524y(c6085o6.f28881a, c6491z5, j);
    }

    /* renamed from: m */
    public final C6491z5 m12536m() {
        C6491z5 c6491z5 = this.f21408i;
        boolean z = false;
        if (c6491z5 != null && c6491z5.m4436o() != null) {
            z = true;
        }
        C5903ja.m10371d(z);
        this.f21408i = this.f21408i.m4436o();
        m12527v();
        return this.f21408i;
    }

    /* renamed from: n */
    public final C6491z5 m12535n() {
        C6491z5 c6491z5 = this.f21407h;
        if (c6491z5 == null) {
            return null;
        }
        if (c6491z5 == this.f21408i) {
            this.f21408i = c6491z5.m4436o();
        }
        this.f21407h.m4438m();
        int i = this.f21410k - 1;
        this.f21410k = i;
        if (i == 0) {
            this.f21409j = null;
            C6491z5 c6491z52 = this.f21407h;
            this.f21411l = c6491z52.f34336b;
            this.f21412m = c6491z52.f34340f.f20386a.f23240d;
        }
        this.f21407h = this.f21407h.m4436o();
        m12527v();
        return this.f21407h;
    }

    /* renamed from: p */
    public final void m12533p() {
        if (this.f21410k == 0) {
            return;
        }
        C6491z5 c6491z5 = this.f21407h;
        C5903ja.m10370e(c6491z5);
        this.f21411l = c6491z5.f34336b;
        this.f21412m = c6491z5.f34340f.f20386a.f23240d;
        while (c6491z5 != null) {
            c6491z5.m4438m();
            c6491z5 = c6491z5.m4436o();
        }
        this.f21407h = null;
        this.f21409j = null;
        this.f21408i = null;
        this.f21410k = 0;
        m12527v();
    }

    /* renamed from: q */
    public final boolean m12532q(AbstractC5717e8 abstractC5717e8, long j, long j2) {
        C5567a6 c5567a6;
        long m4450a;
        boolean z;
        C6491z5 c6491z5 = null;
        for (C6491z5 c6491z52 = this.f21407h; c6491z52 != null; c6491z52 = c6491z52.m4436o()) {
            C5567a6 c5567a62 = c6491z52.f34340f;
            if (c6491z5 == null) {
                c5567a6 = m12531r(abstractC5717e8, c5567a62);
            } else {
                C5567a6 m12524y = m12524y(abstractC5717e8, c6491z5, j);
                if (m12524y == null) {
                    if (!m12534o(c6491z5)) {
                        return true;
                    }
                    return false;
                } else if (c5567a62.f20387b == m12524y.f20387b && c5567a62.f20386a.equals(m12524y.f20386a)) {
                    c5567a6 = m12524y;
                } else if (!m12534o(c6491z5)) {
                    return true;
                } else {
                    return false;
                }
            }
            c6491z52.f34340f = c5567a6.m13043b(c5567a62.f20388c);
            long j3 = c5567a62.f20390e;
            long j4 = c5567a6.f20390e;
            if (j3 != -9223372036854775807L && j3 != j4) {
                c6491z52.m4433r();
                long j5 = c5567a6.f20390e;
                if (j5 == -9223372036854775807L) {
                    m4450a = Long.MAX_VALUE;
                } else {
                    m4450a = j5 + c6491z52.m4450a();
                }
                if (c6491z52 == this.f21408i) {
                    boolean z2 = c6491z52.f34340f.f20391f;
                    if (j2 == Long.MIN_VALUE || j2 >= m4450a) {
                        z = true;
                        if (m12534o(c6491z52) && !z) {
                            return true;
                        }
                        return false;
                    }
                }
                z = false;
                if (m12534o(c6491z52)) {
                }
                return false;
            }
            c6491z5 = c6491z52;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0062  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p168r4.C5567a6 m12531r(p168r4.AbstractC5717e8 r19, p168r4.C5567a6 r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            r4.ft3 r3 = r2.f20386a
            boolean r12 = m12546c(r3)
            boolean r13 = r0.m12549C(r1, r3)
            boolean r14 = r0.m12548a(r1, r3, r12)
            r4.ft3 r4 = r2.f20386a
            java.lang.Object r4 = r4.f23237a
            r4.b8 r5 = r0.f21400a
            r1.mo6932o(r4, r5)
            boolean r1 = r3.m11647b()
            r4 = -1
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L36
            int r1 = r3.f23241e
            if (r1 != r4) goto L2e
            goto L36
        L2e:
            r4.b8 r7 = r0.f21400a
            r7.m12856b(r1)
            r7 = 0
            goto L37
        L36:
            r7 = r5
        L37:
            boolean r1 = r3.m11647b()
            if (r1 == 0) goto L49
            r4.b8 r1 = r0.f21400a
            int r5 = r3.f23238b
            int r6 = r3.f23239c
            long r5 = r1.m12850h(r5, r6)
        L47:
            r9 = r5
            goto L54
        L49:
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 == 0) goto L4f
            r9 = r7
            goto L54
        L4f:
            r4.b8 r1 = r0.f21400a
            long r5 = r1.f20896d
            goto L47
        L54:
            boolean r1 = r3.m11647b()
            if (r1 == 0) goto L62
            r4.b8 r1 = r0.f21400a
            int r4 = r3.f23238b
            r1.m12848j(r4)
            goto L6b
        L62:
            int r1 = r3.f23241e
            if (r1 == r4) goto L6b
            r4.b8 r4 = r0.f21400a
            r4.m12848j(r1)
        L6b:
            r4.a6 r15 = new r4.a6
            long r4 = r2.f20387b
            long r1 = r2.f20388c
            r11 = 0
            r16 = r1
            r1 = r15
            r2 = r3
            r3 = r4
            r5 = r16
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C5640c6.m12531r(r4.e8, r4.a6):r4.a6");
    }

    /* renamed from: s */
    public final ft3 m12530s(AbstractC5717e8 abstractC5717e8, Object obj, long j) {
        long j2;
        int mo4072i;
        int i = abstractC5717e8.mo6932o(obj, this.f21400a).f20895c;
        Object obj2 = this.f21411l;
        if (obj2 != null && (mo4072i = abstractC5717e8.mo4072i(obj2)) != -1 && abstractC5717e8.mo4073h(mo4072i, this.f21400a, false).f20895c == i) {
            j2 = this.f21412m;
        } else {
            C6491z5 c6491z5 = this.f21407h;
            while (true) {
                if (c6491z5 != null) {
                    if (c6491z5.f34336b.equals(obj)) {
                        j2 = c6491z5.f34340f.f20386a.f23240d;
                        break;
                    }
                    c6491z5 = c6491z5.m4436o();
                } else {
                    C6491z5 c6491z52 = this.f21407h;
                    while (true) {
                        if (c6491z52 != null) {
                            int mo4072i2 = abstractC5717e8.mo4072i(c6491z52.f34336b);
                            if (mo4072i2 != -1 && abstractC5717e8.mo4073h(mo4072i2, this.f21400a, false).f20895c == i) {
                                j2 = c6491z52.f34340f.f20386a.f23240d;
                                break;
                            }
                            c6491z52 = c6491z52.m4436o();
                        } else {
                            j2 = this.f21404e;
                            this.f21404e = 1 + j2;
                            if (this.f21407h == null) {
                                this.f21411l = obj;
                                this.f21412m = j2;
                            }
                        }
                    }
                }
            }
        }
        return m12526w(abstractC5717e8, obj, j, j2, this.f21400a);
    }

    /* renamed from: x */
    public final boolean m12525x(AbstractC5717e8 abstractC5717e8) {
        C6491z5 c6491z5 = this.f21407h;
        if (c6491z5 == null) {
            return true;
        }
        int mo4072i = abstractC5717e8.mo4072i(c6491z5.f34336b);
        while (true) {
            mo4072i = abstractC5717e8.m11842l(mo4072i, this.f21400a, this.f21401b, this.f21405f, this.f21406g);
            while (c6491z5.m4436o() != null && !c6491z5.f34340f.f20392g) {
                c6491z5 = c6491z5.m4436o();
            }
            C6491z5 m4436o = c6491z5.m4436o();
            if (mo4072i == -1 || m4436o == null || abstractC5717e8.mo4072i(m4436o.f34336b) != mo4072i) {
                break;
            }
            c6491z5 = m4436o;
        }
        boolean m12534o = m12534o(c6491z5);
        c6491z5.f34340f = m12531r(abstractC5717e8, c6491z5.f34340f);
        if (!m12534o) {
            return true;
        }
        return false;
    }

    /* renamed from: y */
    public final C5567a6 m12524y(AbstractC5717e8 abstractC5717e8, C6491z5 c6491z5, long j) {
        long j2;
        C5567a6 c5567a6 = c6491z5.f34340f;
        long m4450a = (c6491z5.m4450a() + c5567a6.f20390e) - j;
        if (c5567a6.f20392g) {
            long j3 = 0;
            int m11842l = abstractC5717e8.m11842l(abstractC5717e8.mo4072i(c5567a6.f20386a.f23237a), this.f21400a, this.f21401b, this.f21405f, this.f21406g);
            if (m11842l == -1) {
                return null;
            }
            int i = abstractC5717e8.mo4073h(m11842l, this.f21400a, true).f20895c;
            Object obj = this.f21400a.f20894b;
            long j4 = c5567a6.f20386a.f23240d;
            if (abstractC5717e8.mo4075f(i, this.f21401b, 0L).f22158m == m11842l) {
                Pair<Object, Long> m11840n = abstractC5717e8.m11840n(this.f21401b, this.f21400a, i, -9223372036854775807L, Math.max(0L, m4450a));
                if (m11840n == null) {
                    return null;
                }
                obj = m11840n.first;
                long longValue = ((Long) m11840n.second).longValue();
                C6491z5 m4436o = c6491z5.m4436o();
                if (m4436o != null && m4436o.f34336b.equals(obj)) {
                    j4 = m4436o.f34340f.f20386a.f23240d;
                } else {
                    j4 = this.f21404e;
                    this.f21404e = 1 + j4;
                }
                j2 = longValue;
                j3 = -9223372036854775807L;
            } else {
                j2 = 0;
            }
            return m12523z(abstractC5717e8, m12526w(abstractC5717e8, obj, j2, j4, this.f21400a), j3, j2);
        }
        ft3 ft3Var = c5567a6.f20386a;
        abstractC5717e8.mo6932o(ft3Var.f23237a, this.f21400a);
        if (ft3Var.m11647b()) {
            int i2 = ft3Var.f23238b;
            if (this.f21400a.m12851g(i2) == -1) {
                return null;
            }
            int m12854d = this.f21400a.m12854d(i2, ft3Var.f23239c);
            if (m12854d < 0) {
                return m12551A(abstractC5717e8, ft3Var.f23237a, i2, m12854d, c5567a6.f20388c, ft3Var.f23240d);
            }
            long j5 = c5567a6.f20388c;
            if (j5 == -9223372036854775807L) {
                C5679d8 c5679d8 = this.f21401b;
                C5606b8 c5606b8 = this.f21400a;
                Pair<Object, Long> m11840n2 = abstractC5717e8.m11840n(c5679d8, c5606b8, c5606b8.f20895c, -9223372036854775807L, Math.max(0L, m4450a));
                if (m11840n2 == null) {
                    return null;
                }
                j5 = ((Long) m11840n2.second).longValue();
            }
            m12547b(abstractC5717e8, ft3Var.f23237a, ft3Var.f23238b);
            return m12550B(abstractC5717e8, ft3Var.f23237a, Math.max(0L, j5), c5567a6.f20388c, ft3Var.f23240d);
        }
        int m12855c = this.f21400a.m12855c(ft3Var.f23241e);
        if (m12855c == this.f21400a.m12851g(ft3Var.f23241e)) {
            m12547b(abstractC5717e8, ft3Var.f23237a, ft3Var.f23241e);
            return m12550B(abstractC5717e8, ft3Var.f23237a, 0L, c5567a6.f20390e, ft3Var.f23240d);
        }
        return m12551A(abstractC5717e8, ft3Var.f23237a, ft3Var.f23241e, m12855c, c5567a6.f20390e, ft3Var.f23240d);
    }

    public C5640c6(c41 c41Var, Handler handler) {
        this.f21402c = c41Var;
        this.f21403d = handler;
    }

    /* renamed from: w */
    public static ft3 m12526w(AbstractC5717e8 abstractC5717e8, Object obj, long j, long j2, C5606b8 c5606b8) {
        abstractC5717e8.mo6932o(obj, c5606b8);
        int m12853e = c5606b8.m12853e(j);
        if (m12853e == -1) {
            return new ft3(obj, j2, c5606b8.m12852f(j));
        }
        return new ft3(obj, m12853e, c5606b8.m12855c(m12853e), j2);
    }

    /* renamed from: C */
    public final boolean m12549C(AbstractC5717e8 abstractC5717e8, ft3 ft3Var) {
        if (!m12546c(ft3Var)) {
            return false;
        }
        int i = abstractC5717e8.mo6932o(ft3Var.f23237a, this.f21400a).f20895c;
        if (abstractC5717e8.mo4075f(i, this.f21401b, 0L).f22159n != abstractC5717e8.mo4072i(ft3Var.f23237a)) {
            return false;
        }
        return true;
    }

    /* renamed from: v */
    public final void m12527v() {
        final ft3 ft3Var;
        final l33 m8902E = o33.m8902E();
        for (C6491z5 c6491z5 = this.f21407h; c6491z5 != null; c6491z5 = c6491z5.m4436o()) {
            m8902E.m9798f(c6491z5.f34340f.f20386a);
        }
        C6491z5 c6491z52 = this.f21408i;
        if (c6491z52 == null) {
            ft3Var = null;
        } else {
            ft3Var = c6491z52.f34340f.f20386a;
        }
        this.f21403d.post(new Runnable(this, m8902E, ft3Var) { // from class: r4.b6

            /* renamed from: a */
            public final C5640c6 f20859a;

            /* renamed from: b */
            public final l33 f20860b;

            /* renamed from: d */
            public final ft3 f20861d;

            {
                this.f20859a = this;
                this.f20860b = m8902E;
                this.f20861d = ft3Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f20859a.m12529t(this.f20860b, this.f20861d);
            }
        });
    }
}
