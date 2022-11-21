package p168r4;

import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import com.badlogic.gdx.graphics.GL20;
import com.prineside.tdi2.tiles.CoreTile;
import java.io.IOException;
import java.util.List;
/* renamed from: r4.c41 */
/* loaded from: classes2.dex */
public final class c41 implements InterfaceC6381w6, wm1, zy3, pt3, jw3, qp2 {

    /* renamed from: a */
    public final InterfaceC5940ka f21349a;

    /* renamed from: b */
    public final C5606b8 f21350b;

    /* renamed from: d */
    public final C5679d8 f21351d;

    /* renamed from: k */
    public final b31 f21352k;

    /* renamed from: p */
    public final SparseArray<d51> f21353p;

    /* renamed from: q */
    public C5682db<f61> f21354q;

    /* renamed from: r */
    public InterfaceC5568a7 f21355r;

    /* renamed from: s */
    public InterfaceC6422xa f21356s;

    /* renamed from: t */
    public boolean f21357t;

    @Override // p168r4.InterfaceC6381w6
    /* renamed from: B */
    public final void mo5831B(int i, boolean z) {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: E0 */
    public final void mo6625E0(final C6492z6 c6492z6, final C6492z6 c6492z62, final int i) {
        if (i == 1) {
            this.f21357t = false;
            i = 1;
        }
        b31 b31Var = this.f21352k;
        InterfaceC5568a7 interfaceC5568a7 = this.f21355r;
        interfaceC5568a7.getClass();
        b31Var.m12877g(interfaceC5568a7);
        final d51 m12630F = m12630F();
        m12631E(m12630F, 11, new InterfaceC5572ab(m12630F, i, c6492z6, c6492z62) { // from class: r4.qr0

            /* renamed from: a */
            public final d51 f30292a;

            /* renamed from: b */
            public final C6492z6 f30293b;

            /* renamed from: c */
            public final C6492z6 f30294c;

            {
                this.f30292a = m12630F;
                this.f30293b = c6492z6;
                this.f30294c = c6492z62;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    /* renamed from: F */
    public final d51 m12630F() {
        return m12625K(this.f21352k.m12882b());
    }

    /* renamed from: H */
    public final void m12628H(f61 f61Var) {
        this.f21354q.m12177b(f61Var);
    }

    /* renamed from: I */
    public final /* synthetic */ void m12627I() {
        this.f21354q.m12173f();
    }

    /* renamed from: L */
    public final d51 m12624L() {
        return m12625K(this.f21352k.m12881c());
    }

    /* renamed from: M */
    public final d51 m12623M() {
        return m12625K(this.f21352k.m12880d());
    }

    /* renamed from: O */
    public final void m12621O(f61 f61Var) {
        this.f21354q.m12176c(f61Var);
    }

    @Override // p168r4.InterfaceC6381w6
    /* renamed from: s */
    public final void mo5829s() {
    }

    @Override // p168r4.InterfaceC6381w6
    /* renamed from: t */
    public final void mo5828t(C6007m3 c6007m3) {
    }

    @Override // p168r4.jw3
    /* renamed from: D */
    public final void mo10161D(final int i, final long j, final long j2) {
        final d51 m12625K = m12625K(this.f21352k.m12879e());
        m12631E(m12625K, 1006, new InterfaceC5572ab(m12625K, i, j, j2) { // from class: r4.uw0

            /* renamed from: a */
            public final d51 f32460a;

            {
                this.f32460a = m12625K;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    /* renamed from: E */
    public final void m12631E(d51 d51Var, int i, InterfaceC5572ab<f61> interfaceC5572ab) {
        this.f21353p.put(i, d51Var);
        C5682db<f61> c5682db = this.f21354q;
        c5682db.m12175d(i, interfaceC5572ab);
        c5682db.m12174e();
    }

    /* renamed from: G */
    public final d51 m12629G(AbstractC5717e8 abstractC5717e8, int i, ft3 ft3Var) {
        ft3 ft3Var2;
        boolean z = true;
        if (true == abstractC5717e8.m11843k()) {
            ft3Var2 = null;
        } else {
            ft3Var2 = ft3Var;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        z = (abstractC5717e8.equals(this.f21355r.mo8007G()) && i == this.f21355r.mo8009E()) ? false : false;
        long j = 0;
        if (ft3Var2 != null && ft3Var2.m11647b()) {
            if (z && this.f21355r.mo7998P() == ft3Var2.f23238b && this.f21355r.mo7958y() == ft3Var2.f23239c) {
                j = this.f21355r.mo7999O();
            }
        } else if (z) {
            j = this.f21355r.mo8002L();
        } else if (!abstractC5717e8.m11843k()) {
            long j2 = abstractC5717e8.mo4075f(i, this.f21351d, 0L).f22156k;
            j = C5711e3.m11872a(0L);
        }
        return new d51(elapsedRealtime, abstractC5717e8, i, ft3Var2, j, this.f21355r.mo8007G(), this.f21355r.mo8009E(), this.f21352k.m12882b(), this.f21355r.mo7999O(), this.f21355r.mo7961v());
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: H0 */
    public final void mo6622H0(final C6047n6 c6047n6) {
        f04 f04Var;
        final d51 d51Var = null;
        if ((c6047n6 instanceof C6082o3) && (f04Var = ((C6082o3) c6047n6).f28834t) != null) {
            d51Var = m12625K(new ft3(f04Var));
        }
        if (d51Var == null) {
            d51Var = m12630F();
        }
        m12631E(d51Var, 10, new InterfaceC5572ab(d51Var, c6047n6) { // from class: r4.pq0

            /* renamed from: a */
            public final d51 f29554a;

            /* renamed from: b */
            public final C6047n6 f29555b;

            {
                this.f29554a = d51Var;
                this.f29555b = c6047n6;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                ((f61) obj).mo7018u(this.f29554a, this.f29555b);
            }
        });
    }

    /* renamed from: J */
    public final /* synthetic */ void m12626J(InterfaceC5568a7 interfaceC5568a7, f61 f61Var, C6348va c6348va) {
        SparseArray<d51> sparseArray = this.f21353p;
        SparseArray sparseArray2 = new SparseArray(c6348va.m6195a());
        for (int i = 0; i < c6348va.m6195a(); i++) {
            int m6194b = c6348va.m6194b(i);
            d51 d51Var = sparseArray.get(m6194b);
            d51Var.getClass();
            sparseArray2.append(m6194b, d51Var);
        }
    }

    /* renamed from: K */
    public final d51 m12625K(ft3 ft3Var) {
        AbstractC5717e8 m12878f;
        this.f21355r.getClass();
        if (ft3Var == null) {
            m12878f = null;
        } else {
            m12878f = this.f21352k.m12878f(ft3Var);
        }
        if (ft3Var != null && m12878f != null) {
            return m12629G(m12878f, m12878f.mo6932o(ft3Var.f23237a, this.f21350b).f20895c, ft3Var);
        }
        int mo8009E = this.f21355r.mo8009E();
        AbstractC5717e8 mo8007G = this.f21355r.mo8007G();
        if (mo8009E >= mo8007G.mo4076a()) {
            mo8007G = AbstractC5717e8.f22905a;
        }
        return m12629G(mo8007G, mo8009E, null);
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: M0 */
    public final void mo6617M0(AbstractC5717e8 abstractC5717e8, final int i) {
        b31 b31Var = this.f21352k;
        InterfaceC5568a7 interfaceC5568a7 = this.f21355r;
        interfaceC5568a7.getClass();
        b31Var.m12876h(interfaceC5568a7);
        final d51 m12630F = m12630F();
        m12631E(m12630F, 0, new InterfaceC5572ab(m12630F, i) { // from class: r4.hf0

            /* renamed from: a */
            public final d51 f24565a;

            {
                this.f24565a = m12630F;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    /* renamed from: N */
    public final d51 m12622N(int i, ft3 ft3Var) {
        InterfaceC5568a7 interfaceC5568a7 = this.f21355r;
        interfaceC5568a7.getClass();
        if (ft3Var != null) {
            if (this.f21352k.m12878f(ft3Var) != null) {
                return m12625K(ft3Var);
            }
            return m12629G(AbstractC5717e8.f22905a, i, ft3Var);
        }
        AbstractC5717e8 mo8007G = interfaceC5568a7.mo8007G();
        if (i >= mo8007G.mo4076a()) {
            mo8007G = AbstractC5717e8.f22905a;
        }
        return m12629G(mo8007G, i, null);
    }

    /* renamed from: P */
    public final void m12620P(final InterfaceC5568a7 interfaceC5568a7, Looper looper) {
        o33 o33Var;
        boolean z = true;
        if (this.f21355r != null) {
            o33Var = this.f21352k.f20822b;
            if (!o33Var.isEmpty()) {
                z = false;
            }
        }
        C5903ja.m10371d(z);
        this.f21355r = interfaceC5568a7;
        this.f21356s = this.f21349a.mo10082a(looper, null);
        this.f21354q = this.f21354q.m12178a(looper, new InterfaceC5609bb(this, interfaceC5568a7) { // from class: r4.g00

            /* renamed from: a */
            public final c41 f23813a;

            /* renamed from: b */
            public final InterfaceC5568a7 f23814b;

            {
                this.f23813a = this;
                this.f23814b = interfaceC5568a7;
            }

            @Override // p168r4.InterfaceC5609bb
            /* renamed from: a */
            public final void mo7619a(Object obj, C6348va c6348va) {
                this.f23813a.m12626J(this.f23814b, (f61) obj, c6348va);
            }
        });
    }

    /* renamed from: R */
    public final void m12618R(List<ft3> list, ft3 ft3Var) {
        b31 b31Var = this.f21352k;
        InterfaceC5568a7 interfaceC5568a7 = this.f21355r;
        interfaceC5568a7.getClass();
        b31Var.m12875i(list, ft3Var, interfaceC5568a7);
    }

    /* renamed from: S */
    public final void m12617S() {
        if (!this.f21357t) {
            final d51 m12630F = m12630F();
            this.f21357t = true;
            m12631E(m12630F, -1, new InterfaceC5572ab(m12630F) { // from class: r4.tt0

                /* renamed from: a */
                public final d51 f32009a;

                {
                    this.f32009a = m12630F;
                }

                @Override // p168r4.InterfaceC5572ab
                /* renamed from: a */
                public final void mo4462a(Object obj) {
                    f61 f61Var = (f61) obj;
                }
            });
        }
    }

    public c41(InterfaceC5940ka interfaceC5940ka) {
        this.f21349a = interfaceC5940ka;
        this.f21354q = new C5682db<>(C5979lc.m9721P(), interfaceC5940ka, C5920jr.f26102a);
        C5606b8 c5606b8 = new C5606b8();
        this.f21350b = c5606b8;
        this.f21351d = new C5679d8();
        this.f21352k = new b31(c5606b8);
        this.f21353p = new SparseArray<>();
    }

    @Override // p168r4.wm1
    /* renamed from: A */
    public final void mo5647A(final C5808gp c5808gp) {
        final d51 m12624L = m12624L();
        m12631E(m12624L, 1014, new InterfaceC5572ab(m12624L, c5808gp) { // from class: r4.mt

            /* renamed from: a */
            public final d51 f27869a;

            /* renamed from: b */
            public final C5808gp f27870b;

            {
                this.f27869a = m12624L;
                this.f27870b = c5808gp;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: A0 */
    public final void mo6629A0(final boolean z) {
        final d51 m12630F = m12630F();
        m12631E(m12630F, 7, new InterfaceC5572ab(m12630F, z) { // from class: r4.op0

            /* renamed from: a */
            public final d51 f29099a;

            {
                this.f29099a = m12630F;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: B0 */
    public final void mo6628B0() {
        final d51 m12630F = m12630F();
        m12631E(m12630F, -1, new InterfaceC5572ab(m12630F) { // from class: r4.tv0

            /* renamed from: a */
            public final d51 f32033a;

            {
                this.f32033a = m12630F;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.zy3
    /* renamed from: C */
    public final void mo4028C(final C5808gp c5808gp) {
        final d51 m12624L = m12624L();
        m12631E(m12624L, 1025, new InterfaceC5572ab(m12624L, c5808gp) { // from class: r4.f40

            /* renamed from: a */
            public final d51 f23271a;

            /* renamed from: b */
            public final C5808gp f23272b;

            {
                this.f23271a = m12624L;
                this.f23272b = c5808gp;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: C0 */
    public final void mo6627C0(final C6159q6 c6159q6) {
        final d51 m12630F = m12630F();
        m12631E(m12630F, 12, new InterfaceC5572ab(m12630F, c6159q6) { // from class: r4.rs0

            /* renamed from: a */
            public final d51 f30673a;

            /* renamed from: b */
            public final C6159q6 f30674b;

            {
                this.f30673a = m12630F;
                this.f30674b = c6159q6;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: D0 */
    public final void mo6626D0(final boolean z) {
        final d51 m12630F = m12630F();
        m12631E(m12630F, 3, new InterfaceC5572ab(m12630F, z) { // from class: r4.gi0

            /* renamed from: a */
            public final d51 f24098a;

            {
                this.f24098a = m12630F;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: F0 */
    public final void mo6624F0(final C6306u5 c6306u5, final int i) {
        final d51 m12630F = m12630F();
        m12631E(m12630F, 1, new InterfaceC5572ab(m12630F, c6306u5, i) { // from class: r4.eg0

            /* renamed from: a */
            public final d51 f22969a;

            /* renamed from: b */
            public final C6306u5 f22970b;

            {
                this.f22969a = m12630F;
                this.f22970b = c6306u5;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: G0 */
    public final void mo6623G0(final boolean z, final int i) {
        final d51 m12630F = m12630F();
        m12631E(m12630F, 5, new InterfaceC5572ab(m12630F, z, i) { // from class: r4.kn0

            /* renamed from: a */
            public final d51 f26486a;

            {
                this.f26486a = m12630F;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: I0 */
    public final void mo6621I0(final C6270t6 c6270t6) {
        final d51 m12630F = m12630F();
        m12631E(m12630F, 13, new InterfaceC5572ab(m12630F, c6270t6) { // from class: r4.gj0

            /* renamed from: a */
            public final d51 f24114a;

            /* renamed from: b */
            public final C6270t6 f24115b;

            {
                this.f24114a = m12630F;
                this.f24115b = c6270t6;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: J0 */
    public final void mo6620J0(final int i) {
        final d51 m12630F = m12630F();
        m12631E(m12630F, 6, new InterfaceC5572ab(m12630F, i) { // from class: r4.no0

            /* renamed from: a */
            public final d51 f28376a;

            {
                this.f28376a = m12630F;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: K0 */
    public final void mo6619K0(final boolean z, final int i) {
        final d51 m12630F = m12630F();
        m12631E(m12630F, -1, new InterfaceC5572ab(m12630F, z, i) { // from class: r4.il0

            /* renamed from: a */
            public final d51 f25164a;

            {
                this.f25164a = m12630F;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: L0 */
    public final void mo6618L0(final C6454y5 c6454y5) {
        final d51 m12630F = m12630F();
        m12631E(m12630F, 14, new InterfaceC5572ab(m12630F, c6454y5) { // from class: r4.su0

            /* renamed from: a */
            public final d51 f31517a;

            /* renamed from: b */
            public final C6454y5 f31518b;

            {
                this.f31517a = m12630F;
                this.f31518b = c6454y5;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: N0 */
    public final void mo6616N0(final int i) {
        final d51 m12630F = m12630F();
        m12631E(m12630F, 4, new InterfaceC5572ab(m12630F, i) { // from class: r4.jm0

            /* renamed from: a */
            public final d51 f26073a;

            /* renamed from: b */
            public final int f26074b;

            {
                this.f26073a = m12630F;
                this.f26074b = i;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                ((f61) obj).mo7021n(this.f26073a, this.f26074b);
            }
        });
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: O0 */
    public final void mo6615O0(final j44 j44Var, final k54 k54Var) {
        final d51 m12630F = m12630F();
        m12631E(m12630F, 2, new InterfaceC5572ab(m12630F, j44Var, k54Var) { // from class: r4.fh0

            /* renamed from: a */
            public final d51 f23495a;

            /* renamed from: b */
            public final j44 f23496b;

            /* renamed from: c */
            public final k54 f23497c;

            {
                this.f23495a = m12630F;
                this.f23496b = j44Var;
                this.f23497c = k54Var;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    /* renamed from: Q */
    public final void m12619Q() {
        final d51 m12630F = m12630F();
        this.f21353p.put(1036, m12630F);
        m12631E(m12630F, 1036, new InterfaceC5572ab(m12630F) { // from class: r4.ya0

            /* renamed from: a */
            public final d51 f34011a;

            {
                this.f34011a = m12630F;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
        InterfaceC6422xa interfaceC6422xa = this.f21356s;
        C5903ja.m10370e(interfaceC6422xa);
        interfaceC6422xa.mo5433g(new Runnable(this) { // from class: r4.hk0

            /* renamed from: a */
            public final c41 f24651a;

            {
                this.f24651a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f24651a.m12627I();
            }
        });
    }

    @Override // p168r4.pt3
    /* renamed from: a */
    public final void mo8212a(int i, ft3 ft3Var, final ct3 ct3Var) {
        final d51 m12622N = m12622N(i, ft3Var);
        m12631E(m12622N, 1004, new InterfaceC5572ab(m12622N, ct3Var) { // from class: r4.he0

            /* renamed from: a */
            public final d51 f24555a;

            /* renamed from: b */
            public final ct3 f24556b;

            {
                this.f24555a = m12622N;
                this.f24556b = ct3Var;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.zy3
    /* renamed from: b */
    public final void mo4027b(final long j, final int i) {
        final d51 m12624L = m12624L();
        m12631E(m12624L, 1026, new InterfaceC5572ab(m12624L, j, i) { // from class: r4.u60

            /* renamed from: a */
            public final d51 f32200a;

            {
                this.f32200a = m12624L;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.zy3
    /* renamed from: c */
    public final void mo4026c(final C5713e5 c5713e5, final C5883iq c5883iq) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1022, new InterfaceC5572ab(m12623M, c5713e5, c5883iq) { // from class: r4.h10

            /* renamed from: a */
            public final d51 f24394a;

            /* renamed from: b */
            public final C5713e5 f24395b;

            /* renamed from: c */
            public final C5883iq f24396c;

            {
                this.f24394a = m12623M;
                this.f24395b = c5713e5;
                this.f24396c = c5883iq;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                ((f61) obj).mo7022k(this.f24394a, this.f24395b, this.f24396c);
            }
        });
    }

    @Override // p168r4.wm1
    /* renamed from: d */
    public final void mo5646d(final String str) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1013, new InterfaceC5572ab(m12623M, str) { // from class: r4.ks

            /* renamed from: a */
            public final d51 f26534a;

            /* renamed from: b */
            public final String f26535b;

            {
                this.f26534a = m12623M;
                this.f26535b = str;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.wm1
    /* renamed from: e */
    public final void mo5645e(final C5808gp c5808gp) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1008, new InterfaceC5572ab(m12623M, c5808gp) { // from class: r4.vx0

            /* renamed from: a */
            public final d51 f32966a;

            /* renamed from: b */
            public final C5808gp f32967b;

            {
                this.f32966a = m12623M;
                this.f32967b = c5808gp;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.zy3
    /* renamed from: f */
    public final void mo4025f(final Exception exc) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1038, new InterfaceC5572ab(m12623M, exc) { // from class: r4.v70

            /* renamed from: a */
            public final d51 f32638a;

            /* renamed from: b */
            public final Exception f32639b;

            {
                this.f32638a = m12623M;
                this.f32639b = exc;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.pt3
    /* renamed from: g */
    public final void mo8211g(int i, ft3 ft3Var, final ws3 ws3Var, final ct3 ct3Var) {
        final d51 m12622N = m12622N(i, ft3Var);
        m12631E(m12622N, CoreTile.FIXED_LEVEL_XP_REQUIREMENT, new InterfaceC5572ab(m12622N, ws3Var, ct3Var) { // from class: r4.x90

            /* renamed from: a */
            public final d51 f33519a;

            /* renamed from: b */
            public final ws3 f33520b;

            /* renamed from: c */
            public final ct3 f33521c;

            {
                this.f33519a = m12622N;
                this.f33520b = ws3Var;
                this.f33521c = ct3Var;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.pt3
    /* renamed from: h */
    public final void mo8210h(int i, ft3 ft3Var, final ws3 ws3Var, final ct3 ct3Var) {
        final d51 m12622N = m12622N(i, ft3Var);
        m12631E(m12622N, 1001, new InterfaceC5572ab(m12622N, ws3Var, ct3Var) { // from class: r4.yb0

            /* renamed from: a */
            public final d51 f34017a;

            /* renamed from: b */
            public final ws3 f34018b;

            /* renamed from: c */
            public final ct3 f34019c;

            {
                this.f34017a = m12622N;
                this.f34018b = ws3Var;
                this.f34019c = ct3Var;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.wm1
    /* renamed from: i */
    public final void mo5644i(final int i, final long j, final long j2) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1012, new InterfaceC5572ab(m12623M, i, j, j2) { // from class: r4.a21

            /* renamed from: a */
            public final d51 f20344a;

            {
                this.f20344a = m12623M;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.wm1
    /* renamed from: j */
    public final void mo5643j(final C5713e5 c5713e5, final C5883iq c5883iq) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1010, new InterfaceC5572ab(m12623M, c5713e5, c5883iq) { // from class: r4.yz0

            /* renamed from: a */
            public final d51 f34255a;

            /* renamed from: b */
            public final C5713e5 f34256b;

            /* renamed from: c */
            public final C5883iq f34257c;

            {
                this.f34255a = m12623M;
                this.f34256b = c5713e5;
                this.f34257c = c5883iq;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                ((f61) obj).mo7026h(this.f34255a, this.f34256b, this.f34257c);
            }
        });
    }

    @Override // p168r4.pt3
    /* renamed from: k */
    public final void mo8209k(int i, ft3 ft3Var, final ws3 ws3Var, final ct3 ct3Var) {
        final d51 m12622N = m12622N(i, ft3Var);
        m12631E(m12622N, 1002, new InterfaceC5572ab(m12622N, ws3Var, ct3Var) { // from class: r4.qc0

            /* renamed from: a */
            public final d51 f30080a;

            /* renamed from: b */
            public final ws3 f30081b;

            /* renamed from: c */
            public final ct3 f30082c;

            {
                this.f30080a = m12622N;
                this.f30081b = ws3Var;
                this.f30082c = ct3Var;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.zy3
    /* renamed from: l */
    public final void mo4024l(final Object obj, final long j) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1027, new InterfaceC5572ab(m12623M, obj, j) { // from class: r4.d60

            /* renamed from: a */
            public final d51 f22106a;

            /* renamed from: b */
            public final Object f22107b;

            /* renamed from: c */
            public final long f22108c;

            {
                this.f22106a = m12623M;
                this.f22107b = obj;
                this.f22108c = j;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj2) {
                ((f61) obj2).mo7032b(this.f22106a, this.f22107b, this.f22108c);
            }
        });
    }

    @Override // p168r4.zy3
    /* renamed from: m */
    public final void mo4023m(final C5808gp c5808gp) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1020, new InterfaceC5572ab(m12623M, c5808gp) { // from class: r4.iy

            /* renamed from: a */
            public final d51 f25633a;

            /* renamed from: b */
            public final C5808gp f25634b;

            {
                this.f25633a = m12623M;
                this.f25634b = c5808gp;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.zy3
    /* renamed from: n */
    public final void mo4022n(final String str, final long j, final long j2) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1021, new InterfaceC5572ab(m12623M, str, j2, j) { // from class: r4.fz

            /* renamed from: a */
            public final d51 f23799a;

            /* renamed from: b */
            public final String f23800b;

            {
                this.f23799a = m12623M;
                this.f23800b = str;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.wm1
    /* renamed from: o */
    public final void mo5642o(final String str, final long j, final long j2) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1009, new InterfaceC5572ab(m12623M, str, j2, j) { // from class: r4.wy0

            /* renamed from: a */
            public final d51 f33358a;

            /* renamed from: b */
            public final String f33359b;

            {
                this.f33358a = m12623M;
                this.f33359b = str;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6381w6, p168r4.wm1
    /* renamed from: p */
    public final void mo5641p(final boolean z) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1017, new InterfaceC5572ab(m12623M, z) { // from class: r4.nu

            /* renamed from: a */
            public final d51 f28480a;

            {
                this.f28480a = m12623M;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6381w6, p168r4.zy3
    /* renamed from: q */
    public final void mo4021q(final pa4 pa4Var) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, GL20.GL_FRONT, new InterfaceC5572ab(m12623M, pa4Var) { // from class: r4.c50

            /* renamed from: a */
            public final d51 f21388a;

            /* renamed from: b */
            public final pa4 f21389b;

            {
                this.f21388a = m12623M;
                this.f21389b = pa4Var;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                d51 d51Var = this.f21388a;
                pa4 pa4Var2 = this.f21389b;
                ((f61) obj).mo7019q(d51Var, pa4Var2);
                int i = pa4Var2.f29411a;
            }
        });
    }

    @Override // p168r4.InterfaceC6381w6
    /* renamed from: r */
    public final void mo5830r(final int i, final int i2) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, GL20.GL_BACK, new InterfaceC5572ab(m12623M, i, i2) { // from class: r4.w80

            /* renamed from: a */
            public final d51 f33135a;

            {
                this.f33135a = m12623M;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.InterfaceC6381w6
    /* renamed from: u */
    public final void mo5827u(final float f) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1019, new InterfaceC5572ab(m12623M, f) { // from class: r4.ix

            /* renamed from: a */
            public final d51 f25599a;

            {
                this.f25599a = m12623M;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.wm1
    /* renamed from: v */
    public final void mo5640v(final Exception exc) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1037, new InterfaceC5572ab(m12623M, exc) { // from class: r4.iw

            /* renamed from: a */
            public final d51 f25484a;

            /* renamed from: b */
            public final Exception f25485b;

            {
                this.f25484a = m12623M;
                this.f25485b = exc;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.wm1
    /* renamed from: w */
    public final void mo5639w(final long j) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1011, new InterfaceC5572ab(m12623M, j) { // from class: r4.z01

            /* renamed from: a */
            public final d51 f34275a;

            {
                this.f34275a = m12623M;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.wm1
    /* renamed from: x */
    public final void mo5638x(final Exception exc) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1018, new InterfaceC5572ab(m12623M, exc) { // from class: r4.hv

            /* renamed from: a */
            public final d51 f24866a;

            /* renamed from: b */
            public final Exception f24867b;

            {
                this.f24866a = m12623M;
                this.f24867b = exc;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.zy3
    /* renamed from: x0 */
    public final void mo4020x0(final String str) {
        final d51 m12623M = m12623M();
        m12631E(m12623M, 1024, new InterfaceC5572ab(m12623M, str) { // from class: r4.e30

            /* renamed from: a */
            public final d51 f22770a;

            /* renamed from: b */
            public final String f22771b;

            {
                this.f22770a = m12623M;
                this.f22771b = str;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                f61 f61Var = (f61) obj;
            }
        });
    }

    @Override // p168r4.pt3
    /* renamed from: y */
    public final void mo8208y(int i, ft3 ft3Var, final ws3 ws3Var, final ct3 ct3Var, final IOException iOException, final boolean z) {
        final d51 m12622N = m12622N(i, ft3Var);
        m12631E(m12622N, 1003, new InterfaceC5572ab(m12622N, ws3Var, ct3Var, iOException, z) { // from class: r4.qd0

            /* renamed from: a */
            public final d51 f30089a;

            /* renamed from: b */
            public final ws3 f30090b;

            /* renamed from: c */
            public final ct3 f30091c;

            /* renamed from: d */
            public final IOException f30092d;

            /* renamed from: e */
            public final boolean f30093e;

            {
                this.f30089a = m12622N;
                this.f30090b = ws3Var;
                this.f30091c = ct3Var;
                this.f30092d = iOException;
                this.f30093e = z;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                ((f61) obj).mo7020p(this.f30089a, this.f30090b, this.f30091c, this.f30092d, this.f30093e);
            }
        });
    }

    @Override // p168r4.zy3
    /* renamed from: z */
    public final void mo4019z(final int i, final long j) {
        final d51 m12624L = m12624L();
        m12631E(m12624L, 1023, new InterfaceC5572ab(m12624L, i, j) { // from class: r4.i20

            /* renamed from: a */
            public final d51 f24932a;

            /* renamed from: b */
            public final int f24933b;

            /* renamed from: c */
            public final long f24934c;

            {
                this.f24932a = m12624L;
                this.f24933b = i;
                this.f24934c = j;
            }

            @Override // p168r4.InterfaceC5572ab
            /* renamed from: a */
            public final void mo4462a(Object obj) {
                ((f61) obj).mo7024i(this.f24932a, this.f24933b, this.f24934c);
            }
        });
    }
}
