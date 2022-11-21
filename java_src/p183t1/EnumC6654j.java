package p183t1;

import java.util.Arrays;
import p015b2.C0438g;
import p102k1.C4420g;
import p174s1.C6574c;
import p174s1.EnumC6573b;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: t1.j */
/* loaded from: classes.dex */
public abstract class EnumC6654j {

    /* renamed from: A */
    public static final EnumC6654j f35260A;

    /* renamed from: B */
    public static final EnumC6654j f35261B;

    /* renamed from: C */
    public static final EnumC6654j f35262C;

    /* renamed from: D */
    public static final EnumC6654j f35263D;

    /* renamed from: E */
    public static final EnumC6654j f35264E;

    /* renamed from: F */
    public static final EnumC6654j f35265F;

    /* renamed from: G */
    public static final EnumC6654j f35266G;

    /* renamed from: H */
    public static final EnumC6654j f35267H;

    /* renamed from: I */
    public static final EnumC6654j f35268I;

    /* renamed from: J */
    public static final EnumC6654j f35269J;

    /* renamed from: K */
    public static final EnumC6654j f35270K;

    /* renamed from: L */
    public static final EnumC6654j f35271L;

    /* renamed from: M */
    public static final EnumC6654j f35272M;

    /* renamed from: N */
    public static final EnumC6654j f35273N;

    /* renamed from: O */
    public static final EnumC6654j f35274O;

    /* renamed from: P */
    public static final EnumC6654j f35275P;

    /* renamed from: Q */
    public static final EnumC6654j f35276Q;

    /* renamed from: R */
    public static final EnumC6654j f35277R;

    /* renamed from: S */
    public static final EnumC6654j f35278S;

    /* renamed from: T */
    public static final EnumC6654j f35279T;

    /* renamed from: U */
    public static final EnumC6654j f35280U;

    /* renamed from: V */
    public static final /* synthetic */ EnumC6654j[] f35281V;

    /* renamed from: a */
    public static final EnumC6654j f35282a;

    /* renamed from: b */
    public static final EnumC6654j f35283b;

    /* renamed from: d */
    public static final EnumC6654j f35284d;

    /* renamed from: k */
    public static final EnumC6654j f35285k;

    /* renamed from: p */
    public static final EnumC6654j f35286p;

    /* renamed from: q */
    public static final EnumC6654j f35287q;

    /* renamed from: r */
    public static final EnumC6654j f35288r;

    /* renamed from: s */
    public static final EnumC6654j f35289s;

    /* renamed from: t */
    public static final EnumC6654j f35290t;

    /* renamed from: u */
    public static final EnumC6654j f35291u;

    /* renamed from: v */
    public static final EnumC6654j f35292v;

    /* renamed from: w */
    public static final EnumC6654j f35293w;

    /* renamed from: x */
    public static final EnumC6654j f35294x;

    /* renamed from: y */
    public static final EnumC6654j f35295y;

    /* renamed from: z */
    public static final EnumC6654j f35296z;

    /* renamed from: t1.j$k */
    /* loaded from: classes.dex */
    public enum C6675k extends EnumC6654j {
        public C6675k(String str, int i) {
            super(str, i, null);
        }

        @Override // p183t1.EnumC6654j
        /* renamed from: O */
        public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
            return new C6701u(this, i, 0, null, 0, 0L);
        }

