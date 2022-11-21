package p144o7;

import java.util.List;
import p144o7.C5230u1;
/* renamed from: o7.j */
/* loaded from: classes2.dex */
public final class C5159j implements InterfaceC5136g1 {

    /* renamed from: a */
    public final AbstractC5151i f19451a;

    /* renamed from: b */
    public int f19452b;

    /* renamed from: c */
    public int f19453c;

    /* renamed from: d */
    public int f19454d = 0;

    /* renamed from: o7.j$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C5160a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19455a;

        static {
            int[] iArr = new int[C5230u1.EnumC5232b.values().length];
            f19455a = iArr;
            try {
                iArr[C5230u1.EnumC5232b.f19588u.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19592y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19581d.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19575A.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19587t.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19586s.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19582k.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19585r.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19583p.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19591x.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19576B.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19577C.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19578D.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19579E.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19589v.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19593z.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f19455a[C5230u1.EnumC5232b.f19584q.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: B */
    public String mo14478B() {
        m14457W(2);
        return this.f19451a.mo14490x();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: D */
    public void mo14476D(List<String> list) {
        m14459U(list, false);
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: E */
    public void mo14475E(List<String> list) {
        m14459U(list, true);
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: F */
    public AbstractC5137h mo14474F() {
        m14457W(2);
        return this.f19451a.mo14502l();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: H */
    public int mo14472H() {
        m14457W(0);
        return this.f19451a.mo14496r();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: J */
    public int mo14470J() {
        m14457W(5);
        return this.f19451a.mo14494t();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: M */
    public long mo14467M() {
        m14457W(0);
        return this.f19451a.mo14495s();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: N */
    public String mo14466N() {
        m14457W(2);
        return this.f19451a.mo14489y();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: P */
    public <T> T mo14464P(InterfaceC5150h1<T> interfaceC5150h1, C5196p c5196p) {
        m14457W(2);
        return (T) m14460T(interfaceC5150h1, c5196p);
    }

    /* renamed from: X */
    public final void m14456X(int i) {
        if ((i & 3) != 0) {
            throw C5117c0.m14632g();
        }
    }

    /* renamed from: Y */
    public final void m14455Y(int i) {
        if ((i & 7) != 0) {
            throw C5117c0.m14632g();
        }
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: b */
    public long mo14453b() {
        m14457W(0);
        return this.f19451a.mo14523B();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: c */
    public long mo14452c() {
        m14457W(1);
        return this.f19451a.mo14498p();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: d */
    public <T> T mo14451d(Class<T> cls, C5196p c5196p) {
        m14457W(2);
        return (T) m14460T(C5122d1.m14624a().m14621d(cls), c5196p);
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: e */
    public <T> T mo14450e(Class<T> cls, C5196p c5196p) {
        m14457W(3);
        return (T) m14461S(C5122d1.m14624a().m14621d(cls), c5196p);
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: i */
    public int mo14446i() {
        m14457W(5);
        return this.f19451a.mo14499o();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: j */
    public boolean mo14445j() {
        m14457W(0);
        return this.f19451a.mo14503k();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: k */
    public long mo14444k() {
        m14457W(1);
        return this.f19451a.mo14493u();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: m */
    public int mo14442m() {
        m14457W(0);
        return this.f19451a.mo14524A();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: o */
    public <T> T mo14440o(InterfaceC5150h1<T> interfaceC5150h1, C5196p c5196p) {
        m14457W(3);
        return (T) m14461S(interfaceC5150h1, c5196p);
    }

    @Override // p144o7.InterfaceC5136g1
    public double readDouble() {
        m14457W(1);
        return this.f19451a.mo14501m();
    }

    @Override // p144o7.InterfaceC5136g1
    public float readFloat() {
        m14457W(5);
        return this.f19451a.mo14497q();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: u */
    public int mo14434u() {
        m14457W(0);
        return this.f19451a.mo14500n();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: v */
    public int mo14433v() {
        return this.f19452b;
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: x */
    public int mo14431x() {
        m14457W(0);
        return this.f19451a.mo14492v();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p144o7.InterfaceC5136g1
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <K, V> void mo14430y(java.util.Map<K, V> r8, p144o7.C5182l0.C5183a<K, V> r9, p144o7.C5196p r10) {
        /*
            r7 = this;
            r0 = 2
            r7.m14457W(r0)
            o7.i r1 = r7.f19451a
            int r1 = r1.mo14524A()
            o7.i r2 = r7.f19451a
            int r1 = r2.mo14504j(r1)
            K r2 = r9.f19501b
            V r3 = r9.f19503d
        L14:
            int r4 = r7.mo14477C()     // Catch: java.lang.Throwable -> L65
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5c
            o7.i r5 = r7.f19451a     // Catch: java.lang.Throwable -> L65
            boolean r5 = r5.mo14506e()     // Catch: java.lang.Throwable -> L65
            if (r5 == 0) goto L26
            goto L5c
        L26:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L47
            if (r4 == r0) goto L3a
            boolean r4 = r7.mo14471I()     // Catch: p144o7.C5117c0.C5118a -> L4f java.lang.Throwable -> L65
            if (r4 == 0) goto L34
            goto L14
        L34:
            o7.c0 r4 = new o7.c0     // Catch: p144o7.C5117c0.C5118a -> L4f java.lang.Throwable -> L65
            r4.<init>(r6)     // Catch: p144o7.C5117c0.C5118a -> L4f java.lang.Throwable -> L65
            throw r4     // Catch: p144o7.C5117c0.C5118a -> L4f java.lang.Throwable -> L65
        L3a:
            o7.u1$b r4 = r9.f19502c     // Catch: p144o7.C5117c0.C5118a -> L4f java.lang.Throwable -> L65
            V r5 = r9.f19503d     // Catch: p144o7.C5117c0.C5118a -> L4f java.lang.Throwable -> L65
            java.lang.Class r5 = r5.getClass()     // Catch: p144o7.C5117c0.C5118a -> L4f java.lang.Throwable -> L65
            java.lang.Object r3 = r7.m14462R(r4, r5, r10)     // Catch: p144o7.C5117c0.C5118a -> L4f java.lang.Throwable -> L65
            goto L14
        L47:
            o7.u1$b r4 = r9.f19500a     // Catch: p144o7.C5117c0.C5118a -> L4f java.lang.Throwable -> L65
            r5 = 0
            java.lang.Object r2 = r7.m14462R(r4, r5, r5)     // Catch: p144o7.C5117c0.C5118a -> L4f java.lang.Throwable -> L65
            goto L14
        L4f:
            boolean r4 = r7.mo14471I()     // Catch: java.lang.Throwable -> L65
            if (r4 == 0) goto L56
            goto L14
        L56:
            o7.c0 r8 = new o7.c0     // Catch: java.lang.Throwable -> L65
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L65
            throw r8     // Catch: java.lang.Throwable -> L65
        L5c:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L65
            o7.i r8 = r7.f19451a
            r8.mo14505i(r1)
            return
        L65:
            r8 = move-exception
            o7.i r9 = r7.f19451a
            r9.mo14505i(r1)
            goto L6d
        L6c:
            throw r8
        L6d:
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: p144o7.C5159j.mo14430y(java.util.Map, o7.l0$a, o7.p):void");
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: z */
    public long mo14429z() {
        m14457W(0);
        return this.f19451a.mo14491w();
    }

    /* renamed from: Q */
    public static C5159j m14463Q(AbstractC5151i abstractC5151i) {
        C5159j c5159j = abstractC5151i.f19437d;
        if (c5159j != null) {
            return c5159j;
        }
        return new C5159j(abstractC5151i);
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: A */
    public void mo14479A(List<Boolean> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5131f) {
            C5131f c5131f = (C5131f) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 0) {
                if (m13943b == 2) {
                    int mo14507d = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                    do {
                        c5131f.m14584k(this.f19451a.mo14503k());
                    } while (this.f19451a.mo14507d() < mo14507d);
                    m14458V(mo14507d);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                c5131f.m14584k(this.f19451a.mo14503k());
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z2 = this.f19451a.mo14488z();
            } while (mo14488z2 == this.f19452b);
            this.f19454d = mo14488z2;
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 0) {
            if (m13943b2 == 2) {
                int mo14507d2 = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                do {
                    list.add(Boolean.valueOf(this.f19451a.mo14503k()));
                } while (this.f19451a.mo14507d() < mo14507d2);
                m14458V(mo14507d2);
                return;
            }
            throw C5117c0.m14635d();
        }
        do {
            list.add(Boolean.valueOf(this.f19451a.mo14503k()));
            if (this.f19451a.mo14506e()) {
                return;
            }
            mo14488z = this.f19451a.mo14488z();
        } while (mo14488z == this.f19452b);
        this.f19454d = mo14488z;
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: C */
    public int mo14477C() {
        int i = this.f19454d;
        if (i != 0) {
            this.f19452b = i;
            this.f19454d = 0;
        } else {
            this.f19452b = this.f19451a.mo14488z();
        }
        int i2 = this.f19452b;
        if (i2 != 0 && i2 != this.f19453c) {
            return C5230u1.m13944a(i2);
        }
        return Integer.MAX_VALUE;
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: G */
    public void mo14473G(List<Float> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5244w) {
            C5244w c5244w = (C5244w) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 2) {
                if (m13943b == 5) {
                    do {
                        c5244w.m13837i(this.f19451a.mo14497q());
                        if (this.f19451a.mo14506e()) {
                            return;
                        }
                        mo14488z2 = this.f19451a.mo14488z();
                    } while (mo14488z2 == this.f19452b);
                    this.f19454d = mo14488z2;
                    return;
                }
                throw C5117c0.m14635d();
            }
            int mo14524A = this.f19451a.mo14524A();
            m14456X(mo14524A);
            int mo14507d = this.f19451a.mo14507d() + mo14524A;
            do {
                c5244w.m13837i(this.f19451a.mo14497q());
            } while (this.f19451a.mo14507d() < mo14507d);
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 2) {
            if (m13943b2 == 5) {
                do {
                    list.add(Float.valueOf(this.f19451a.mo14497q()));
                    if (this.f19451a.mo14506e()) {
                        return;
                    }
                    mo14488z = this.f19451a.mo14488z();
                } while (mo14488z == this.f19452b);
                this.f19454d = mo14488z;
                return;
            }
            throw C5117c0.m14635d();
        }
        int mo14524A2 = this.f19451a.mo14524A();
        m14456X(mo14524A2);
        int mo14507d2 = this.f19451a.mo14507d() + mo14524A2;
        do {
            list.add(Float.valueOf(this.f19451a.mo14497q()));
        } while (this.f19451a.mo14507d() < mo14507d2);
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: I */
    public boolean mo14471I() {
        int i;
        if (!this.f19451a.mo14506e() && (i = this.f19452b) != this.f19453c) {
            return this.f19451a.mo14522C(i);
        }
        return false;
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: K */
    public void mo14469K(List<AbstractC5137h> list) {
        int mo14488z;
        if (C5230u1.m13943b(this.f19452b) == 2) {
            do {
                list.add(mo14474F());
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z = this.f19451a.mo14488z();
            } while (mo14488z == this.f19452b);
            this.f19454d = mo14488z;
            return;
        }
        throw C5117c0.m14635d();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: L */
    public void mo14468L(List<Double> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5185m) {
            C5185m c5185m = (C5185m) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 1) {
                if (m13943b == 2) {
                    int mo14524A = this.f19451a.mo14524A();
                    m14455Y(mo14524A);
                    int mo14507d = this.f19451a.mo14507d() + mo14524A;
                    do {
                        c5185m.m14205i(this.f19451a.mo14501m());
                    } while (this.f19451a.mo14507d() < mo14507d);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                c5185m.m14205i(this.f19451a.mo14501m());
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z2 = this.f19451a.mo14488z();
            } while (mo14488z2 == this.f19452b);
            this.f19454d = mo14488z2;
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 1) {
            if (m13943b2 == 2) {
                int mo14524A2 = this.f19451a.mo14524A();
                m14455Y(mo14524A2);
                int mo14507d2 = this.f19451a.mo14507d() + mo14524A2;
                do {
                    list.add(Double.valueOf(this.f19451a.mo14501m()));
                } while (this.f19451a.mo14507d() < mo14507d2);
                return;
            }
            throw C5117c0.m14635d();
        }
        do {
            list.add(Double.valueOf(this.f19451a.mo14501m()));
            if (this.f19451a.mo14506e()) {
                return;
            }
            mo14488z = this.f19451a.mo14488z();
        } while (mo14488z == this.f19452b);
        this.f19454d = mo14488z;
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: O */
    public void mo14465O(List<Long> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5161j0) {
            C5161j0 c5161j0 = (C5161j0) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 1) {
                if (m13943b == 2) {
                    int mo14524A = this.f19451a.mo14524A();
                    m14455Y(mo14524A);
                    int mo14507d = this.f19451a.mo14507d() + mo14524A;
                    do {
                        c5161j0.m14425k(this.f19451a.mo14498p());
                    } while (this.f19451a.mo14507d() < mo14507d);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                c5161j0.m14425k(this.f19451a.mo14498p());
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z2 = this.f19451a.mo14488z();
            } while (mo14488z2 == this.f19452b);
            this.f19454d = mo14488z2;
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 1) {
            if (m13943b2 == 2) {
                int mo14524A2 = this.f19451a.mo14524A();
                m14455Y(mo14524A2);
                int mo14507d2 = this.f19451a.mo14507d() + mo14524A2;
                do {
                    list.add(Long.valueOf(this.f19451a.mo14498p()));
                } while (this.f19451a.mo14507d() < mo14507d2);
                return;
            }
            throw C5117c0.m14635d();
        }
        do {
            list.add(Long.valueOf(this.f19451a.mo14498p()));
            if (this.f19451a.mo14506e()) {
                return;
            }
            mo14488z = this.f19451a.mo14488z();
        } while (mo14488z == this.f19452b);
        this.f19454d = mo14488z;
    }

    /* renamed from: R */
    public final Object m14462R(C5230u1.EnumC5232b enumC5232b, Class<?> cls, C5196p c5196p) {
        switch (C5160a.f19455a[enumC5232b.ordinal()]) {
            case 1:
                return Boolean.valueOf(mo14445j());
            case 2:
                return mo14474F();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(mo14434u());
            case 5:
                return Integer.valueOf(mo14446i());
            case 6:
                return Long.valueOf(mo14452c());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(mo14472H());
            case 9:
                return Long.valueOf(mo14467M());
            case 10:
                return mo14451d(cls, c5196p);
            case 11:
                return Integer.valueOf(mo14470J());
            case 12:
                return Long.valueOf(mo14444k());
            case 13:
                return Integer.valueOf(mo14431x());
            case 14:
                return Long.valueOf(mo14429z());
            case 15:
                return mo14466N();
            case 16:
                return Integer.valueOf(mo14442m());
            case 17:
                return Long.valueOf(mo14453b());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* renamed from: S */
    public final <T> T m14461S(InterfaceC5150h1<T> interfaceC5150h1, C5196p c5196p) {
        int i = this.f19453c;
        this.f19453c = C5230u1.m13942c(C5230u1.m13944a(this.f19452b), 4);
        try {
            T newInstance = interfaceC5150h1.newInstance();
            interfaceC5150h1.mo13823e(newInstance, this, c5196p);
            interfaceC5150h1.mo13826b(newInstance);
            if (this.f19452b == this.f19453c) {
                return newInstance;
            }
            throw C5117c0.m14632g();
        } finally {
            this.f19453c = i;
        }
    }

    /* renamed from: T */
    public final <T> T m14460T(InterfaceC5150h1<T> interfaceC5150h1, C5196p c5196p) {
        AbstractC5151i abstractC5151i;
        int mo14524A = this.f19451a.mo14524A();
        AbstractC5151i abstractC5151i2 = this.f19451a;
        if (abstractC5151i2.f19434a < abstractC5151i2.f19435b) {
            int mo14504j = abstractC5151i2.mo14504j(mo14524A);
            T newInstance = interfaceC5150h1.newInstance();
            this.f19451a.f19434a++;
            interfaceC5150h1.mo13823e(newInstance, this, c5196p);
            interfaceC5150h1.mo13826b(newInstance);
            this.f19451a.mo14508a(0);
            abstractC5151i.f19434a--;
            this.f19451a.mo14505i(mo14504j);
            return newInstance;
        }
        throw C5117c0.m14631h();
    }

    /* renamed from: U */
    public void m14459U(List<String> list, boolean z) {
        String mo14478B;
        int mo14488z;
        int mo14488z2;
        if (C5230u1.m13943b(this.f19452b) == 2) {
            if ((list instanceof InterfaceC5149h0) && !z) {
                InterfaceC5149h0 interfaceC5149h0 = (InterfaceC5149h0) list;
                do {
                    interfaceC5149h0.mo14093X(mo14474F());
                    if (this.f19451a.mo14506e()) {
                        return;
                    }
                    mo14488z2 = this.f19451a.mo14488z();
                } while (mo14488z2 == this.f19452b);
                this.f19454d = mo14488z2;
                return;
            }
            do {
                if (z) {
                    mo14478B = mo14466N();
                } else {
                    mo14478B = mo14478B();
                }
                list.add(mo14478B);
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z = this.f19451a.mo14488z();
            } while (mo14488z == this.f19452b);
            this.f19454d = mo14488z;
            return;
        }
        throw C5117c0.m14635d();
    }

    /* renamed from: V */
    public final void m14458V(int i) {
        if (this.f19451a.mo14507d() == i) {
            return;
        }
        throw C5117c0.m14629j();
    }

    /* renamed from: W */
    public final void m14457W(int i) {
        if (C5230u1.m13943b(this.f19452b) == i) {
            return;
        }
        throw C5117c0.m14635d();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: a */
    public void mo14454a(List<Integer> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5256z) {
            C5256z c5256z = (C5256z) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 0) {
                if (m13943b == 2) {
                    int mo14507d = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                    do {
                        c5256z.mo13759P(this.f19451a.mo14492v());
                    } while (this.f19451a.mo14507d() < mo14507d);
                    m14458V(mo14507d);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                c5256z.mo13759P(this.f19451a.mo14492v());
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z2 = this.f19451a.mo14488z();
            } while (mo14488z2 == this.f19452b);
            this.f19454d = mo14488z2;
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 0) {
            if (m13943b2 == 2) {
                int mo14507d2 = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                do {
                    list.add(Integer.valueOf(this.f19451a.mo14492v()));
                } while (this.f19451a.mo14507d() < mo14507d2);
                m14458V(mo14507d2);
                return;
            }
            throw C5117c0.m14635d();
        }
        do {
            list.add(Integer.valueOf(this.f19451a.mo14492v()));
            if (this.f19451a.mo14506e()) {
                return;
            }
            mo14488z = this.f19451a.mo14488z();
        } while (mo14488z == this.f19452b);
        this.f19454d = mo14488z;
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: f */
    public void mo14449f(List<Integer> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5256z) {
            C5256z c5256z = (C5256z) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 2) {
                if (m13943b == 5) {
                    do {
                        c5256z.mo13759P(this.f19451a.mo14494t());
                        if (this.f19451a.mo14506e()) {
                            return;
                        }
                        mo14488z2 = this.f19451a.mo14488z();
                    } while (mo14488z2 == this.f19452b);
                    this.f19454d = mo14488z2;
                    return;
                }
                throw C5117c0.m14635d();
            }
            int mo14524A = this.f19451a.mo14524A();
            m14456X(mo14524A);
            int mo14507d = this.f19451a.mo14507d() + mo14524A;
            do {
                c5256z.mo13759P(this.f19451a.mo14494t());
            } while (this.f19451a.mo14507d() < mo14507d);
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 2) {
            if (m13943b2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f19451a.mo14494t()));
                    if (this.f19451a.mo14506e()) {
                        return;
                    }
                    mo14488z = this.f19451a.mo14488z();
                } while (mo14488z == this.f19452b);
                this.f19454d = mo14488z;
                return;
            }
            throw C5117c0.m14635d();
        }
        int mo14524A2 = this.f19451a.mo14524A();
        m14456X(mo14524A2);
        int mo14507d2 = this.f19451a.mo14507d() + mo14524A2;
        do {
            list.add(Integer.valueOf(this.f19451a.mo14494t()));
        } while (this.f19451a.mo14507d() < mo14507d2);
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: g */
    public void mo14448g(List<Long> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5161j0) {
            C5161j0 c5161j0 = (C5161j0) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 0) {
                if (m13943b == 2) {
                    int mo14507d = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                    do {
                        c5161j0.m14425k(this.f19451a.mo14491w());
                    } while (this.f19451a.mo14507d() < mo14507d);
                    m14458V(mo14507d);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                c5161j0.m14425k(this.f19451a.mo14491w());
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z2 = this.f19451a.mo14488z();
            } while (mo14488z2 == this.f19452b);
            this.f19454d = mo14488z2;
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 0) {
            if (m13943b2 == 2) {
                int mo14507d2 = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                do {
                    list.add(Long.valueOf(this.f19451a.mo14491w()));
                } while (this.f19451a.mo14507d() < mo14507d2);
                m14458V(mo14507d2);
                return;
            }
            throw C5117c0.m14635d();
        }
        do {
            list.add(Long.valueOf(this.f19451a.mo14491w()));
            if (this.f19451a.mo14506e()) {
                return;
            }
            mo14488z = this.f19451a.mo14488z();
        } while (mo14488z == this.f19452b);
        this.f19454d = mo14488z;
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: h */
    public void mo14447h(List<Integer> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5256z) {
            C5256z c5256z = (C5256z) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 0) {
                if (m13943b == 2) {
                    int mo14507d = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                    do {
                        c5256z.mo13759P(this.f19451a.mo14524A());
                    } while (this.f19451a.mo14507d() < mo14507d);
                    m14458V(mo14507d);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                c5256z.mo13759P(this.f19451a.mo14524A());
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z2 = this.f19451a.mo14488z();
            } while (mo14488z2 == this.f19452b);
            this.f19454d = mo14488z2;
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 0) {
            if (m13943b2 == 2) {
                int mo14507d2 = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                do {
                    list.add(Integer.valueOf(this.f19451a.mo14524A()));
                } while (this.f19451a.mo14507d() < mo14507d2);
                m14458V(mo14507d2);
                return;
            }
            throw C5117c0.m14635d();
        }
        do {
            list.add(Integer.valueOf(this.f19451a.mo14524A()));
            if (this.f19451a.mo14506e()) {
                return;
            }
            mo14488z = this.f19451a.mo14488z();
        } while (mo14488z == this.f19452b);
        this.f19454d = mo14488z;
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: l */
    public void mo14443l(List<Long> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5161j0) {
            C5161j0 c5161j0 = (C5161j0) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 0) {
                if (m13943b == 2) {
                    int mo14507d = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                    do {
                        c5161j0.m14425k(this.f19451a.mo14523B());
                    } while (this.f19451a.mo14507d() < mo14507d);
                    m14458V(mo14507d);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                c5161j0.m14425k(this.f19451a.mo14523B());
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z2 = this.f19451a.mo14488z();
            } while (mo14488z2 == this.f19452b);
            this.f19454d = mo14488z2;
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 0) {
            if (m13943b2 == 2) {
                int mo14507d2 = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                do {
                    list.add(Long.valueOf(this.f19451a.mo14523B()));
                } while (this.f19451a.mo14507d() < mo14507d2);
                m14458V(mo14507d2);
                return;
            }
            throw C5117c0.m14635d();
        }
        do {
            list.add(Long.valueOf(this.f19451a.mo14523B()));
            if (this.f19451a.mo14506e()) {
                return;
            }
            mo14488z = this.f19451a.mo14488z();
        } while (mo14488z == this.f19452b);
        this.f19454d = mo14488z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p144o7.InterfaceC5136g1
    /* renamed from: n */
    public <T> void mo14441n(List<T> list, InterfaceC5150h1<T> interfaceC5150h1, C5196p c5196p) {
        int mo14488z;
        if (C5230u1.m13943b(this.f19452b) == 3) {
            int i = this.f19452b;
            do {
                list.add(m14461S(interfaceC5150h1, c5196p));
                if (!this.f19451a.mo14506e() && this.f19454d == 0) {
                    mo14488z = this.f19451a.mo14488z();
                } else {
                    return;
                }
            } while (mo14488z == i);
            this.f19454d = mo14488z;
            return;
        }
        throw C5117c0.m14635d();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: p */
    public void mo14439p(List<Long> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5161j0) {
            C5161j0 c5161j0 = (C5161j0) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 0) {
                if (m13943b == 2) {
                    int mo14507d = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                    do {
                        c5161j0.m14425k(this.f19451a.mo14495s());
                    } while (this.f19451a.mo14507d() < mo14507d);
                    m14458V(mo14507d);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                c5161j0.m14425k(this.f19451a.mo14495s());
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z2 = this.f19451a.mo14488z();
            } while (mo14488z2 == this.f19452b);
            this.f19454d = mo14488z2;
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 0) {
            if (m13943b2 == 2) {
                int mo14507d2 = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                do {
                    list.add(Long.valueOf(this.f19451a.mo14495s()));
                } while (this.f19451a.mo14507d() < mo14507d2);
                m14458V(mo14507d2);
                return;
            }
            throw C5117c0.m14635d();
        }
        do {
            list.add(Long.valueOf(this.f19451a.mo14495s()));
            if (this.f19451a.mo14506e()) {
                return;
            }
            mo14488z = this.f19451a.mo14488z();
        } while (mo14488z == this.f19452b);
        this.f19454d = mo14488z;
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: q */
    public void mo14438q(List<Long> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5161j0) {
            C5161j0 c5161j0 = (C5161j0) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 1) {
                if (m13943b == 2) {
                    int mo14524A = this.f19451a.mo14524A();
                    m14455Y(mo14524A);
                    int mo14507d = this.f19451a.mo14507d() + mo14524A;
                    do {
                        c5161j0.m14425k(this.f19451a.mo14493u());
                    } while (this.f19451a.mo14507d() < mo14507d);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                c5161j0.m14425k(this.f19451a.mo14493u());
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z2 = this.f19451a.mo14488z();
            } while (mo14488z2 == this.f19452b);
            this.f19454d = mo14488z2;
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 1) {
            if (m13943b2 == 2) {
                int mo14524A2 = this.f19451a.mo14524A();
                m14455Y(mo14524A2);
                int mo14507d2 = this.f19451a.mo14507d() + mo14524A2;
                do {
                    list.add(Long.valueOf(this.f19451a.mo14493u()));
                } while (this.f19451a.mo14507d() < mo14507d2);
                return;
            }
            throw C5117c0.m14635d();
        }
        do {
            list.add(Long.valueOf(this.f19451a.mo14493u()));
            if (this.f19451a.mo14506e()) {
                return;
            }
            mo14488z = this.f19451a.mo14488z();
        } while (mo14488z == this.f19452b);
        this.f19454d = mo14488z;
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: r */
    public void mo14437r(List<Integer> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5256z) {
            C5256z c5256z = (C5256z) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 0) {
                if (m13943b == 2) {
                    int mo14507d = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                    do {
                        c5256z.mo13759P(this.f19451a.mo14496r());
                    } while (this.f19451a.mo14507d() < mo14507d);
                    m14458V(mo14507d);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                c5256z.mo13759P(this.f19451a.mo14496r());
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z2 = this.f19451a.mo14488z();
            } while (mo14488z2 == this.f19452b);
            this.f19454d = mo14488z2;
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 0) {
            if (m13943b2 == 2) {
                int mo14507d2 = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                do {
                    list.add(Integer.valueOf(this.f19451a.mo14496r()));
                } while (this.f19451a.mo14507d() < mo14507d2);
                m14458V(mo14507d2);
                return;
            }
            throw C5117c0.m14635d();
        }
        do {
            list.add(Integer.valueOf(this.f19451a.mo14496r()));
            if (this.f19451a.mo14506e()) {
                return;
            }
            mo14488z = this.f19451a.mo14488z();
        } while (mo14488z == this.f19452b);
        this.f19454d = mo14488z;
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: s */
    public void mo14436s(List<Integer> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5256z) {
            C5256z c5256z = (C5256z) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 0) {
                if (m13943b == 2) {
                    int mo14507d = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                    do {
                        c5256z.mo13759P(this.f19451a.mo14500n());
                    } while (this.f19451a.mo14507d() < mo14507d);
                    m14458V(mo14507d);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                c5256z.mo13759P(this.f19451a.mo14500n());
                if (this.f19451a.mo14506e()) {
                    return;
                }
                mo14488z2 = this.f19451a.mo14488z();
            } while (mo14488z2 == this.f19452b);
            this.f19454d = mo14488z2;
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 0) {
            if (m13943b2 == 2) {
                int mo14507d2 = this.f19451a.mo14507d() + this.f19451a.mo14524A();
                do {
                    list.add(Integer.valueOf(this.f19451a.mo14500n()));
                } while (this.f19451a.mo14507d() < mo14507d2);
                m14458V(mo14507d2);
                return;
            }
            throw C5117c0.m14635d();
        }
        do {
            list.add(Integer.valueOf(this.f19451a.mo14500n()));
            if (this.f19451a.mo14506e()) {
                return;
            }
            mo14488z = this.f19451a.mo14488z();
        } while (mo14488z == this.f19452b);
        this.f19454d = mo14488z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p144o7.InterfaceC5136g1
    /* renamed from: t */
    public <T> void mo14435t(List<T> list, InterfaceC5150h1<T> interfaceC5150h1, C5196p c5196p) {
        int mo14488z;
        if (C5230u1.m13943b(this.f19452b) == 2) {
            int i = this.f19452b;
            do {
                list.add(m14460T(interfaceC5150h1, c5196p));
                if (!this.f19451a.mo14506e() && this.f19454d == 0) {
                    mo14488z = this.f19451a.mo14488z();
                } else {
                    return;
                }
            } while (mo14488z == i);
            this.f19454d = mo14488z;
            return;
        }
        throw C5117c0.m14635d();
    }

    @Override // p144o7.InterfaceC5136g1
    /* renamed from: w */
    public void mo14432w(List<Integer> list) {
        int mo14488z;
        int mo14488z2;
        if (list instanceof C5256z) {
            C5256z c5256z = (C5256z) list;
            int m13943b = C5230u1.m13943b(this.f19452b);
            if (m13943b != 2) {
                if (m13943b == 5) {
                    do {
                        c5256z.mo13759P(this.f19451a.mo14499o());
                        if (this.f19451a.mo14506e()) {
                            return;
                        }
                        mo14488z2 = this.f19451a.mo14488z();
                    } while (mo14488z2 == this.f19452b);
                    this.f19454d = mo14488z2;
                    return;
                }
                throw C5117c0.m14635d();
            }
            int mo14524A = this.f19451a.mo14524A();
            m14456X(mo14524A);
            int mo14507d = this.f19451a.mo14507d() + mo14524A;
            do {
                c5256z.mo13759P(this.f19451a.mo14499o());
            } while (this.f19451a.mo14507d() < mo14507d);
            return;
        }
        int m13943b2 = C5230u1.m13943b(this.f19452b);
        if (m13943b2 != 2) {
            if (m13943b2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f19451a.mo14499o()));
                    if (this.f19451a.mo14506e()) {
                        return;
                    }
                    mo14488z = this.f19451a.mo14488z();
                } while (mo14488z == this.f19452b);
                this.f19454d = mo14488z;
                return;
            }
            throw C5117c0.m14635d();
        }
        int mo14524A2 = this.f19451a.mo14524A();
        m14456X(mo14524A2);
        int mo14507d2 = this.f19451a.mo14507d() + mo14524A2;
        do {
            list.add(Integer.valueOf(this.f19451a.mo14499o()));
        } while (this.f19451a.mo14507d() < mo14507d2);
    }

    public C5159j(AbstractC5151i abstractC5151i) {
        AbstractC5151i abstractC5151i2 = (AbstractC5151i) C5102a0.m14658b(abstractC5151i, "input");
        this.f19451a = abstractC5151i2;
        abstractC5151i2.f19437d = this;
    }
}
