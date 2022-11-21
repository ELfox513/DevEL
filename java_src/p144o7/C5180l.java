package p144o7;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import p144o7.C5182l0;
import p144o7.C5230u1;
import p144o7.InterfaceC5242v1;
/* renamed from: o7.l */
/* loaded from: classes2.dex */
public final class C5180l implements InterfaceC5242v1 {

    /* renamed from: a */
    public final AbstractC5163k f19495a;

    /* renamed from: o7.l$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C5181a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19496a;

        static {
            int[] iArr = new int[C5230u1.EnumC5232b.values().length];
            f19496a = iArr;
            try {
                iArr[C5230u1.EnumC5232b.f19588u.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19496a[C5230u1.EnumC5232b.f19587t.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19496a[C5230u1.EnumC5232b.f19585r.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19496a[C5230u1.EnumC5232b.f19576B.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19496a[C5230u1.EnumC5232b.f19578D.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19496a[C5230u1.EnumC5232b.f19593z.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19496a[C5230u1.EnumC5232b.f19586s.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19496a[C5230u1.EnumC5232b.f19583p.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19496a[C5230u1.EnumC5232b.f19577C.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19496a[C5230u1.EnumC5232b.f19579E.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19496a[C5230u1.EnumC5232b.f19584q.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19496a[C5230u1.EnumC5232b.f19589v.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: A */
    public void mo13880A(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14303n(list.get(i4).intValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.mo14258s0(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.mo14259r0(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: B */
    public void mo13879B(int i, List<Boolean> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14315e(list.get(i4).booleanValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.m14309i0(list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.mo14263h0(i, list.get(i2).booleanValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: C */
    public void mo13878C(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14326W(list.get(i4).intValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.mo14271V0(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.mo14272U0(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: D */
    public void mo13877D(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14331R(list.get(i4).longValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.m14332Q0(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.m14334P0(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: E */
    public void mo13876E(int i, long j) {
        this.f19495a.m14334P0(i, j);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: F */
    public void mo13875F(int i, float f) {
        this.f19495a.m14290v0(i, f);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: G */
    public void mo13874G(int i) {
        this.f19495a.mo14273T0(i, 4);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: H */
    public void mo13873H(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14335P(list.get(i4).intValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.m14336O0(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.m14338N0(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: I */
    public void mo13872I(int i, Object obj, InterfaceC5150h1 interfaceC5150h1) {
        this.f19495a.m14284y0(i, (InterfaceC5210s0) obj, interfaceC5150h1);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: J */
    public void mo13871J(int i, int i2) {
        this.f19495a.m14298p0(i, i2);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: K */
    public void mo13870K(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14285y(list.get(i4).longValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.m14352E0(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.m14354D0(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: L */
    public void mo13869L(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14305l(list.get(i4).intValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.m14296q0(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.m14298p0(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: M */
    public void mo13868M(int i, List<Double> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14308j(list.get(i4).doubleValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.m14300o0(list.get(i2).doubleValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.m14302n0(i, list.get(i2).doubleValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: N */
    public void mo13867N(int i, int i2) {
        this.f19495a.m14338N0(i, i2);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: O */
    public void mo13866O(int i, List<AbstractC5137h> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f19495a.mo14261l0(i, list.get(i2));
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: a */
    public void mo13865a(int i, List<Float> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14295r(list.get(i4).floatValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.m14288w0(list.get(i2).floatValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.m14290v0(i, list.get(i2).floatValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: b */
    public void mo13864b(int i, List<?> list, InterfaceC5150h1 interfaceC5150h1) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo13872I(i, list.get(i2), interfaceC5150h1);
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: c */
    public void mo13863c(int i, int i2) {
        this.f19495a.mo14272U0(i, i2);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: e */
    public void mo13861e(int i, List<?> list, InterfaceC5150h1 interfaceC5150h1) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo13854l(i, list.get(i2), interfaceC5150h1);
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: f */
    public void mo13860f(int i, AbstractC5137h abstractC5137h) {
        this.f19495a.mo14261l0(i, abstractC5137h);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: g */
    public void mo13859g(int i, int i2) {
        this.f19495a.mo14259r0(i, i2);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: h */
    public void mo13858h(int i, double d) {
        this.f19495a.m14302n0(i, d);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: i */
    public void mo13857i(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14339N(list.get(i4).longValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.m14340M0(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.m14342L0(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: j */
    public void mo13856j(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14324Y(list.get(i4).longValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.mo14269X0(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.mo14270W0(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: k */
    public void mo13855k(int i, long j) {
        this.f19495a.mo14257t0(i, j);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: l */
    public void mo13854l(int i, Object obj, InterfaceC5150h1 interfaceC5150h1) {
        this.f19495a.mo14279F0(i, (InterfaceC5210s0) obj, interfaceC5150h1);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: m */
    public InterfaceC5242v1.EnumC5243a mo13853m() {
        return InterfaceC5242v1.EnumC5243a.ASCENDING;
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: o */
    public void mo13851o(int i, String str) {
        this.f19495a.mo14275R0(i, str);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: p */
    public void mo13850p(int i, long j) {
        this.f19495a.mo14270W0(i, j);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: r */
    public void mo13848r(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14289w(list.get(i4).intValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.mo14280C0(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.mo14281B0(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: s */
    public void mo13847s(int i, long j) {
        this.f19495a.m14354D0(i, j);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: t */
    public void mo13846t(int i, boolean z) {
        this.f19495a.mo14263h0(i, z);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: u */
    public void mo13845u(int i, int i2) {
        this.f19495a.m14346J0(i, i2);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: v */
    public void mo13844v(int i) {
        this.f19495a.mo14273T0(i, 3);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: w */
    public void mo13843w(int i, int i2) {
        this.f19495a.mo14281B0(i, i2);
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: x */
    public void mo13842x(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14299p(list.get(i4).longValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.mo14256u0(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.mo14257t0(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: y */
    public void mo13841y(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f19495a.mo14273T0(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC5163k.m14343L(list.get(i4).intValue());
            }
            this.f19495a.mo14271V0(i3);
            while (i2 < list.size()) {
                this.f19495a.m14344K0(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.m14346J0(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: z */
    public void mo13840z(int i, long j) {
        this.f19495a.m14342L0(i, j);
    }

    /* renamed from: P */
    public static C5180l m14221P(AbstractC5163k abstractC5163k) {
        C5180l c5180l = abstractC5163k.f19465a;
        if (c5180l != null) {
            return c5180l;
        }
        return new C5180l(abstractC5163k);
    }

    /* renamed from: Q */
    public final <V> void m14220Q(int i, boolean z, V v, C5182l0.C5183a<Boolean, V> c5183a) {
        this.f19495a.mo14273T0(i, 2);
        this.f19495a.mo14271V0(C5182l0.m14213b(c5183a, Boolean.valueOf(z), v));
        C5182l0.m14210e(this.f19495a, c5183a, Boolean.valueOf(z), v);
    }

    /* renamed from: T */
    public final <K, V> void m14217T(int i, C5182l0.C5183a<K, V> c5183a, Map<K, V> map) {
        switch (C5181a.f19496a[c5183a.f19500a.ordinal()]) {
            case 1:
                V v = map.get(Boolean.FALSE);
                if (v != null) {
                    m14220Q(i, false, v, c5183a);
                }
                V v2 = map.get(Boolean.TRUE);
                if (v2 != null) {
                    m14220Q(i, true, v2, c5183a);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                m14219R(i, c5183a, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                m14218S(i, c5183a, map);
                return;
            case 12:
                m14216U(i, c5183a, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + c5183a.f19500a);
        }
    }

    /* renamed from: V */
    public final void m14215V(int i, Object obj) {
        if (obj instanceof String) {
            this.f19495a.mo14275R0(i, (String) obj);
        } else {
            this.f19495a.mo14261l0(i, (AbstractC5137h) obj);
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: d */
    public final void mo13862d(int i, Object obj) {
        if (obj instanceof AbstractC5137h) {
            this.f19495a.mo14276I0(i, (AbstractC5137h) obj);
        } else {
            this.f19495a.mo14277H0(i, (InterfaceC5210s0) obj);
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: n */
    public void mo13852n(int i, List<String> list) {
        int i2 = 0;
        if (list instanceof InterfaceC5149h0) {
            InterfaceC5149h0 interfaceC5149h0 = (InterfaceC5149h0) list;
            while (i2 < list.size()) {
                m14215V(i, interfaceC5149h0.mo14094I0(i2));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f19495a.mo14275R0(i, list.get(i2));
            i2++;
        }
    }

    @Override // p144o7.InterfaceC5242v1
    /* renamed from: q */
    public <K, V> void mo13849q(int i, C5182l0.C5183a<K, V> c5183a, Map<K, V> map) {
        if (this.f19495a.m14318c0()) {
            m14217T(i, c5183a, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f19495a.mo14273T0(i, 2);
            this.f19495a.mo14271V0(C5182l0.m14213b(c5183a, entry.getKey(), entry.getValue()));
            C5182l0.m14210e(this.f19495a, c5183a, entry.getKey(), entry.getValue());
        }
    }

    public C5180l(AbstractC5163k abstractC5163k) {
        AbstractC5163k abstractC5163k2 = (AbstractC5163k) C5102a0.m14658b(abstractC5163k, "output");
        this.f19495a = abstractC5163k2;
        abstractC5163k2.f19465a = this;
    }

    /* renamed from: R */
    public final <V> void m14219R(int i, C5182l0.C5183a<Integer, V> c5183a, Map<Integer, V> map) {
        int size = map.size();
        int[] iArr = new int[size];
        int i2 = 0;
        for (Integer num : map.keySet()) {
            iArr[i2] = num.intValue();
            i2++;
        }
        Arrays.sort(iArr);
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = iArr[i3];
            V v = map.get(Integer.valueOf(i4));
            this.f19495a.mo14273T0(i, 2);
            this.f19495a.mo14271V0(C5182l0.m14213b(c5183a, Integer.valueOf(i4), v));
            C5182l0.m14210e(this.f19495a, c5183a, Integer.valueOf(i4), v);
        }
    }

    /* renamed from: S */
    public final <V> void m14218S(int i, C5182l0.C5183a<Long, V> c5183a, Map<Long, V> map) {
        int size = map.size();
        long[] jArr = new long[size];
        int i2 = 0;
        for (Long l : map.keySet()) {
            jArr[i2] = l.longValue();
            i2++;
        }
        Arrays.sort(jArr);
        for (int i3 = 0; i3 < size; i3++) {
            long j = jArr[i3];
            V v = map.get(Long.valueOf(j));
            this.f19495a.mo14273T0(i, 2);
            this.f19495a.mo14271V0(C5182l0.m14213b(c5183a, Long.valueOf(j), v));
            C5182l0.m14210e(this.f19495a, c5183a, Long.valueOf(j), v);
        }
    }

    /* renamed from: U */
    public final <V> void m14216U(int i, C5182l0.C5183a<String, V> c5183a, Map<String, V> map) {
        int size = map.size();
        String[] strArr = new String[size];
        int i2 = 0;
        for (String str : map.keySet()) {
            strArr[i2] = str;
            i2++;
        }
        Arrays.sort(strArr);
        for (int i3 = 0; i3 < size; i3++) {
            String str2 = strArr[i3];
            V v = map.get(str2);
            this.f19495a.mo14273T0(i, 2);
            this.f19495a.mo14271V0(C5182l0.m14213b(c5183a, str2, v));
            C5182l0.m14210e(this.f19495a, c5183a, str2, v);
        }
    }
}