        @Override // p183t1.EnumC6654j
        /* renamed from: R */
        public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
            interfaceC6649e.mo3624i(abstractC6650f.m3687v());
        }
    }

    public EnumC6654j(String str, int i) {
    }

    /* renamed from: J */
    public static short m3673J(int i) {
        if (((-65536) & i) == 0) {
            return (short) i;
        }
        throw new IllegalArgumentException("bogus unsigned code unit");
    }

    /* renamed from: K */
    public static int m3672K(int i) {
        return i & 255;
    }

    /* renamed from: L */
    public static int m3671L(int i) {
        return (i >> 8) & 255;
    }

    /* renamed from: V */
    public static int m3663V(int i) {
        return i & 15;
    }

    /* renamed from: W */
    public static int m3662W(int i) {
        return (i >> 4) & 15;
    }

    /* renamed from: X */
    public static int m3661X(int i) {
        return (i >> 8) & 15;
    }

    /* renamed from: Y */
    public static int m3660Y(int i) {
        return (i >> 12) & 15;
    }

    /* renamed from: Z */
    public static short m3659Z(int i) {
        return (short) i;
    }

    /* renamed from: a0 */
    public static short m3658a0(long j) {
        return (short) j;
    }

    /* renamed from: b0 */
    public static short m3657b0(int i) {
        return (short) (i >> 16);
    }

    /* renamed from: c0 */
    public static short m3655c0(long j) {
        return (short) (j >> 16);
    }

    /* renamed from: d0 */
    public static short m3653d0(long j) {
        return (short) (j >> 32);
    }

    /* renamed from: e0 */
    public static short m3652e0(long j) {
        return (short) (j >> 48);
    }

    public static EnumC6654j valueOf(String str) {
        return (EnumC6654j) Enum.valueOf(EnumC6654j.class, str);
    }

    public static EnumC6654j[] values() {
        return (EnumC6654j[]) f35281V.clone();
    }

    /* renamed from: O */
    public abstract AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d);

    /* renamed from: R */
    public abstract void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e);

    static {
        C6675k c6675k = new C6675k("FORMAT_00X", 0);
        f35282a = c6675k;
        EnumC6654j enumC6654j = new EnumC6654j("FORMAT_10X", 1) { // from class: t1.j.v
            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3624i(abstractC6650f.m3687v());
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6701u(this, EnumC6654j.m3672K(i), 0, null, 0, EnumC6654j.m3671L(i));
            }
        };
        f35283b = enumC6654j;
        EnumC6654j enumC6654j2 = new EnumC6654j("FORMAT_12X", 2) { // from class: t1.j.d0
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6700t(this, EnumC6654j.m3672K(i), 0, null, 0, 0L, EnumC6654j.m3661X(i), EnumC6654j.m3660Y(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3624i(EnumC6654j.m3670M(abstractC6650f.m3687v(), EnumC6654j.m3664U(abstractC6650f.mo3617d(), abstractC6650f.mo3616f())));
            }
        };
        f35284d = enumC6654j2;
        EnumC6654j enumC6654j3 = new EnumC6654j("FORMAT_11N", 3) { // from class: t1.j.e0
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6693m(this, EnumC6654j.m3672K(i), 0, null, 0, (EnumC6654j.m3660Y(i) << 28) >> 28, EnumC6654j.m3661X(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3624i(EnumC6654j.m3670M(abstractC6650f.m3687v(), EnumC6654j.m3664U(abstractC6650f.mo3617d(), abstractC6650f.m3690s())));
            }
        };
        f35285k = enumC6654j3;
        EnumC6654j enumC6654j4 = new EnumC6654j("FORMAT_11X", 4) { // from class: t1.j.f0
            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3624i(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3617d()));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6693m(this, EnumC6654j.m3672K(i), 0, null, 0, 0L, EnumC6654j.m3671L(i));
            }
        };
        f35286p = enumC6654j4;
        EnumC6654j enumC6654j5 = new EnumC6654j("FORMAT_10T", 5) { // from class: t1.j.g0
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6701u(this, EnumC6654j.m3672K(i), 0, null, (interfaceC6648d.mo3706k() - 1) + ((byte) EnumC6654j.m3671L(i)), 0L);
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3624i(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.m3705A(interfaceC6649e.mo3706k())));
            }
        };
        f35287q = enumC6654j5;
        EnumC6654j enumC6654j6 = new EnumC6654j("FORMAT_20T", 6) { // from class: t1.j.h0
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6701u(this, EnumC6654j.m3672K(i), 0, null, (interfaceC6648d.mo3706k() - 1) + ((short) interfaceC6648d.read()), EnumC6654j.m3671L(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3627e(abstractC6650f.m3687v(), abstractC6650f.m3704B(interfaceC6649e.mo3706k()));
            }
        };
        f35288r = enumC6654j6;
        EnumC6654j enumC6654j7 = new EnumC6654j("FORMAT_20BC", 7) { // from class: t1.j.i0
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6701u(this, EnumC6654j.m3672K(i), interfaceC6648d.read(), EnumC6573b.VARIES, 0, EnumC6654j.m3671L(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3627e(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.m3692q()), abstractC6650f.m3694o());
            }
        };
        f35289s = enumC6654j7;
        EnumC6654j enumC6654j8 = new EnumC6654j("FORMAT_22X", 8) { // from class: t1.j.j0
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6700t(this, EnumC6654j.m3672K(i), 0, null, 0, 0L, EnumC6654j.m3671L(i), interfaceC6648d.read());
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3627e(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3617d()), abstractC6650f.m3699g());
            }
        };
        f35290t = enumC6654j8;
        EnumC6654j enumC6654j9 = new EnumC6654j("FORMAT_21T", 9) { // from class: t1.j.a
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6693m(this, EnumC6654j.m3672K(i), 0, null, (interfaceC6648d.mo3706k() - 1) + ((short) interfaceC6648d.read()), 0L, EnumC6654j.m3671L(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3627e(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3617d()), abstractC6650f.m3704B(interfaceC6649e.mo3706k()));
            }
        };
        f35291u = enumC6654j9;
        EnumC6654j enumC6654j10 = new EnumC6654j("FORMAT_21S", 10) { // from class: t1.j.b
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6693m(this, EnumC6654j.m3672K(i), 0, null, 0, (short) interfaceC6648d.read(), EnumC6654j.m3671L(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3627e(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3617d()), abstractC6650f.m3689t());
            }
        };
        f35292v = enumC6654j10;
        EnumC6654j enumC6654j11 = new EnumC6654j("FORMAT_21H", 11) { // from class: t1.j.c
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                char c;
                int m3672K = EnumC6654j.m3672K(i);
                int m3671L = EnumC6654j.m3671L(i);
                long read = (short) interfaceC6648d.read();
                if (m3672K == 21) {
                    c = 16;
                } else {
                    c = '0';
                }
                return new C6693m(this, m3672K, 0, null, 0, read << c, m3671L);
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                char c;
                int m3688u = abstractC6650f.m3688u();
                if (m3688u == 21) {
                    c = 16;
                } else {
                    c = '0';
                }
                interfaceC6649e.mo3627e(EnumC6654j.m3670M(m3688u, abstractC6650f.mo3617d()), (short) (abstractC6650f.m3693p() >> c));
            }
        };
        f35293w = enumC6654j11;
        EnumC6654j enumC6654j12 = new EnumC6654j("FORMAT_21C", 12) { // from class: t1.j.d
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                int m3672K = EnumC6654j.m3672K(i);
                return new C6693m(this, m3672K, interfaceC6648d.read(), C6574c.m3891c(m3672K), 0, 0L, EnumC6654j.m3671L(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3627e(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3617d()), abstractC6650f.m3694o());
            }
        };
        f35294x = enumC6654j12;
        EnumC6654j enumC6654j13 = new EnumC6654j("FORMAT_23X", 13) { // from class: t1.j.e
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                int m3672K = EnumC6654j.m3672K(i);
                int m3671L = EnumC6654j.m3671L(i);
                int read = interfaceC6648d.read();
                return new C6699s(this, m3672K, 0, null, 0, 0L, m3671L, EnumC6654j.m3672K(read), EnumC6654j.m3671L(read));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3627e(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3617d()), EnumC6654j.m3670M(abstractC6650f.mo3616f(), abstractC6650f.mo3618h()));
            }
        };
        f35295y = enumC6654j13;
        EnumC6654j enumC6654j14 = new EnumC6654j("FORMAT_22B", 14) { // from class: t1.j.f
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                int m3672K = EnumC6654j.m3672K(i);
                int m3671L = EnumC6654j.m3671L(i);
                int read = interfaceC6648d.read();
                return new C6700t(this, m3672K, 0, null, 0, (byte) EnumC6654j.m3671L(read), m3671L, EnumC6654j.m3672K(read));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3627e(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3617d()), EnumC6654j.m3670M(abstractC6650f.mo3616f(), abstractC6650f.m3692q()));
            }
        };
        f35296z = enumC6654j14;
        EnumC6654j enumC6654j15 = new EnumC6654j("FORMAT_22T", 15) { // from class: t1.j.g
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6700t(this, EnumC6654j.m3672K(i), 0, null, (interfaceC6648d.mo3706k() - 1) + ((short) interfaceC6648d.read()), 0L, EnumC6654j.m3661X(i), EnumC6654j.m3660Y(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3627e(EnumC6654j.m3670M(abstractC6650f.m3688u(), EnumC6654j.m3664U(abstractC6650f.mo3617d(), abstractC6650f.mo3616f())), abstractC6650f.m3704B(interfaceC6649e.mo3706k()));
            }
        };
        f35260A = enumC6654j15;
        EnumC6654j enumC6654j16 = new EnumC6654j("FORMAT_22S", 16) { // from class: t1.j.h
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6700t(this, EnumC6654j.m3672K(i), 0, null, 0, (short) interfaceC6648d.read(), EnumC6654j.m3661X(i), EnumC6654j.m3660Y(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3627e(EnumC6654j.m3670M(abstractC6650f.m3688u(), EnumC6654j.m3664U(abstractC6650f.mo3617d(), abstractC6650f.mo3616f())), abstractC6650f.m3689t());
            }
        };
        f35261B = enumC6654j16;
        EnumC6654j enumC6654j17 = new EnumC6654j("FORMAT_22C", 17) { // from class: t1.j.i
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                int m3672K = EnumC6654j.m3672K(i);
                return new C6700t(this, m3672K, interfaceC6648d.read(), C6574c.m3891c(m3672K), 0, 0L, EnumC6654j.m3661X(i), EnumC6654j.m3660Y(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3627e(EnumC6654j.m3670M(abstractC6650f.m3688u(), EnumC6654j.m3664U(abstractC6650f.mo3617d(), abstractC6650f.mo3616f())), abstractC6650f.m3694o());
            }
        };
        f35262C = enumC6654j17;
        EnumC6654j enumC6654j18 = new EnumC6654j("FORMAT_22CS", 18) { // from class: t1.j.j
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6700t(this, EnumC6654j.m3672K(i), interfaceC6648d.read(), EnumC6573b.FIELD_OFFSET, 0, 0L, EnumC6654j.m3661X(i), EnumC6654j.m3660Y(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3627e(EnumC6654j.m3670M(abstractC6650f.m3688u(), EnumC6654j.m3664U(abstractC6650f.mo3617d(), abstractC6650f.mo3616f())), abstractC6650f.m3694o());
            }
        };
        f35263D = enumC6654j18;
        EnumC6654j enumC6654j19 = new EnumC6654j("FORMAT_30T", 19) { // from class: t1.j.l
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6701u(this, EnumC6654j.m3672K(i), 0, null, (interfaceC6648d.mo3706k() - 1) + interfaceC6648d.readInt(), EnumC6654j.m3671L(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                int m3685z = abstractC6650f.m3685z(interfaceC6649e.mo3706k());
                interfaceC6649e.mo3626f(abstractC6650f.m3687v(), EnumC6654j.m3659Z(m3685z), EnumC6654j.m3657b0(m3685z));
            }
        };
        f35264E = enumC6654j19;
        EnumC6654j enumC6654j20 = new EnumC6654j("FORMAT_32X", 20) { // from class: t1.j.m
            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3626f(abstractC6650f.m3687v(), abstractC6650f.m3700e(), abstractC6650f.m3699g());
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6700t(this, EnumC6654j.m3672K(i), 0, null, 0, EnumC6654j.m3671L(i), interfaceC6648d.read(), interfaceC6648d.read());
            }
        };
        f35265F = enumC6654j20;
        EnumC6654j enumC6654j21 = new EnumC6654j("FORMAT_31I", 21) { // from class: t1.j.n
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6693m(this, EnumC6654j.m3672K(i), 0, null, 0, interfaceC6648d.readInt(), EnumC6654j.m3671L(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                int m3691r = abstractC6650f.m3691r();
                interfaceC6649e.mo3626f(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3617d()), EnumC6654j.m3659Z(m3691r), EnumC6654j.m3657b0(m3691r));
            }
        };
        f35266G = enumC6654j21;
        EnumC6654j enumC6654j22 = new EnumC6654j("FORMAT_31T", 22) { // from class: t1.j.o
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                int mo3706k = interfaceC6648d.mo3706k() - 1;
                int m3672K = EnumC6654j.m3672K(i);
                int m3671L = EnumC6654j.m3671L(i);
                int readInt = mo3706k + interfaceC6648d.readInt();
                if (m3672K == 43 || m3672K == 44) {
                    interfaceC6648d.mo3707g(readInt, mo3706k);
                }
                return new C6693m(this, m3672K, 0, null, readInt, 0L, m3671L);
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                int m3685z = abstractC6650f.m3685z(interfaceC6649e.mo3706k());
                interfaceC6649e.mo3626f(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3617d()), EnumC6654j.m3659Z(m3685z), EnumC6654j.m3657b0(m3685z));
            }
        };
        f35267H = enumC6654j22;
        EnumC6654j enumC6654j23 = new EnumC6654j("FORMAT_31C", 23) { // from class: t1.j.p
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                int m3672K = EnumC6654j.m3672K(i);
                return new C6693m(this, m3672K, interfaceC6648d.readInt(), C6574c.m3891c(m3672K), 0, 0L, EnumC6654j.m3671L(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                int m3696m = abstractC6650f.m3696m();
                interfaceC6649e.mo3626f(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3617d()), EnumC6654j.m3659Z(m3696m), EnumC6654j.m3657b0(m3696m));
            }
        };
        f35268I = enumC6654j23;
        EnumC6654j enumC6654j24 = new EnumC6654j("FORMAT_35C", 24) { // from class: t1.j.q
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return EnumC6654j.m3668P(this, i, interfaceC6648d);
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                EnumC6654j.m3666S(abstractC6650f, interfaceC6649e);
            }
        };
        f35269J = enumC6654j24;
        EnumC6654j enumC6654j25 = new EnumC6654j("FORMAT_35MS", 25) { // from class: t1.j.r
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return EnumC6654j.m3668P(this, i, interfaceC6648d);
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                EnumC6654j.m3666S(abstractC6650f, interfaceC6649e);
            }
        };
        f35270K = enumC6654j25;
        EnumC6654j enumC6654j26 = new EnumC6654j("FORMAT_35MI", 26) { // from class: t1.j.s
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return EnumC6654j.m3668P(this, i, interfaceC6648d);
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                EnumC6654j.m3666S(abstractC6650f, interfaceC6649e);
            }
        };
        f35271L = enumC6654j26;
        EnumC6654j enumC6654j27 = new EnumC6654j("FORMAT_3RC", 27) { // from class: t1.j.t
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return EnumC6654j.m3667Q(this, i, interfaceC6648d);
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                EnumC6654j.m3665T(abstractC6650f, interfaceC6649e);
            }
        };
        f35272M = enumC6654j27;
        EnumC6654j enumC6654j28 = new EnumC6654j("FORMAT_3RMS", 28) { // from class: t1.j.u
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return EnumC6654j.m3667Q(this, i, interfaceC6648d);
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                EnumC6654j.m3665T(abstractC6650f, interfaceC6649e);
            }
        };
        f35273N = enumC6654j28;
        EnumC6654j enumC6654j29 = new EnumC6654j("FORMAT_3RMI", 29) { // from class: t1.j.w
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return EnumC6654j.m3667Q(this, i, interfaceC6648d);
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                EnumC6654j.m3665T(abstractC6650f, interfaceC6649e);
            }
        };
        f35274O = enumC6654j29;
        EnumC6654j enumC6654j30 = new EnumC6654j("FORMAT_51L", 30) { // from class: t1.j.x
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                return new C6693m(this, EnumC6654j.m3672K(i), 0, null, 0, interfaceC6648d.readLong(), EnumC6654j.m3671L(i));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                long m3693p = abstractC6650f.m3693p();
                interfaceC6649e.mo3623j(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3617d()), EnumC6654j.m3658a0(m3693p), EnumC6654j.m3655c0(m3693p), EnumC6654j.m3653d0(m3693p), EnumC6654j.m3652e0(m3693p));
            }
        };
        f35275P = enumC6654j30;
        EnumC6654j enumC6654j31 = new EnumC6654j("FORMAT_45CC", 31) { // from class: t1.j.y
            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                C6691k c6691k = (C6691k) abstractC6650f;
                interfaceC6649e.mo3625h(EnumC6654j.m3670M(c6691k.m3688u(), EnumC6654j.m3664U(c6691k.m3638F(), c6691k.mo3614x())), c6691k.m3694o(), EnumC6654j.m3669N(c6691k.mo3618h(), c6691k.mo3637j(), c6691k.mo3636k(), c6691k.m3639E()), c6691k.mo3634w());
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                int m3672K = EnumC6654j.m3672K(i);
                if (m3672K == 250) {
                    int m3661X = EnumC6654j.m3661X(i);
                    int m3660Y = EnumC6654j.m3660Y(i);
                    int read = interfaceC6648d.read();
                    int read2 = interfaceC6648d.read();
                    int m3663V = EnumC6654j.m3663V(read2);
                    int m3662W = EnumC6654j.m3662W(read2);
                    int m3661X2 = EnumC6654j.m3661X(read2);
                    int m3660Y2 = EnumC6654j.m3660Y(read2);
                    int read3 = interfaceC6648d.read();
                    EnumC6573b m3891c = C6574c.m3891c(m3672K);
                    if (m3660Y >= 1 && m3660Y <= 5) {
                        return new C6691k(this, m3672K, read, m3891c, read3, Arrays.copyOfRange(new int[]{m3663V, m3662W, m3661X2, m3660Y2, m3661X}, 0, m3660Y));
                    }
                    throw new C4420g("bogus registerCount: " + C0438g.m26473l(m3660Y));
                }
                throw new UnsupportedOperationException(String.valueOf(m3672K));
            }
        };
        f35276Q = enumC6654j31;
        EnumC6654j enumC6654j32 = new EnumC6654j("FORMAT_4RCC", 32) { // from class: t1.j.z
            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                int m3672K = EnumC6654j.m3672K(i);
                if (m3672K == 251) {
                    int m3671L = EnumC6654j.m3671L(i);
                    return new C6692l(this, m3672K, interfaceC6648d.read(), C6574c.m3891c(m3672K), interfaceC6648d.read(), m3671L, interfaceC6648d.read());
                }
                throw new UnsupportedOperationException(String.valueOf(m3672K));
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                interfaceC6649e.mo3625h(EnumC6654j.m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3614x()), abstractC6650f.m3694o(), abstractC6650f.m3698i(), abstractC6650f.mo3634w());
            }
        };
        f35277R = enumC6654j32;
        EnumC6654j enumC6654j33 = new EnumC6654j("FORMAT_PACKED_SWITCH_PAYLOAD", 33) { // from class: t1.j.a0
            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                C6694n c6694n = (C6694n) abstractC6650f;
                int[] m3632F = c6694n.m3632F();
                int mo3708b = interfaceC6649e.mo3708b();
                interfaceC6649e.mo3624i(c6694n.m3687v());
                interfaceC6649e.mo3624i(EnumC6654j.m3673J(m3632F.length));
                interfaceC6649e.writeInt(c6694n.m3633E());
                for (int i : m3632F) {
                    interfaceC6649e.writeInt(i - mo3708b);
                }
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                int mo3708b = interfaceC6648d.mo3708b() - 1;
                int read = interfaceC6648d.read();
                int readInt = interfaceC6648d.readInt();
                int[] iArr = new int[read];
                for (int i2 = 0; i2 < read; i2++) {
                    iArr[i2] = interfaceC6648d.readInt() + mo3708b;
                }
                return new C6694n(this, i, readInt, iArr);
            }
        };
        f35278S = enumC6654j33;
        EnumC6654j enumC6654j34 = new EnumC6654j("FORMAT_SPARSE_SWITCH_PAYLOAD", 34) { // from class: t1.j.b0
            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                C6698r c6698r = (C6698r) abstractC6650f;
                int[] m3620E = c6698r.m3620E();
                int[] m3619F = c6698r.m3619F();
                int mo3708b = interfaceC6649e.mo3708b();
                interfaceC6649e.mo3624i(c6698r.m3687v());
                interfaceC6649e.mo3624i(EnumC6654j.m3673J(m3619F.length));
                for (int i : m3620E) {
                    interfaceC6649e.writeInt(i);
                }
                for (int i2 : m3619F) {
                    interfaceC6649e.writeInt(i2 - mo3708b);
                }
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                int mo3708b = interfaceC6648d.mo3708b() - 1;
                int read = interfaceC6648d.read();
                int[] iArr = new int[read];
                int[] iArr2 = new int[read];
                for (int i2 = 0; i2 < read; i2++) {
                    iArr[i2] = interfaceC6648d.readInt();
                }
                for (int i3 = 0; i3 < read; i3++) {
                    iArr2[i3] = interfaceC6648d.readInt() + mo3708b;
                }
                return new C6698r(this, i, iArr, iArr2);
            }
        };
        f35279T = enumC6654j34;
        EnumC6654j enumC6654j35 = new EnumC6654j("FORMAT_FILL_ARRAY_DATA_PAYLOAD", 35) { // from class: t1.j.c0
            @Override // p183t1.EnumC6654j
            /* renamed from: R */
            public void mo3640R(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
                C6651g c6651g = (C6651g) abstractC6650f;
                short m3683F = c6651g.m3683F();
                Object m3684E = c6651g.m3684E();
                interfaceC6649e.mo3624i(c6651g.m3687v());
                interfaceC6649e.mo3624i(m3683F);
                interfaceC6649e.writeInt(c6651g.m3682G());
                if (m3683F != 1) {
                    if (m3683F != 2) {
                        if (m3683F != 4) {
                            if (m3683F == 8) {
                                interfaceC6649e.mo3629c((long[]) m3684E);
                                return;
                            }
                            throw new C4420g("bogus element_width: " + C0438g.m26478g(m3683F));
                        }
                        interfaceC6649e.mo3628d((int[]) m3684E);
                        return;
                    }
                    interfaceC6649e.mo3630a((short[]) m3684E);
                    return;
                }
                interfaceC6649e.write((byte[]) m3684E);
            }

            @Override // p183t1.EnumC6654j
            /* renamed from: O */
            public AbstractC6650f mo3641O(int i, InterfaceC6648d interfaceC6648d) {
                int read = interfaceC6648d.read();
                int readInt = interfaceC6648d.readInt();
                int i2 = 0;
                if (read != 1) {
                    if (read != 2) {
                        if (read != 4) {
                            if (read == 8) {
                                long[] jArr = new long[readInt];
                                while (i2 < readInt) {
                                    jArr[i2] = interfaceC6648d.readLong();
                                    i2++;
                                }
                                return new C6651g(this, i, jArr);
                            }
                            throw new C4420g("bogus element_width: " + C0438g.m26478g(read));
                        }
                        int[] iArr = new int[readInt];
                        while (i2 < readInt) {
                            iArr[i2] = interfaceC6648d.readInt();
                            i2++;
                        }
                        return new C6651g((EnumC6654j) this, i, iArr);
                    }
                    short[] sArr = new short[readInt];
                    while (i2 < readInt) {
                        sArr[i2] = (short) interfaceC6648d.read();
                        i2++;
                    }
                    return new C6651g((EnumC6654j) this, i, sArr);
                }
                byte[] bArr = new byte[readInt];
                int i3 = 0;
                boolean z = true;
                while (i2 < readInt) {
                    if (z) {
                        i3 = interfaceC6648d.read();
                    }
                    bArr[i2] = (byte) (i3 & 255);
                    i3 >>= 8;
                    i2++;
                    z = !z;
                }
                return new C6651g((EnumC6654j) this, i, bArr);
            }
        };
        f35280U = enumC6654j35;
        f35281V = new EnumC6654j[]{c6675k, enumC6654j, enumC6654j2, enumC6654j3, enumC6654j4, enumC6654j5, enumC6654j6, enumC6654j7, enumC6654j8, enumC6654j9, enumC6654j10, enumC6654j11, enumC6654j12, enumC6654j13, enumC6654j14, enumC6654j15, enumC6654j16, enumC6654j17, enumC6654j18, enumC6654j19, enumC6654j20, enumC6654j21, enumC6654j22, enumC6654j23, enumC6654j24, enumC6654j25, enumC6654j26, enumC6654j27, enumC6654j28, enumC6654j29, enumC6654j30, enumC6654j31, enumC6654j32, enumC6654j33, enumC6654j34, enumC6654j35};
    }

    public /* synthetic */ EnumC6654j(String str, int i, C6675k c6675k) {
        this(str, i);
    }

    /* renamed from: M */
    public static short m3670M(int i, int i2) {
        if ((i & (-256)) == 0) {
            if ((i2 & (-256)) == 0) {
                return (short) (i | (i2 << 8));
            }
            throw new IllegalArgumentException("bogus highByte");
        }
        throw new IllegalArgumentException("bogus lowByte");
    }

    /* renamed from: N */
    public static short m3669N(int i, int i2, int i3, int i4) {
        if ((i & (-16)) == 0) {
            if ((i2 & (-16)) == 0) {
                if ((i3 & (-16)) == 0) {
                    if ((i4 & (-16)) == 0) {
                        return (short) (i | (i2 << 4) | (i3 << 8) | (i4 << 12));
                    }
                    throw new IllegalArgumentException("bogus nibble3");
                }
                throw new IllegalArgumentException("bogus nibble2");
            }
            throw new IllegalArgumentException("bogus nibble1");
        }
        throw new IllegalArgumentException("bogus nibble0");
    }

    /* renamed from: U */
    public static int m3664U(int i, int i2) {
        if ((i & (-16)) == 0) {
            if ((i2 & (-16)) == 0) {
                return i | (i2 << 4);
            }
            throw new IllegalArgumentException("bogus highNibble");
        }
        throw new IllegalArgumentException("bogus lowNibble");
    }

    /* renamed from: P */
    public static AbstractC6650f m3668P(EnumC6654j enumC6654j, int i, InterfaceC6648d interfaceC6648d) {
        int m3672K = m3672K(i);
        int m3661X = m3661X(i);
        int m3660Y = m3660Y(i);
        int read = interfaceC6648d.read();
        int read2 = interfaceC6648d.read();
        int m3663V = m3663V(read2);
        int m3662W = m3662W(read2);
        int m3661X2 = m3661X(read2);
        int m3660Y2 = m3660Y(read2);
        EnumC6573b m3891c = C6574c.m3891c(m3672K);
        if (m3660Y != 0) {
            if (m3660Y != 1) {
                if (m3660Y != 2) {
                    if (m3660Y != 3) {
                        if (m3660Y != 4) {
                            if (m3660Y == 5) {
                                return new C6652h(enumC6654j, m3672K, read, m3891c, 0, 0L, m3663V, m3662W, m3661X2, m3660Y2, m3661X);
                            }
                            throw new C4420g("bogus registerCount: " + C0438g.m26473l(m3660Y));
                        }
                        return new C6653i(enumC6654j, m3672K, read, m3891c, 0, 0L, m3663V, m3662W, m3661X2, m3660Y2);
                    }
                    return new C6699s(enumC6654j, m3672K, read, m3891c, 0, 0L, m3663V, m3662W, m3661X2);
                }
                return new C6700t(enumC6654j, m3672K, read, m3891c, 0, 0L, m3663V, m3662W);
            }
            return new C6693m(enumC6654j, m3672K, read, m3891c, 0, 0L, m3663V);
        }
        return new C6701u(enumC6654j, m3672K, read, m3891c, 0, 0L);
    }

    /* renamed from: Q */
    public static AbstractC6650f m3667Q(EnumC6654j enumC6654j, int i, InterfaceC6648d interfaceC6648d) {
        int m3672K = m3672K(i);
        int m3671L = m3671L(i);
        return new C6695o(enumC6654j, m3672K, interfaceC6648d.read(), C6574c.m3891c(m3672K), 0, 0L, interfaceC6648d.read(), m3671L);
    }

    /* renamed from: S */
    public static void m3666S(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
        interfaceC6649e.mo3626f(m3670M(abstractC6650f.m3688u(), m3664U(abstractC6650f.mo3636k(), abstractC6650f.mo3614x())), abstractC6650f.m3694o(), m3669N(abstractC6650f.mo3617d(), abstractC6650f.mo3616f(), abstractC6650f.mo3618h(), abstractC6650f.mo3637j()));
    }

    /* renamed from: T */
    public static void m3665T(AbstractC6650f abstractC6650f, InterfaceC6649e interfaceC6649e) {
        interfaceC6649e.mo3626f(m3670M(abstractC6650f.m3688u(), abstractC6650f.mo3614x()), abstractC6650f.m3694o(), abstractC6650f.m3700e());
    }
}
