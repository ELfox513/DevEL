package p168r4;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
/* renamed from: r4.y4 */
/* loaded from: classes2.dex */
public final class C6453y4 implements Handler.Callback, dt3, zv3, InterfaceC5863i6, InterfaceC5896j3, InterfaceC5605b7 {

    /* renamed from: A */
    public final InterfaceC5940ka f33900A;

    /* renamed from: B */
    public final InterfaceC6379w4 f33901B;

    /* renamed from: C */
    public final C5640c6 f33902C;

    /* renamed from: D */
    public final C5899j6 f33903D;

    /* renamed from: E */
    public C5937k7 f33904E;

    /* renamed from: F */
    public C6085o6 f33905F;

    /* renamed from: G */
    public C6342v4 f33906G;

    /* renamed from: H */
    public boolean f33907H;

    /* renamed from: J */
    public boolean f33909J;

    /* renamed from: K */
    public boolean f33910K;

    /* renamed from: L */
    public boolean f33911L;

    /* renamed from: O */
    public boolean f33914O;

    /* renamed from: P */
    public boolean f33915P;

    /* renamed from: Q */
    public boolean f33916Q;

    /* renamed from: R */
    public int f33917R;

    /* renamed from: S */
    public C6416x4 f33918S;

    /* renamed from: T */
    public long f33919T;

    /* renamed from: U */
    public int f33920U;

    /* renamed from: V */
    public boolean f33921V;

    /* renamed from: W */
    public C6082o3 f33922W;

    /* renamed from: X */
    public final C5786g3 f33923X;

    /* renamed from: a */
    public final InterfaceC5790g7[] f33924a;

    /* renamed from: b */
    public final Set<InterfaceC5790g7> f33925b;

    /* renamed from: d */
    public final InterfaceC5827h7[] f33926d;

    /* renamed from: k */
    public final aw3 f33927k;

    /* renamed from: p */
    public final cw3 f33928p;

    /* renamed from: q */
    public final InterfaceC5825h5 f33929q;

    /* renamed from: r */
    public final kw3 f33930r;

    /* renamed from: s */
    public final InterfaceC6422xa f33931s;

    /* renamed from: t */
    public final HandlerThread f33932t;

    /* renamed from: u */
    public final Looper f33933u;

    /* renamed from: v */
    public final C5679d8 f33934v;

    /* renamed from: w */
    public final C5606b8 f33935w;

    /* renamed from: x */
    public final long f33936x;

    /* renamed from: y */
    public final C5933k3 f33937y;

    /* renamed from: z */
    public final ArrayList<C6305u4> f33938z;

    /* renamed from: M */
    public int f33912M = 0;

    /* renamed from: N */
    public boolean f33913N = false;

    /* renamed from: I */
    public boolean f33908I = false;

    public C6453y4(InterfaceC5790g7[] interfaceC5790g7Arr, aw3 aw3Var, cw3 cw3Var, InterfaceC5825h5 interfaceC5825h5, kw3 kw3Var, int i, boolean z, c41 c41Var, C5937k7 c5937k7, C5786g3 c5786g3, long j, boolean z2, Looper looper, InterfaceC5940ka interfaceC5940ka, InterfaceC6379w4 interfaceC6379w4, byte[] bArr) {
        this.f33901B = interfaceC6379w4;
        this.f33924a = interfaceC5790g7Arr;
        this.f33927k = aw3Var;
        this.f33928p = cw3Var;
        this.f33929q = interfaceC5825h5;
        this.f33930r = kw3Var;
        this.f33904E = c5937k7;
        this.f33923X = c5786g3;
        this.f33900A = interfaceC5940ka;
        this.f33936x = interfaceC5825h5.mo10739e();
        interfaceC5825h5.mo10741c();
        C6085o6 m8888a = C6085o6.m8888a(cw3Var);
        this.f33905F = m8888a;
        this.f33906G = new C6342v4(m8888a);
        this.f33926d = new InterfaceC5827h7[2];
        for (int i2 = 0; i2 < 2; i2++) {
            interfaceC5790g7Arr[i2].mo11266T(i2);
            this.f33926d[i2] = interfaceC5790g7Arr[i2].mo11262Y();
        }
        this.f33937y = new C5933k3(this, interfaceC5940ka);
        this.f33938z = new ArrayList<>();
        this.f33925b = Collections.newSetFromMap(new IdentityHashMap());
        this.f33934v = new C5679d8();
        this.f33935w = new C5606b8();
        aw3Var.m12922c(this, kw3Var);
        this.f33921V = true;
        Handler handler = new Handler(looper);
        this.f33902C = new C5640c6(c41Var, handler);
        this.f33903D = new C5899j6(this, c41Var, handler);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.f33932t = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.f33933u = looper2;
        this.f33931s = interfaceC5940ka.mo10082a(looper2, this);
    }

