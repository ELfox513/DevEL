package p168r4;

import android.util.Pair;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.y34 */
/* loaded from: classes2.dex */
public final class y34 implements a04, z04 {

    /* renamed from: x */
    public static final g04 f33876x = w34.f33054a;

    /* renamed from: i */
    public int f33885i;

    /* renamed from: j */
    public long f33886j;

    /* renamed from: k */
    public int f33887k;

    /* renamed from: l */
    public C6423xb f33888l;

    /* renamed from: n */
    public int f33890n;

    /* renamed from: o */
    public int f33891o;

    /* renamed from: p */
    public int f33892p;

    /* renamed from: q */
    public d04 f33893q;

    /* renamed from: r */
    public x34[] f33894r;

    /* renamed from: s */
    public long[][] f33895s;

    /* renamed from: t */
    public int f33896t;

    /* renamed from: u */
    public long f33897u;

    /* renamed from: v */
    public int f33898v;

    /* renamed from: w */
    public C5681da f33899w;

    /* renamed from: h */
    public int f33884h = 0;

    /* renamed from: f */
    public final b44 f33882f = new b44();

    /* renamed from: g */
    public final List<InterfaceC5865i8> f33883g = new ArrayList();

    /* renamed from: d */
    public final C6423xb f33880d = new C6423xb(16);

    /* renamed from: e */
    public final ArrayDeque<d34> f33881e = new ArrayDeque<>();

    /* renamed from: a */
    public final C6423xb f33877a = new C6423xb(C6053nb.f28240a);

    /* renamed from: b */
    public final C6423xb f33878b = new C6423xb(4);

    /* renamed from: c */
    public final C6423xb f33879c = new C6423xb();

    /* renamed from: m */
    public int f33889m = -1;

    /* renamed from: n */
    public static int m4903n(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return true;
    }