    /* renamed from: J */
    public static Pair<Object, Long> m4893J(AbstractC5717e8 abstractC5717e8, C6416x4 c6416x4, boolean z, int i, boolean z2, C5679d8 c5679d8, C5606b8 c5606b8) {
        AbstractC5717e8 abstractC5717e82;
        Pair<Object, Long> m11841m;
        AbstractC5717e8 abstractC5717e83 = c6416x4.f33439a;
        if (abstractC5717e8.m11843k()) {
            return null;
        }
        if (true == abstractC5717e83.m11843k()) {
            abstractC5717e82 = abstractC5717e8;
        } else {
            abstractC5717e82 = abstractC5717e83;
        }
        try {
            m11841m = abstractC5717e82.m11841m(c5679d8, c5606b8, c6416x4.f33440b, c6416x4.f33441c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (abstractC5717e8.equals(abstractC5717e82)) {
            return m11841m;
        }
        if (abstractC5717e8.mo4072i(m11841m.first) != -1) {
            if (abstractC5717e82.mo6932o(m11841m.first, c5606b8).f20898f && abstractC5717e82.mo4075f(c5606b8.f20895c, c5679d8, 0L).f22158m == abstractC5717e82.mo4072i(m11841m.first)) {
                return abstractC5717e8.m11841m(c5679d8, c5606b8, abstractC5717e8.mo6932o(m11841m.first, c5606b8).f20895c, c6416x4.f33441c);
            }
            return m11841m;
        }
        Object m4879X = m4879X(c5679d8, c5606b8, i, z2, m11841m.first, abstractC5717e82, abstractC5717e8);
        if (m4879X != null) {
            return abstractC5717e8.m11841m(c5679d8, c5606b8, abstractC5717e8.mo6932o(m4879X, c5606b8).f20895c, -9223372036854775807L);
        }
        return null;
    }

    /* renamed from: K */
    public static boolean m4892K(InterfaceC5790g7 interfaceC5790g7) {
        return interfaceC5790g7.mo11270F0() != 0;
    }

    /* renamed from: O */
    public static C5713e5[] m4888O(hv3 hv3Var) {
        int i;
        if (hv3Var != null) {
            i = hv3Var.m10782b();
        } else {
            i = 0;
        }
        C5713e5[] c5713e5Arr = new C5713e5[i];
        for (int i2 = 0; i2 < i; i2++) {
            c5713e5Arr[i2] = hv3Var.m10781c(i2);
        }
        return c5713e5Arr;
    }

    /* renamed from: B */
    public final void m4901B() {
        m4900C(new boolean[2]);
    }

    /* renamed from: E */
    public final long m4898E() {
        return m4897F(this.f33905F.f28897q);
    }

    /* renamed from: G */
    public final void m4896G(j44 j44Var, cw3 cw3Var) {
        this.f33929q.mo10736h(this.f33924a, j44Var, cw3Var.f21930d);
    }

    /* renamed from: H */
    public final boolean m4895H() {
        C6085o6 c6085o6 = this.f33905F;
        return c6085o6.f28892l && c6085o6.f28893m == 0;
    }

    /* renamed from: R */
    public final void m4885R() {
        this.f33931s.mo5431x(0).zza();
    }

    /* renamed from: U */
    public final void m4882U() {
        this.f33931s.mo5431x(6).zza();
    }

    /* renamed from: V */
    public final synchronized boolean m4881V() {
        if (!this.f33907H && this.f33932t.isAlive()) {
            this.f33931s.mo5440C(7);
            m4871c0(new m13(this) { // from class: r4.o4

                /* renamed from: a */
                public final C6453y4 f28845a;

                {
                    this.f28845a = this;
                }

                @Override // p168r4.m13
                public final Object zza() {
                    return this.f28845a.m4878Y();
                }
            }, 500L);
            return this.f33907H;
        }
        return true;
    }

    /* renamed from: W */
    public final Looper m4880W() {
        return this.f33933u;
    }

    /* renamed from: Y */
    public final /* synthetic */ Boolean m4878Y() {
        return Boolean.valueOf(this.f33907H);
    }

    @Override // p168r4.InterfaceC5605b7
    /* renamed from: a */
    public final synchronized void mo4876a(C5678d7 c5678d7) {
        if (!this.f33907H && this.f33932t.isAlive()) {
            this.f33931s.mo5437c(14, c5678d7).zza();
            return;
        }
        Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        c5678d7.m12211i(false);
    }

    /* renamed from: c0 */
    public final synchronized void m4871c0(m13<Boolean> m13Var, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime() + 500;
        boolean z = false;
        for (long j2 = 500; !m13Var.zza().booleanValue() && j2 > 0; j2 = elapsedRealtime - SystemClock.elapsedRealtime()) {
            try {
                wait(j2);
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // p168r4.dt3
    /* renamed from: h */
    public final void mo4862h(et3 et3Var) {
        this.f33931s.mo5437c(8, et3Var).zza();
    }

    /* renamed from: h0 */
    public final void m4861h0() {
        this.f33910K = false;
        this.f33937y.m10108a();
        InterfaceC5790g7[] interfaceC5790g7Arr = this.f33924a;
        for (int i = 0; i < 2; i++) {
            InterfaceC5790g7 interfaceC5790g7 = interfaceC5790g7Arr[i];
            if (m4892K(interfaceC5790g7)) {
                interfaceC5790g7.mo11272E();
            }
        }
    }

    @Override // p168r4.InterfaceC5863i6
    /* renamed from: k */
    public final void mo4857k() {
        this.f33931s.mo5440C(22);
    }

    /* renamed from: m */
    public final void m4855m(boolean z, boolean z2) {
        boolean z3;
        if (!z && this.f33914O) {
            z3 = false;
        } else {
            z3 = true;
        }
        m4854n(z3, false, true, false);
        this.f33906G.m6234b(z2 ? 1 : 0);
        this.f33929q.mo10743a();
        m4869d0(1);
    }

    /* renamed from: v */
    public final void m4846v(C6159q6 c6159q6, boolean z) {
        m4845w(c6159q6, c6159q6.f29992a, true, z);
    }

    @Override // p168r4.zv3
    public final void zza() {
        this.f33931s.mo5440C(10);
    }

    /* renamed from: I */
    public static boolean m4894I(C6085o6 c6085o6, C5606b8 c5606b8) {
        ft3 ft3Var = c6085o6.f28882b;
        AbstractC5717e8 abstractC5717e8 = c6085o6.f28881a;
        if (!abstractC5717e8.m11843k() && !abstractC5717e8.mo6932o(ft3Var.f23237a, c5606b8).f20898f) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00b1  */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p168r4.C6085o6 m4902A(p168r4.ft3 r17, long r18, long r20, long r22, boolean r24, int r25) {
        /*
            r16 = this;
            r0 = r16
            r2 = r17
            r5 = r20
            boolean r1 = r0.f33921V
            r3 = 0
            r4 = 1
            if (r1 != 0) goto L21
            r4.o6 r1 = r0.f33905F
            long r7 = r1.f28899s
            int r1 = (r18 > r7 ? 1 : (r18 == r7 ? 0 : -1))
            if (r1 != 0) goto L21
            r4.o6 r1 = r0.f33905F
            r4.ft3 r1 = r1.f28882b
            boolean r1 = r2.equals(r1)
            if (r1 != 0) goto L1f
            goto L21
        L1f:
            r1 = 0
            goto L22
        L21:
            r1 = 1
        L22:
            r0.f33921V = r1
            r16.m4847u()
            r4.o6 r1 = r0.f33905F
            r4.j44 r7 = r1.f28888h
            r4.cw3 r8 = r1.f28889i
            java.util.List<r4.j8> r1 = r1.f28890j
            r4.j6 r9 = r0.f33903D
            boolean r9 = r9.m10416c()
            if (r9 == 0) goto L96
            r4.c6 r1 = r0.f33902C
            r4.z5 r1 = r1.m12538k()
            if (r1 != 0) goto L42
            r4.j44 r7 = p168r4.j44.f25890d
            goto L46
        L42:
            r4.j44 r7 = r1.m4435p()
        L46:
            if (r1 != 0) goto L4b
            r4.cw3 r8 = r0.f33928p
            goto L4f
        L4b:
            r4.cw3 r8 = r1.m4434q()
        L4f:
            r4.hv3[] r9 = r8.f21930d
            r4.l33 r10 = new r4.l33
            r10.<init>()
            int r11 = r9.length
            r12 = 0
            r13 = 0
        L59:
            if (r12 >= r11) goto L79
            r14 = r9[r12]
            if (r14 == 0) goto L76
            r4.e5 r14 = r14.m10781c(r3)
            r4.j8 r14 = r14.f22812j
            if (r14 != 0) goto L72
            r4.j8 r14 = new r4.j8
            r4.i8[] r15 = new p168r4.InterfaceC5865i8[r3]
            r14.<init>(r15)
            r10.m9798f(r14)
            goto L76
        L72:
            r10.m9798f(r14)
            r13 = 1
        L76:
            int r12 = r12 + 1
            goto L59
        L79:
            if (r13 == 0) goto L80
            r4.o33 r3 = r10.m9797g()
            goto L84
        L80:
            r4.o33 r3 = p168r4.o33.m8900q()
        L84:
            if (r1 == 0) goto L94
            r4.a6 r4 = r1.f34340f
            long r9 = r4.f20388c
            int r11 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r11 == 0) goto L94
            r4.a6 r4 = r4.m13043b(r5)
            r1.f34340f = r4
        L94:
            r13 = r3
            goto Lad
        L96:
            r4.o6 r3 = r0.f33905F
            r4.ft3 r3 = r3.f28882b
            boolean r3 = r2.equals(r3)
            if (r3 != 0) goto Lac
            r4.j44 r1 = p168r4.j44.f25890d
            r4.cw3 r3 = r0.f33928p
            r4.o33 r4 = p168r4.o33.m8900q()
            r11 = r1
            r12 = r3
            r13 = r4
            goto Laf
        Lac:
            r13 = r1
        Lad:
            r11 = r7
            r12 = r8
        Laf:
            if (r24 == 0) goto Lb8
            r4.v4 r1 = r0.f33906G
            r3 = r25
            r1.m6232d(r3)
        Lb8:
            r4.o6 r1 = r0.f33905F
            long r9 = r16.m4898E()
            r2 = r17
            r3 = r18
            r5 = r20
            r7 = r22
            r4.o6 r1 = r1.m8886c(r2, r3, r5, r7, r9, r11, r12, r13)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6453y4.m4902A(r4.ft3, long, long, long, boolean, int):r4.o6");
    }

    /* renamed from: C */
    public final void m4900C(boolean[] zArr) {
        boolean z;
        boolean z2;
        boolean z3;
        C6491z5 m12537l = this.f33902C.m12537l();
        cw3 m4434q = m12537l.m4434q();
        for (int i = 0; i < 2; i++) {
            if (!m4434q.m12288a(i) && this.f33925b.remove(this.f33924a[i])) {
                this.f33924a[i].mo11268R();
            }
        }
        for (int i2 = 0; i2 < 2; i2++) {
            if (m4434q.m12288a(i2)) {
                boolean z4 = zArr[i2];
                InterfaceC5790g7 interfaceC5790g7 = this.f33924a[i2];
                if (!m4892K(interfaceC5790g7)) {
                    C6491z5 m12537l2 = this.f33902C.m12537l();
                    if (m12537l2 == this.f33902C.m12538k()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    cw3 m4434q2 = m12537l2.m4434q();
                    C5864i7 c5864i7 = m4434q2.f21928b[i2];
                    C5713e5[] m4888O = m4888O(m4434q2.f21930d[i2]);
                    if (m4895H() && this.f33905F.f28885e == 3) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z4 && z2) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    this.f33917R++;
                    this.f33925b.add(interfaceC5790g7);
                    interfaceC5790g7.mo11265V(c5864i7, m4888O, m12537l2.f34337c[i2], this.f33919T, z3, z, m12537l2.m4448c(), m12537l2.m4450a());
                    interfaceC5790g7.mo8872a(11, new C6157q4(this));
                    this.f33937y.m10105e(interfaceC5790g7);
                    if (z2) {
                        interfaceC5790g7.mo11272E();
                    }
                }
            }
        }
        m12537l.f34341g = true;
    }

    /* renamed from: D */
    public final void m4899D(boolean z) {
        ft3 ft3Var;
        long m4446e;
        C6491z5 m12539j = this.f33902C.m12539j();
        if (m12539j == null) {
            ft3Var = this.f33905F.f28882b;
        } else {
            ft3Var = m12539j.f34340f.f20386a;
        }
        boolean z2 = !this.f33905F.f28891k.equals(ft3Var);
        if (z2) {
            this.f33905F = this.f33905F.m8882g(ft3Var);
        }
        C6085o6 c6085o6 = this.f33905F;
        if (m12539j == null) {
            m4446e = c6085o6.f28899s;
        } else {
            m4446e = m12539j.m4446e();
        }
        c6085o6.f28897q = m4446e;
        this.f33905F.f28898r = m4898E();
        if ((z2 || z) && m12539j != null && m12539j.f34338d) {
            m4896G(m12539j.m4435p(), m12539j.m4434q());
        }
    }

    /* renamed from: F */
    public final long m4897F(long j) {
        C6491z5 m12539j = this.f33902C.m12539j();
        if (m12539j == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.f33919T - m12539j.m4450a()));
    }

    /* renamed from: S */
    public final void m4884S(boolean z, int i) {
        this.f33931s.mo5436d(1, z ? 1 : 0, i).zza();
    }

    /* renamed from: T */
    public final void m4883T(AbstractC5717e8 abstractC5717e8, int i, long j) {
        this.f33931s.mo5437c(3, new C6416x4(abstractC5717e8, i, j)).zza();
    }

    /* renamed from: Z */
    public final void m4877Z(List<C5826h6> list, int i, long j, yu3 yu3Var) {
        this.f33931s.mo5437c(17, new C6194r4(list, yu3Var, i, j, null, null)).zza();
    }

    @Override // p168r4.InterfaceC5896j3
    /* renamed from: b */
    public final void mo4874b(C6159q6 c6159q6) {
        this.f33931s.mo5437c(16, c6159q6).zza();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ac A[LOOP:0: B:30:0x009c->B:37:0x00ac, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x009b A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009b -> B:30:0x009c). Please submit an issue!!! */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4872c() {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6453y4.m4872c():void");
    }

    /* renamed from: d */
    public final long m4870d(AbstractC5717e8 abstractC5717e8, Object obj, long j) {
        abstractC5717e8.mo4075f(abstractC5717e8.mo6932o(obj, this.f33935w).f20895c, this.f33934v, 0L);
        C5679d8 c5679d8 = this.f33934v;
        if (c5679d8.f22149d != -9223372036854775807L && c5679d8.m12207b()) {
            C5679d8 c5679d82 = this.f33934v;
            if (c5679d82.f22152g) {
                return C5711e3.m11871b(C5979lc.m9734C(c5679d82.f22150e) - this.f33934v.f22149d) - j;
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: d0 */
    public final void m4869d0(int i) {
        C6085o6 c6085o6 = this.f33905F;
        if (c6085o6.f28885e != i) {
            this.f33905F = c6085o6.m8884e(i);
        }
    }

    /* renamed from: e0 */
    public final void m4867e0() {
        boolean z;
        this.f33906G.m6233c(this.f33905F);
        z = this.f33906G.f32574a;
        if (z) {
            this.f33901B.mo5888a(this.f33906G);
            this.f33906G = new C6342v4(this.f33905F);
        }
    }

    /* renamed from: f */
    public final void m4866f(long j, long j2) {
        this.f33931s.mo5439Y(2);
        this.f33931s.mo5434f(2, j + j2);
    }

    /* renamed from: f0 */
    public final void m4865f0(boolean z, int i, boolean z2, int i2) {
        hv3[] hv3VarArr;
        this.f33906G.m6234b(z2 ? 1 : 0);
        this.f33906G.m6231e(i2);
        this.f33905F = this.f33905F.m8881h(z, i);
        this.f33910K = false;
        for (C6491z5 m12538k = this.f33902C.m12538k(); m12538k != null; m12538k = m12538k.m4436o()) {
            for (hv3 hv3Var : m12538k.m4434q().f21930d) {
            }
        }
        if (!m4895H()) {
            m4859i0();
            m4872c();
            return;
        }
        int i3 = this.f33905F.f28885e;
        if (i3 == 3) {
            m4861h0();
            this.f33931s.mo5440C(2);
        } else if (i3 == 2) {
            this.f33931s.mo5440C(2);
        }
    }

    /* renamed from: g */
    public final long m4864g(ft3 ft3Var, long j, boolean z) {
        boolean z2;
        if (this.f33902C.m12538k() != this.f33902C.m12537l()) {
            z2 = true;
        } else {
            z2 = false;
        }
        return m4860i(ft3Var, j, z2, z);
    }

    /* renamed from: g0 */
    public final void m4863g0(boolean z) {
        ft3 ft3Var = this.f33902C.m12538k().f34340f.f20386a;
        long m4860i = m4860i(ft3Var, this.f33905F.f28899s, true, false);
        if (m4860i != this.f33905F.f28899s) {
            C6085o6 c6085o6 = this.f33905F;
            this.f33905F = m4902A(ft3Var, m4860i, c6085o6.f28883c, c6085o6.f28884d, z, 5);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:421:0x0866, code lost:
        if (m4850r() != false) goto L534;
     */
    /* JADX WARN: Code restructure failed: missing block: B:457:0x08f5, code lost:
        if (r2 == false) goto L569;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0450 A[Catch: all -> 0x04ee, TryCatch #7 {all -> 0x04ee, blocks: (B:180:0x0446, B:182:0x0450, B:184:0x0455, B:186:0x045c, B:187:0x045f, B:189:0x0466, B:191:0x0470, B:193:0x0478, B:197:0x0480, B:199:0x048a, B:201:0x049a, B:204:0x04a3, B:210:0x04b5, B:214:0x04bf), top: B:573:0x0446 }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0815 A[Catch: RuntimeException -> 0x0a70, IOException -> 0x0a9b, p9 -> 0x0aa3, l6 -> 0x0aab, mm2 -> 0x0ac2, o3 -> 0x0acb, TryCatch #6 {l6 -> 0x0aab, mm2 -> 0x0ac2, p9 -> 0x0aa3, IOException -> 0x0a9b, RuntimeException -> 0x0a70, o3 -> 0x0acb, blocks: (B:3:0x0006, B:4:0x0012, B:7:0x0017, B:8:0x001c, B:12:0x0023, B:14:0x0027, B:19:0x0034, B:20:0x003b, B:21:0x0043, B:25:0x004a, B:27:0x0053, B:29:0x0061, B:30:0x0069, B:31:0x0074, B:32:0x0088, B:33:0x00a0, B:34:0x00b6, B:36:0x00c5, B:37:0x00c9, B:38:0x00da, B:40:0x00e9, B:41:0x0105, B:42:0x0118, B:43:0x0121, B:45:0x0133, B:46:0x013f, B:47:0x014f, B:49:0x015b, B:52:0x0166, B:53:0x016d, B:54:0x017a, B:58:0x0181, B:60:0x0189, B:62:0x018d, B:64:0x0192, B:66:0x019a, B:68:0x01a2, B:69:0x01a5, B:71:0x01aa, B:78:0x01b7, B:79:0x01b8, B:83:0x01bf, B:85:0x01cd, B:86:0x01d0, B:87:0x01d5, B:89:0x01e5, B:90:0x01e8, B:91:0x01ed, B:93:0x0204, B:95:0x0208, B:97:0x0216, B:101:0x0220, B:103:0x0225, B:105:0x022b, B:109:0x0233, B:111:0x023b, B:113:0x025e, B:117:0x0267, B:119:0x0289, B:120:0x028c, B:121:0x028f, B:123:0x0293, B:125:0x02a3, B:127:0x02a9, B:128:0x02ad, B:130:0x02b1, B:131:0x02b6, B:132:0x02bb, B:136:0x02dc, B:138:0x02e7, B:133:0x02bf, B:135:0x02c9, B:139:0x02f4, B:141:0x0300, B:142:0x030c, B:144:0x0318, B:146:0x0340, B:147:0x0360, B:148:0x0365, B:149:0x0377, B:156:0x0382, B:157:0x0383, B:158:0x038a, B:159:0x0392, B:160:0x03a7, B:162:0x03c9, B:222:0x04e0, B:207:0x04b0, B:206:0x04ac, B:227:0x04f3, B:228:0x0504, B:164:0x03f0, B:168:0x0404, B:170:0x0414, B:172:0x042b, B:174:0x0434, B:229:0x0505, B:231:0x0513, B:234:0x051d, B:236:0x052c, B:238:0x0538, B:240:0x0567, B:241:0x056e, B:242:0x0572, B:244:0x0576, B:246:0x0583, B:315:0x0694, B:317:0x069c, B:319:0x06a4, B:322:0x06a9, B:323:0x06b5, B:325:0x06ba, B:327:0x06c2, B:331:0x06d3, B:333:0x06d9, B:334:0x06f3, B:336:0x06f9, B:338:0x06fe, B:340:0x0703, B:342:0x0707, B:344:0x070d, B:346:0x0711, B:348:0x0719, B:350:0x071f, B:352:0x0729, B:355:0x072f, B:356:0x0732, B:249:0x058d, B:251:0x0593, B:254:0x0599, B:257:0x05a4, B:259:0x05a9, B:262:0x05b7, B:264:0x05bd, B:265:0x05c6, B:266:0x05c9, B:268:0x05d1, B:270:0x05df, B:272:0x05f1, B:274:0x05fb, B:277:0x0605, B:279:0x060d, B:280:0x0610, B:284:0x0617, B:286:0x0621, B:288:0x062b, B:290:0x063c, B:292:0x0642, B:293:0x064d, B:294:0x0650, B:296:0x0656, B:299:0x065b, B:301:0x0660, B:303:0x0668, B:305:0x066e, B:307:0x0674, B:311:0x0682, B:313:0x068e, B:314:0x0691, B:245:0x0580, B:357:0x077f, B:362:0x078e, B:364:0x0798, B:365:0x079f, B:367:0x07af, B:368:0x07c5, B:370:0x07ca, B:400:0x0818, B:373:0x07d3, B:375:0x07da, B:379:0x07e3, B:381:0x07ed, B:387:0x07fc, B:389:0x0802, B:399:0x0815, B:402:0x0823, B:404:0x0829, B:408:0x0831, B:410:0x0839, B:412:0x083d, B:413:0x0848, B:415:0x084e, B:468:0x0929, B:471:0x0931, B:473:0x0935, B:475:0x093d, B:477:0x094b, B:478:0x0952, B:479:0x0956, B:481:0x095c, B:483:0x0965, B:486:0x096c, B:487:0x0973, B:488:0x0974, B:490:0x097c, B:491:0x0982, B:493:0x0988, B:497:0x0996, B:499:0x099a, B:503:0x09aa, B:511:0x09c1, B:513:0x09c7, B:514:0x0a22, B:502:0x09a2, B:495:0x098f, B:504:0x09ad, B:508:0x09b4, B:509:0x09ba, B:416:0x0857, B:418:0x085e, B:420:0x0862, B:447:0x08d4, B:449:0x08df, B:425:0x086f, B:427:0x0873, B:429:0x0885, B:430:0x088b, B:432:0x0899, B:436:0x08a2, B:438:0x08ac, B:444:0x08b7, B:450:0x08e3, B:452:0x08ea, B:454:0x08ee, B:458:0x08f7, B:460:0x0905, B:462:0x090d, B:464:0x0917, B:465:0x091c, B:466:0x0921, B:467:0x0926, B:401:0x081c, B:515:0x0a2a, B:516:0x0a32, B:520:0x0a39, B:521:0x0a41, B:525:0x0a5f), top: B:576:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0930  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x097c A[Catch: RuntimeException -> 0x0a70, IOException -> 0x0a9b, p9 -> 0x0aa3, l6 -> 0x0aab, mm2 -> 0x0ac2, o3 -> 0x0acb, TryCatch #6 {l6 -> 0x0aab, mm2 -> 0x0ac2, p9 -> 0x0aa3, IOException -> 0x0a9b, RuntimeException -> 0x0a70, o3 -> 0x0acb, blocks: (B:3:0x0006, B:4:0x0012, B:7:0x0017, B:8:0x001c, B:12:0x0023, B:14:0x0027, B:19:0x0034, B:20:0x003b, B:21:0x0043, B:25:0x004a, B:27:0x0053, B:29:0x0061, B:30:0x0069, B:31:0x0074, B:32:0x0088, B:33:0x00a0, B:34:0x00b6, B:36:0x00c5, B:37:0x00c9, B:38:0x00da, B:40:0x00e9, B:41:0x0105, B:42:0x0118, B:43:0x0121, B:45:0x0133, B:46:0x013f, B:47:0x014f, B:49:0x015b, B:52:0x0166, B:53:0x016d, B:54:0x017a, B:58:0x0181, B:60:0x0189, B:62:0x018d, B:64:0x0192, B:66:0x019a, B:68:0x01a2, B:69:0x01a5, B:71:0x01aa, B:78:0x01b7, B:79:0x01b8, B:83:0x01bf, B:85:0x01cd, B:86:0x01d0, B:87:0x01d5, B:89:0x01e5, B:90:0x01e8, B:91:0x01ed, B:93:0x0204, B:95:0x0208, B:97:0x0216, B:101:0x0220, B:103:0x0225, B:105:0x022b, B:109:0x0233, B:111:0x023b, B:113:0x025e, B:117:0x0267, B:119:0x0289, B:120:0x028c, B:121:0x028f, B:123:0x0293, B:125:0x02a3, B:127:0x02a9, B:128:0x02ad, B:130:0x02b1, B:131:0x02b6, B:132:0x02bb, B:136:0x02dc, B:138:0x02e7, B:133:0x02bf, B:135:0x02c9, B:139:0x02f4, B:141:0x0300, B:142:0x030c, B:144:0x0318, B:146:0x0340, B:147:0x0360, B:148:0x0365, B:149:0x0377, B:156:0x0382, B:157:0x0383, B:158:0x038a, B:159:0x0392, B:160:0x03a7, B:162:0x03c9, B:222:0x04e0, B:207:0x04b0, B:206:0x04ac, B:227:0x04f3, B:228:0x0504, B:164:0x03f0, B:168:0x0404, B:170:0x0414, B:172:0x042b, B:174:0x0434, B:229:0x0505, B:231:0x0513, B:234:0x051d, B:236:0x052c, B:238:0x0538, B:240:0x0567, B:241:0x056e, B:242:0x0572, B:244:0x0576, B:246:0x0583, B:315:0x0694, B:317:0x069c, B:319:0x06a4, B:322:0x06a9, B:323:0x06b5, B:325:0x06ba, B:327:0x06c2, B:331:0x06d3, B:333:0x06d9, B:334:0x06f3, B:336:0x06f9, B:338:0x06fe, B:340:0x0703, B:342:0x0707, B:344:0x070d, B:346:0x0711, B:348:0x0719, B:350:0x071f, B:352:0x0729, B:355:0x072f, B:356:0x0732, B:249:0x058d, B:251:0x0593, B:254:0x0599, B:257:0x05a4, B:259:0x05a9, B:262:0x05b7, B:264:0x05bd, B:265:0x05c6, B:266:0x05c9, B:268:0x05d1, B:270:0x05df, B:272:0x05f1, B:274:0x05fb, B:277:0x0605, B:279:0x060d, B:280:0x0610, B:284:0x0617, B:286:0x0621, B:288:0x062b, B:290:0x063c, B:292:0x0642, B:293:0x064d, B:294:0x0650, B:296:0x0656, B:299:0x065b, B:301:0x0660, B:303:0x0668, B:305:0x066e, B:307:0x0674, B:311:0x0682, B:313:0x068e, B:314:0x0691, B:245:0x0580, B:357:0x077f, B:362:0x078e, B:364:0x0798, B:365:0x079f, B:367:0x07af, B:368:0x07c5, B:370:0x07ca, B:400:0x0818, B:373:0x07d3, B:375:0x07da, B:379:0x07e3, B:381:0x07ed, B:387:0x07fc, B:389:0x0802, B:399:0x0815, B:402:0x0823, B:404:0x0829, B:408:0x0831, B:410:0x0839, B:412:0x083d, B:413:0x0848, B:415:0x084e, B:468:0x0929, B:471:0x0931, B:473:0x0935, B:475:0x093d, B:477:0x094b, B:478:0x0952, B:479:0x0956, B:481:0x095c, B:483:0x0965, B:486:0x096c, B:487:0x0973, B:488:0x0974, B:490:0x097c, B:491:0x0982, B:493:0x0988, B:497:0x0996, B:499:0x099a, B:503:0x09aa, B:511:0x09c1, B:513:0x09c7, B:514:0x0a22, B:502:0x09a2, B:495:0x098f, B:504:0x09ad, B:508:0x09b4, B:509:0x09ba, B:416:0x0857, B:418:0x085e, B:420:0x0862, B:447:0x08d4, B:449:0x08df, B:425:0x086f, B:427:0x0873, B:429:0x0885, B:430:0x088b, B:432:0x0899, B:436:0x08a2, B:438:0x08ac, B:444:0x08b7, B:450:0x08e3, B:452:0x08ea, B:454:0x08ee, B:458:0x08f7, B:460:0x0905, B:462:0x090d, B:464:0x0917, B:465:0x091c, B:466:0x0921, B:467:0x0926, B:401:0x081c, B:515:0x0a2a, B:516:0x0a32, B:520:0x0a39, B:521:0x0a41, B:525:0x0a5f), top: B:576:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:493:0x0988 A[Catch: RuntimeException -> 0x0a70, IOException -> 0x0a9b, p9 -> 0x0aa3, l6 -> 0x0aab, mm2 -> 0x0ac2, o3 -> 0x0acb, TryCatch #6 {l6 -> 0x0aab, mm2 -> 0x0ac2, p9 -> 0x0aa3, IOException -> 0x0a9b, RuntimeException -> 0x0a70, o3 -> 0x0acb, blocks: (B:3:0x0006, B:4:0x0012, B:7:0x0017, B:8:0x001c, B:12:0x0023, B:14:0x0027, B:19:0x0034, B:20:0x003b, B:21:0x0043, B:25:0x004a, B:27:0x0053, B:29:0x0061, B:30:0x0069, B:31:0x0074, B:32:0x0088, B:33:0x00a0, B:34:0x00b6, B:36:0x00c5, B:37:0x00c9, B:38:0x00da, B:40:0x00e9, B:41:0x0105, B:42:0x0118, B:43:0x0121, B:45:0x0133, B:46:0x013f, B:47:0x014f, B:49:0x015b, B:52:0x0166, B:53:0x016d, B:54:0x017a, B:58:0x0181, B:60:0x0189, B:62:0x018d, B:64:0x0192, B:66:0x019a, B:68:0x01a2, B:69:0x01a5, B:71:0x01aa, B:78:0x01b7, B:79:0x01b8, B:83:0x01bf, B:85:0x01cd, B:86:0x01d0, B:87:0x01d5, B:89:0x01e5, B:90:0x01e8, B:91:0x01ed, B:93:0x0204, B:95:0x0208, B:97:0x0216, B:101:0x0220, B:103:0x0225, B:105:0x022b, B:109:0x0233, B:111:0x023b, B:113:0x025e, B:117:0x0267, B:119:0x0289, B:120:0x028c, B:121:0x028f, B:123:0x0293, B:125:0x02a3, B:127:0x02a9, B:128:0x02ad, B:130:0x02b1, B:131:0x02b6, B:132:0x02bb, B:136:0x02dc, B:138:0x02e7, B:133:0x02bf, B:135:0x02c9, B:139:0x02f4, B:141:0x0300, B:142:0x030c, B:144:0x0318, B:146:0x0340, B:147:0x0360, B:148:0x0365, B:149:0x0377, B:156:0x0382, B:157:0x0383, B:158:0x038a, B:159:0x0392, B:160:0x03a7, B:162:0x03c9, B:222:0x04e0, B:207:0x04b0, B:206:0x04ac, B:227:0x04f3, B:228:0x0504, B:164:0x03f0, B:168:0x0404, B:170:0x0414, B:172:0x042b, B:174:0x0434, B:229:0x0505, B:231:0x0513, B:234:0x051d, B:236:0x052c, B:238:0x0538, B:240:0x0567, B:241:0x056e, B:242:0x0572, B:244:0x0576, B:246:0x0583, B:315:0x0694, B:317:0x069c, B:319:0x06a4, B:322:0x06a9, B:323:0x06b5, B:325:0x06ba, B:327:0x06c2, B:331:0x06d3, B:333:0x06d9, B:334:0x06f3, B:336:0x06f9, B:338:0x06fe, B:340:0x0703, B:342:0x0707, B:344:0x070d, B:346:0x0711, B:348:0x0719, B:350:0x071f, B:352:0x0729, B:355:0x072f, B:356:0x0732, B:249:0x058d, B:251:0x0593, B:254:0x0599, B:257:0x05a4, B:259:0x05a9, B:262:0x05b7, B:264:0x05bd, B:265:0x05c6, B:266:0x05c9, B:268:0x05d1, B:270:0x05df, B:272:0x05f1, B:274:0x05fb, B:277:0x0605, B:279:0x060d, B:280:0x0610, B:284:0x0617, B:286:0x0621, B:288:0x062b, B:290:0x063c, B:292:0x0642, B:293:0x064d, B:294:0x0650, B:296:0x0656, B:299:0x065b, B:301:0x0660, B:303:0x0668, B:305:0x066e, B:307:0x0674, B:311:0x0682, B:313:0x068e, B:314:0x0691, B:245:0x0580, B:357:0x077f, B:362:0x078e, B:364:0x0798, B:365:0x079f, B:367:0x07af, B:368:0x07c5, B:370:0x07ca, B:400:0x0818, B:373:0x07d3, B:375:0x07da, B:379:0x07e3, B:381:0x07ed, B:387:0x07fc, B:389:0x0802, B:399:0x0815, B:402:0x0823, B:404:0x0829, B:408:0x0831, B:410:0x0839, B:412:0x083d, B:413:0x0848, B:415:0x084e, B:468:0x0929, B:471:0x0931, B:473:0x0935, B:475:0x093d, B:477:0x094b, B:478:0x0952, B:479:0x0956, B:481:0x095c, B:483:0x0965, B:486:0x096c, B:487:0x0973, B:488:0x0974, B:490:0x097c, B:491:0x0982, B:493:0x0988, B:497:0x0996, B:499:0x099a, B:503:0x09aa, B:511:0x09c1, B:513:0x09c7, B:514:0x0a22, B:502:0x09a2, B:495:0x098f, B:504:0x09ad, B:508:0x09b4, B:509:0x09ba, B:416:0x0857, B:418:0x085e, B:420:0x0862, B:447:0x08d4, B:449:0x08df, B:425:0x086f, B:427:0x0873, B:429:0x0885, B:430:0x088b, B:432:0x0899, B:436:0x08a2, B:438:0x08ac, B:444:0x08b7, B:450:0x08e3, B:452:0x08ea, B:454:0x08ee, B:458:0x08f7, B:460:0x0905, B:462:0x090d, B:464:0x0917, B:465:0x091c, B:466:0x0921, B:467:0x0926, B:401:0x081c, B:515:0x0a2a, B:516:0x0a32, B:520:0x0a39, B:521:0x0a41, B:525:0x0a5f), top: B:576:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:506:0x09b1  */
    /* JADX WARN: Removed duplicated region for block: B:513:0x09c7 A[Catch: RuntimeException -> 0x0a70, IOException -> 0x0a9b, p9 -> 0x0aa3, l6 -> 0x0aab, mm2 -> 0x0ac2, o3 -> 0x0acb, TryCatch #6 {l6 -> 0x0aab, mm2 -> 0x0ac2, p9 -> 0x0aa3, IOException -> 0x0a9b, RuntimeException -> 0x0a70, o3 -> 0x0acb, blocks: (B:3:0x0006, B:4:0x0012, B:7:0x0017, B:8:0x001c, B:12:0x0023, B:14:0x0027, B:19:0x0034, B:20:0x003b, B:21:0x0043, B:25:0x004a, B:27:0x0053, B:29:0x0061, B:30:0x0069, B:31:0x0074, B:32:0x0088, B:33:0x00a0, B:34:0x00b6, B:36:0x00c5, B:37:0x00c9, B:38:0x00da, B:40:0x00e9, B:41:0x0105, B:42:0x0118, B:43:0x0121, B:45:0x0133, B:46:0x013f, B:47:0x014f, B:49:0x015b, B:52:0x0166, B:53:0x016d, B:54:0x017a, B:58:0x0181, B:60:0x0189, B:62:0x018d, B:64:0x0192, B:66:0x019a, B:68:0x01a2, B:69:0x01a5, B:71:0x01aa, B:78:0x01b7, B:79:0x01b8, B:83:0x01bf, B:85:0x01cd, B:86:0x01d0, B:87:0x01d5, B:89:0x01e5, B:90:0x01e8, B:91:0x01ed, B:93:0x0204, B:95:0x0208, B:97:0x0216, B:101:0x0220, B:103:0x0225, B:105:0x022b, B:109:0x0233, B:111:0x023b, B:113:0x025e, B:117:0x0267, B:119:0x0289, B:120:0x028c, B:121:0x028f, B:123:0x0293, B:125:0x02a3, B:127:0x02a9, B:128:0x02ad, B:130:0x02b1, B:131:0x02b6, B:132:0x02bb, B:136:0x02dc, B:138:0x02e7, B:133:0x02bf, B:135:0x02c9, B:139:0x02f4, B:141:0x0300, B:142:0x030c, B:144:0x0318, B:146:0x0340, B:147:0x0360, B:148:0x0365, B:149:0x0377, B:156:0x0382, B:157:0x0383, B:158:0x038a, B:159:0x0392, B:160:0x03a7, B:162:0x03c9, B:222:0x04e0, B:207:0x04b0, B:206:0x04ac, B:227:0x04f3, B:228:0x0504, B:164:0x03f0, B:168:0x0404, B:170:0x0414, B:172:0x042b, B:174:0x0434, B:229:0x0505, B:231:0x0513, B:234:0x051d, B:236:0x052c, B:238:0x0538, B:240:0x0567, B:241:0x056e, B:242:0x0572, B:244:0x0576, B:246:0x0583, B:315:0x0694, B:317:0x069c, B:319:0x06a4, B:322:0x06a9, B:323:0x06b5, B:325:0x06ba, B:327:0x06c2, B:331:0x06d3, B:333:0x06d9, B:334:0x06f3, B:336:0x06f9, B:338:0x06fe, B:340:0x0703, B:342:0x0707, B:344:0x070d, B:346:0x0711, B:348:0x0719, B:350:0x071f, B:352:0x0729, B:355:0x072f, B:356:0x0732, B:249:0x058d, B:251:0x0593, B:254:0x0599, B:257:0x05a4, B:259:0x05a9, B:262:0x05b7, B:264:0x05bd, B:265:0x05c6, B:266:0x05c9, B:268:0x05d1, B:270:0x05df, B:272:0x05f1, B:274:0x05fb, B:277:0x0605, B:279:0x060d, B:280:0x0610, B:284:0x0617, B:286:0x0621, B:288:0x062b, B:290:0x063c, B:292:0x0642, B:293:0x064d, B:294:0x0650, B:296:0x0656, B:299:0x065b, B:301:0x0660, B:303:0x0668, B:305:0x066e, B:307:0x0674, B:311:0x0682, B:313:0x068e, B:314:0x0691, B:245:0x0580, B:357:0x077f, B:362:0x078e, B:364:0x0798, B:365:0x079f, B:367:0x07af, B:368:0x07c5, B:370:0x07ca, B:400:0x0818, B:373:0x07d3, B:375:0x07da, B:379:0x07e3, B:381:0x07ed, B:387:0x07fc, B:389:0x0802, B:399:0x0815, B:402:0x0823, B:404:0x0829, B:408:0x0831, B:410:0x0839, B:412:0x083d, B:413:0x0848, B:415:0x084e, B:468:0x0929, B:471:0x0931, B:473:0x0935, B:475:0x093d, B:477:0x094b, B:478:0x0952, B:479:0x0956, B:481:0x095c, B:483:0x0965, B:486:0x096c, B:487:0x0973, B:488:0x0974, B:490:0x097c, B:491:0x0982, B:493:0x0988, B:497:0x0996, B:499:0x099a, B:503:0x09aa, B:511:0x09c1, B:513:0x09c7, B:514:0x0a22, B:502:0x09a2, B:495:0x098f, B:504:0x09ad, B:508:0x09b4, B:509:0x09ba, B:416:0x0857, B:418:0x085e, B:420:0x0862, B:447:0x08d4, B:449:0x08df, B:425:0x086f, B:427:0x0873, B:429:0x0885, B:430:0x088b, B:432:0x0899, B:436:0x08a2, B:438:0x08ac, B:444:0x08b7, B:450:0x08e3, B:452:0x08ea, B:454:0x08ee, B:458:0x08f7, B:460:0x0905, B:462:0x090d, B:464:0x0917, B:465:0x091c, B:466:0x0921, B:467:0x0926, B:401:0x081c, B:515:0x0a2a, B:516:0x0a32, B:520:0x0a39, B:521:0x0a41, B:525:0x0a5f), top: B:576:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:629:0x0818 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v25, types: [r4.kw3, r4.ho] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r49) {
        /*
            Method dump skipped, instructions count: 2904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6453y4.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: i0 */
    public final void m4859i0() {
        this.f33937y.m10107b();
        InterfaceC5790g7[] interfaceC5790g7Arr = this.f33924a;
        for (int i = 0; i < 2; i++) {
            InterfaceC5790g7 interfaceC5790g7 = interfaceC5790g7Arr[i];
            if (m4892K(interfaceC5790g7)) {
                m4890M(interfaceC5790g7);
            }
        }
    }

    @Override // p168r4.wu3
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ void mo4858j(et3 et3Var) {
        this.f33931s.mo5437c(9, et3Var).zza();
    }

    /* renamed from: l */
    public final void m4856l(long j) {
        hv3[] hv3VarArr;
        C6491z5 m12538k = this.f33902C.m12538k();
        if (m12538k != null) {
            j += m12538k.m4450a();
        }
        this.f33919T = j;
        this.f33937y.m10106d(j);
        InterfaceC5790g7[] interfaceC5790g7Arr = this.f33924a;
        for (int i = 0; i < 2; i++) {
            InterfaceC5790g7 interfaceC5790g7 = interfaceC5790g7Arr[i];
            if (m4892K(interfaceC5790g7)) {
                interfaceC5790g7.mo11258c0(this.f33919T);
            }
        }
        for (C6491z5 m12538k2 = this.f33902C.m12538k(); m12538k2 != null; m12538k2 = m12538k2.m4436o()) {
            for (hv3 hv3Var : m12538k2.m4434q().f21930d) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4854n(boolean r31, boolean r32, boolean r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6453y4.m4854n(boolean, boolean, boolean, boolean):void");
    }

    /* renamed from: r */
    public final boolean m4850r() {
        C6491z5 m12538k = this.f33902C.m12538k();
        long j = m12538k.f34340f.f20390e;
        if (!m12538k.f34338d) {
            return false;
        }
        if (j != -9223372036854775807L && this.f33905F.f28899s >= j && m4895H()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0354 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x018e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01b5  */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v0, types: [r4.b8] */
    /* JADX WARN: Type inference failed for: r14v1, types: [r4.x4] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r1v7, types: [r4.e8] */
    /* JADX WARN: Type inference failed for: r29v0, types: [r4.e8] */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4849s(p168r4.AbstractC5717e8 r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 935
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6453y4.m4849s(r4.e8, boolean):void");
    }

    /* renamed from: u */
    public final void m4847u() {
        C6491z5 m12538k = this.f33902C.m12538k();
        boolean z = false;
        if (m12538k != null && m12538k.f34340f.f20393h && this.f33908I) {
            z = true;
        }
        this.f33909J = z;
    }

    /* renamed from: w */
    public final void m4845w(C6159q6 c6159q6, float f, boolean z, boolean z2) {
        int i;
        C6453y4 c6453y4 = this;
        if (z) {
            if (z2) {
                c6453y4.f33906G.m6234b(1);
            }
            C6085o6 c6085o6 = c6453y4.f33905F;
            c6453y4 = this;
            c6453y4.f33905F = new C6085o6(c6085o6.f28881a, c6085o6.f28882b, c6085o6.f28883c, c6085o6.f28884d, c6085o6.f28885e, c6085o6.f28886f, c6085o6.f28887g, c6085o6.f28888h, c6085o6.f28889i, c6085o6.f28890j, c6085o6.f28891k, c6085o6.f28892l, c6085o6.f28893m, c6159q6, c6085o6.f28897q, c6085o6.f28898r, c6085o6.f28899s, c6085o6.f28895o, c6085o6.f28896p);
        }
        float f2 = c6159q6.f29992a;
        C6491z5 m12538k = c6453y4.f33902C.m12538k();
        while (true) {
            i = 0;
            if (m12538k == null) {
                break;
            }
            hv3[] hv3VarArr = m12538k.m4434q().f21930d;
            int length = hv3VarArr.length;
            while (i < length) {
                hv3 hv3Var = hv3VarArr[i];
                i++;
            }
            m12538k = m12538k.m4436o();
        }
        InterfaceC5790g7[] interfaceC5790g7Arr = c6453y4.f33924a;
        while (i < 2) {
            InterfaceC5790g7 interfaceC5790g7 = interfaceC5790g7Arr[i];
            if (interfaceC5790g7 != null) {
                interfaceC5790g7.mo11260a0(f, c6159q6.f29992a);
            }
            i++;
        }
    }

    /* renamed from: y */
    public final boolean m4843y() {
        C6491z5 m12539j = this.f33902C.m12539j();
        if (m12539j == null || m12539j.m4445f() == Long.MIN_VALUE) {
            return false;
        }
        return true;
    }

    /* renamed from: z */
    public final void m4842z() {
        boolean z;
        C6491z5 m12539j = this.f33902C.m12539j();
        if (!this.f33911L && (m12539j == null || !m12539j.f34335a.mo4965l())) {
            z = false;
        } else {
            z = true;
        }
        C6085o6 c6085o6 = this.f33905F;
        if (z != c6085o6.f28887g) {
            this.f33905F = new C6085o6(c6085o6.f28881a, c6085o6.f28882b, c6085o6.f28883c, c6085o6.f28884d, c6085o6.f28885e, c6085o6.f28886f, z, c6085o6.f28888h, c6085o6.f28889i, c6085o6.f28890j, c6085o6.f28891k, c6085o6.f28892l, c6085o6.f28893m, c6085o6.f28894n, c6085o6.f28897q, c6085o6.f28898r, c6085o6.f28899s, c6085o6.f28895o, c6085o6.f28896p);
        }
    }

    /* renamed from: L */
    public static final void m4891L(C5678d7 c5678d7) {
        c5678d7.m12212h();
        try {
            c5678d7.m12219a().mo8872a(c5678d7.m12217c(), c5678d7.m12215e());
        } finally {
            c5678d7.m12211i(true);
        }
    }

    /* renamed from: M */
    public static final void m4890M(InterfaceC5790g7 interfaceC5790g7) {
        if (interfaceC5790g7.mo11270F0() == 2) {
            interfaceC5790g7.mo11273C();
        }
    }

    /* renamed from: N */
    public static final void m4889N(InterfaceC5790g7 interfaceC5790g7, long j) {
        interfaceC5790g7.mo11263X();
        if (!(interfaceC5790g7 instanceof C5867ia)) {
            return;
        }
        C5867ia c5867ia = (C5867ia) interfaceC5790g7;
        throw null;
    }

    /* renamed from: X */
    public static Object m4879X(C5679d8 c5679d8, C5606b8 c5606b8, int i, boolean z, Object obj, AbstractC5717e8 abstractC5717e8, AbstractC5717e8 abstractC5717e82) {
        int mo4072i = abstractC5717e8.mo4072i(obj);
        int mo4074g = abstractC5717e8.mo4074g();
        int i2 = 0;
        int i3 = mo4072i;
        int i4 = -1;
        while (true) {
            if (i2 >= mo4074g || i4 != -1) {
                break;
            }
            i3 = abstractC5717e8.m11842l(i3, c5606b8, c5679d8, i, z);
            if (i3 == -1) {
                i4 = -1;
                break;
            }
            i4 = abstractC5717e82.mo4072i(abstractC5717e8.mo4071j(i3));
            i2++;
        }
        if (i4 == -1) {
            return null;
        }
        return abstractC5717e82.mo4071j(i4);
    }

    /* renamed from: a0 */
    public static final /* synthetic */ void m4875a0(C5678d7 c5678d7) {
        try {
            m4891L(c5678d7);
        } catch (C6082o3 e) {
            C5720eb.m11832b("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b0 */
    public final void m4873b0(IOException iOException, int i) {
        C6082o3 m8910a = C6082o3.m8910a(iOException, i);
        C6491z5 m12538k = this.f33902C.m12538k();
        if (m12538k != null) {
            m8910a = m8910a.m8907d(m12538k.f34340f.f20386a);
        }
        C5720eb.m11832b("ExoPlayerImplInternal", "Playback error", m8910a);
        m4855m(false, false);
        this.f33905F = this.f33905F.m8883f(m8910a);
    }

    /* renamed from: e */
    public final boolean m4868e(AbstractC5717e8 abstractC5717e8, ft3 ft3Var) {
        if (!ft3Var.m11647b() && !abstractC5717e8.m11843k()) {
            abstractC5717e8.mo4075f(abstractC5717e8.mo6932o(ft3Var.f23237a, this.f33935w).f20895c, this.f33934v, 0L);
            if (this.f33934v.m12207b()) {
                C5679d8 c5679d8 = this.f33934v;
                if (c5679d8.f22152g && c5679d8.f22149d != -9223372036854775807L) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: i */
    public final long m4860i(ft3 ft3Var, long j, boolean z, boolean z2) {
        m4859i0();
        this.f33910K = false;
        if (z2 || this.f33905F.f28885e == 3) {
            m4869d0(2);
        }
        C6491z5 m12538k = this.f33902C.m12538k();
        C6491z5 c6491z5 = m12538k;
        while (c6491z5 != null && !ft3Var.equals(c6491z5.f34340f.f20386a)) {
            c6491z5 = c6491z5.m4436o();
        }
        if (z || m12538k != c6491z5 || (c6491z5 != null && c6491z5.m4450a() + j < 0)) {
            InterfaceC5790g7[] interfaceC5790g7Arr = this.f33924a;
            for (int i = 0; i < 2; i++) {
                m4851q(interfaceC5790g7Arr[i]);
            }
            if (c6491z5 != null) {
                while (this.f33902C.m12538k() != c6491z5) {
                    this.f33902C.m12535n();
                }
                this.f33902C.m12534o(c6491z5);
                c6491z5.m4449b(0L);
                m4901B();
            }
        }
        if (c6491z5 != null) {
            this.f33902C.m12534o(c6491z5);
            if (!c6491z5.f34338d) {
                c6491z5.f34340f = c6491z5.f34340f.m13044a(j);
            } else if (c6491z5.f34339e) {
                j = c6491z5.f34335a.mo5016p(j);
                c6491z5.f34335a.mo5015q(j - this.f33936x, false);
            }
            m4856l(j);
            m4844x();
        } else {
            this.f33902C.m12533p();
            m4856l(j);
        }
        m4899D(false);
        this.f33931s.mo5440C(2);
        return j;
    }

    /* renamed from: o */
    public final Pair<ft3, Long> m4853o(AbstractC5717e8 abstractC5717e8) {
        long j = 0;
        if (abstractC5717e8.m11843k()) {
            return Pair.create(C6085o6.m8887b(), 0L);
        }
        Pair<Object, Long> m11841m = abstractC5717e8.m11841m(this.f33934v, this.f33935w, abstractC5717e8.mo6723e(this.f33913N), -9223372036854775807L);
        ft3 m12530s = this.f33902C.m12530s(abstractC5717e8, m11841m.first, 0L);
        long longValue = ((Long) m11841m.second).longValue();
        if (m12530s.m11647b()) {
            abstractC5717e8.mo6932o(m12530s.f23237a, this.f33935w);
            if (m12530s.f23239c == this.f33935w.m12855c(m12530s.f23238b)) {
                this.f33935w.m12849i();
            }
        } else {
            j = longValue;
        }
        return Pair.create(m12530s, Long.valueOf(j));
    }

    /* renamed from: p */
    public final void m4852p(AbstractC5717e8 abstractC5717e8, AbstractC5717e8 abstractC5717e82) {
        if (abstractC5717e8.m11843k() && abstractC5717e82.m11843k()) {
            return;
        }
        int size = this.f33938z.size() - 1;
        if (size < 0) {
            Collections.sort(this.f33938z);
            return;
        }
        Object obj = this.f33938z.get(size).f32164a;
        C5711e3.m11871b(-9223372036854775807L);
        throw null;
    }

    /* renamed from: q */
    public final void m4851q(InterfaceC5790g7 interfaceC5790g7) {
        if (!m4892K(interfaceC5790g7)) {
            return;
        }
        this.f33937y.m10104f(interfaceC5790g7);
        m4890M(interfaceC5790g7);
        interfaceC5790g7.mo11259b0();
        this.f33917R--;
    }

    /* renamed from: t */
    public final void m4848t(AbstractC5717e8 abstractC5717e8, ft3 ft3Var, AbstractC5717e8 abstractC5717e82, ft3 ft3Var2, long j) {
        Object obj;
        if (!abstractC5717e8.m11843k() && m4868e(abstractC5717e8, ft3Var)) {
            abstractC5717e8.mo4075f(abstractC5717e8.mo6932o(ft3Var.f23237a, this.f33935w).f20895c, this.f33934v, 0L);
            C5786g3 c5786g3 = this.f33923X;
            C6195r5 c6195r5 = this.f33934v.f22154i;
            int i = C5979lc.f27164a;
            c5786g3.m11307a(c6195r5);
            if (j != -9223372036854775807L) {
                this.f33923X.m11306b(m4870d(abstractC5717e8, ft3Var.f23237a, j));
                return;
            }
            Object obj2 = this.f33934v.f22146a;
            if (!abstractC5717e82.m11843k()) {
                obj = abstractC5717e82.mo4075f(abstractC5717e82.mo6932o(ft3Var2.f23237a, this.f33935w).f20895c, this.f33934v, 0L).f22146a;
            } else {
                obj = null;
            }
            if (!C5979lc.m9729H(obj, obj2)) {
                this.f33923X.m11306b(-9223372036854775807L);
                return;
            }
            return;
        }
        float f = this.f33937y.mo4341z().f29992a;
        C6159q6 c6159q6 = this.f33905F.f28894n;
        if (f != c6159q6.f29992a) {
            this.f33937y.mo4343c(c6159q6);
        }
    }

    /* renamed from: x */
    public final void m4844x() {
        long m4450a;
        long j;
        boolean mo10737g;
        if (!m4843y()) {
            mo10737g = false;
        } else {
            C6491z5 m12539j = this.f33902C.m12539j();
            long m4897F = m4897F(m12539j.m4445f());
            if (m12539j == this.f33902C.m12538k()) {
                m4450a = this.f33919T;
                j = m12539j.m4450a();
            } else {
                m4450a = this.f33919T - m12539j.m4450a();
                j = m12539j.f34340f.f20387b;
            }
            mo10737g = this.f33929q.mo10737g(m4450a - j, m4897F, this.f33937y.mo4341z().f29992a);
        }
        this.f33911L = mo10737g;
        if (mo10737g) {
            this.f33902C.m12539j().m4442i(this.f33919T);
        }
        m4842z();
    }
}