    @Override // p168r4.a04
    /* renamed from: e */
    public final boolean mo4475e(b04 b04Var) {
        return c44.m12613b(b04Var, false);
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        return this.f33897u;
    }

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f33893q = d04Var;
    }

    /* renamed from: j */
    public final void m4907j() {
        this.f33884h = 0;
        this.f33887k = 0;
    }

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        long j2;
        long j3;
        int m11292b;
        x34[] x34VarArr = this.f33894r;
        x34VarArr.getClass();
        if (x34VarArr.length == 0) {
            a14 a14Var = a14.f20341c;
            return new x04(a14Var, a14Var);
        }
        int i = this.f33896t;
        long j4 = -1;
        if (i != -1) {
            g44 g44Var = x34VarArr[i].f33436b;
            int m4904m = m4904m(g44Var, j);
            if (m4904m == -1) {
                a14 a14Var2 = a14.f20341c;
                return new x04(a14Var2, a14Var2);
            }
            long j5 = g44Var.f23881f[m4904m];
            j2 = g44Var.f23878c[m4904m];
            if (j5 < j && m4904m < g44Var.f23877b - 1 && (m11292b = g44Var.m11292b(j)) != -1 && m11292b != m4904m) {
                j3 = g44Var.f23881f[m11292b];
                j4 = g44Var.f23878c[m11292b];
            } else {
                j3 = -9223372036854775807L;
            }
            j = j5;
        } else {
            j2 = Long.MAX_VALUE;
            j3 = -9223372036854775807L;
        }
        int i2 = 0;
        while (true) {
            x34[] x34VarArr2 = this.f33894r;
            if (i2 >= x34VarArr2.length) {
                break;
            }
            if (i2 != this.f33896t) {
                g44 g44Var2 = x34VarArr2[i2].f33436b;
                long m4905l = m4905l(g44Var2, j, j2);
                if (j3 != -9223372036854775807L) {
                    j4 = m4905l(g44Var2, j3, j4);
                }
                j2 = m4905l;
            }
            i2++;
        }
        a14 a14Var3 = new a14(j, j2);
        if (j3 == -9223372036854775807L) {
            return new x04(a14Var3, a14Var3);
        }
        return new x04(a14Var3, new a14(j3, j4));
    }

    /* JADX WARN: Code restructure failed: missing block: B:184:0x035c, code lost:
        r3 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0084  */
    @Override // p168r4.a04
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo4474f(p168r4.b04 r33, p168r4.w04 r34) {
        /*
            Method dump skipped, instructions count: 1000
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.y34.mo4474f(r4.b04, r4.w04):int");
    }

    @Override // p168r4.a04
    /* renamed from: i */
    public final void mo4472i(long j, long j2) {
        this.f33881e.clear();
        this.f33887k = 0;
        this.f33889m = -1;
        this.f33890n = 0;
        this.f33891o = 0;
        this.f33892p = 0;
        if (j == 0) {
            m4907j();
            return;
        }
        x34[] x34VarArr = this.f33894r;
        if (x34VarArr != null) {
            for (x34 x34Var : x34VarArr) {
                g44 g44Var = x34Var.f33436b;
                int m11293a = g44Var.m11293a(j2);
                if (m11293a == -1) {
                    m11293a = g44Var.m11292b(j2);
                }
                x34Var.f33438d = m11293a;
            }
        }
    }

    /* renamed from: k */
    public final void m4906k(long j) {
        y34 y34Var;
        boolean z;
        C5901j8 c5901j8;
        C5901j8 c5901j82;
        C5901j8 c5901j83;
        long j2;
        List<g44> list;
        int i;
        y34 y34Var2;
        C5901j8 c5901j84;
        char c;
        int i2;
        y34 y34Var3 = this;
        while (!y34Var3.f33881e.isEmpty() && y34Var3.f33881e.peek().f22067b == j) {
            d34 pop = y34Var3.f33881e.pop();
            if (pop.f23269a == 1836019574) {
                ArrayList arrayList = new ArrayList();
                if (y34Var3.f33898v == 1) {
                    z = true;
                } else {
                    z = false;
                }
                p04 p04Var = new p04();
                e34 m12228e = pop.m12228e(1969517665);
                if (m12228e != null) {
                    Pair<C5901j8, C5901j8> m9195b = n34.m9195b(m12228e);
                    C5901j8 c5901j85 = (C5901j8) m9195b.first;
                    C5901j8 c5901j86 = (C5901j8) m9195b.second;
                    if (c5901j85 != null) {
                        p04Var.m8522a(c5901j85);
                    }
                    c5901j8 = c5901j86;
                    c5901j82 = c5901j85;
                } else {
                    c5901j8 = null;
                    c5901j82 = null;
                }
                d34 m12227f = pop.m12227f(1835365473);
                if (m12227f != null) {
                    c5901j83 = n34.m9194c(m12227f);
                } else {
                    c5901j83 = null;
                }
                C5901j8 c5901j87 = c5901j83;
                List<g44> m9196a = n34.m9196a(pop, p04Var, -9223372036854775807L, null, false, z, v34.f32573a);
                d04 d04Var = y34Var3.f33893q;
                d04Var.getClass();
                int size = m9196a.size();
                long j3 = -9223372036854775807L;
                long j4 = -9223372036854775807L;
                int i3 = 0;
                int i4 = -1;
                while (true) {
                    j2 = 0;
                    if (i3 >= size) {
                        break;
                    }
                    g44 g44Var = m9196a.get(i3);
                    if (g44Var.f23877b == 0) {
                        y34Var2 = y34Var3;
                        list = m9196a;
                        i = size;
                    } else {
                        d44 d44Var = g44Var.f23876a;
                        ArrayList arrayList2 = arrayList;
                        long j5 = d44Var.f22080e;
                        if (j5 == j3) {
                            j5 = g44Var.f23883h;
                        }
                        long max = Math.max(j4, j5);
                        x34 x34Var = new x34(d44Var, g44Var, d04Var.mo10795r(i3, d44Var.f22077b));
                        int i5 = g44Var.f23880e;
                        list = m9196a;
                        C5639c5 m11856a = d44Var.f22081f.m11856a();
                        m11856a.m12563o(i5 + 30);
                        i = size;
                        if (d44Var.f22077b == 2 && j5 > 0 && (i2 = g44Var.f23877b) > 1) {
                            m11856a.m12557u(i2 / (((float) j5) / 1000000.0f));
                        }
                        int i6 = d44Var.f22077b;
                        String[] strArr = u34.f32163a;
                        if (i6 == 1 && p04Var.m8521b()) {
                            m11856a.m12607E(p04Var.f29305a);
                            m11856a.m12606F(p04Var.f29306b);
                        }
                        int i7 = d44Var.f22077b;
                        C5901j8[] c5901j8Arr = new C5901j8[2];
                        c5901j8Arr[0] = c5901j8;
                        y34Var2 = this;
                        if (y34Var2.f33883g.isEmpty()) {
                            c = 1;
                            c5901j84 = null;
                        } else {
                            c5901j84 = new C5901j8(y34Var2.f33883g);
                            c = 1;
                        }
                        c5901j8Arr[c] = c5901j84;
                        C5901j8 c5901j88 = new C5901j8(new InterfaceC5865i8[0]);
                        if (i7 == 1) {
                            if (c5901j82 != null) {
                                c5901j88 = c5901j82;
                            }
                        } else if (i7 == 2 && c5901j87 != null) {
                            int i8 = 0;
                            while (true) {
                                if (i8 >= c5901j87.m10388a()) {
                                    break;
                                }
                                InterfaceC5865i8 m10387h = c5901j87.m10387h(i8);
                                if (m10387h instanceof C5571aa) {
                                    C5571aa c5571aa = (C5571aa) m10387h;
                                    if ("com.android.capture.fps".equals(c5571aa.f20427a)) {
                                        c5901j88 = new C5901j8(c5571aa);
                                        break;
                                    }
                                }
                                i8++;
                            }
                        }
                        for (int i9 = 0; i9 < 2; i9++) {
                            c5901j88 = c5901j88.m10386j(c5901j8Arr[i9]);
                        }
                        if (c5901j88.m10388a() > 0) {
                            m11856a.m12566l(c5901j88);
                        }
                        x34Var.f33437c.mo4004f(m11856a.m12603I());
                        if (d44Var.f22077b == 2 && i4 == -1) {
                            i4 = arrayList2.size();
                        }
                        arrayList = arrayList2;
                        arrayList.add(x34Var);
                        j4 = max;
                    }
                    i3++;
                    y34Var3 = y34Var2;
                    m9196a = list;
                    size = i;
                    j3 = -9223372036854775807L;
                }
                y34Var = y34Var3;
                y34Var.f33896t = i4;
                y34Var.f33897u = j4;
                x34[] x34VarArr = (x34[]) arrayList.toArray(new x34[0]);
                y34Var.f33894r = x34VarArr;
                int length = x34VarArr.length;
                long[][] jArr = new long[length];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i10 = 0; i10 < x34VarArr.length; i10++) {
                    jArr[i10] = new long[x34VarArr[i10].f33436b.f23877b];
                    jArr2[i10] = x34VarArr[i10].f33436b.f23881f[0];
                }
                int i11 = 0;
                while (i11 < x34VarArr.length) {
                    long j6 = Long.MAX_VALUE;
                    int i12 = -1;
                    for (int i13 = 0; i13 < x34VarArr.length; i13++) {
                        if (!zArr[i13]) {
                            long j7 = jArr2[i13];
                            if (j7 <= j6) {
                                i12 = i13;
                                j6 = j7;
                            }
                        }
                    }
                    int i14 = iArr[i12];
                    long[] jArr3 = jArr[i12];
                    jArr3[i14] = j2;
                    g44 g44Var2 = x34VarArr[i12].f33436b;
                    j2 += g44Var2.f23879d[i14];
                    int i15 = i14 + 1;
                    iArr[i12] = i15;
                    if (i15 < jArr3.length) {
                        jArr2[i12] = g44Var2.f23881f[i15];
                    } else {
                        zArr[i12] = true;
                        i11++;
                    }
                }
                y34Var.f33895s = jArr;
                d04Var.mo10788y();
                d04Var.mo10798j(y34Var);
                y34Var.f33881e.clear();
                y34Var.f33884h = 2;
            } else {
                y34Var = y34Var3;
                if (!y34Var.f33881e.isEmpty()) {
                    y34Var.f33881e.peek().m12229d(pop);
                }
            }
            y34Var3 = y34Var;
        }
        if (y34Var3.f33884h != 2) {
            m4907j();
        }
    }

    public y34(int i) {
    }

    /* renamed from: l */
    public static long m4905l(g44 g44Var, long j, long j2) {
        int m4904m = m4904m(g44Var, j);
        if (m4904m == -1) {
            return j2;
        }
        return Math.min(g44Var.f23878c[m4904m], j2);
    }

    /* renamed from: m */
    public static int m4904m(g44 g44Var, long j) {
        int m11293a = g44Var.m11293a(j);
        if (m11293a == -1) {
            return g44Var.m11292b(j);
        }
        return m11293a;
    }
}
