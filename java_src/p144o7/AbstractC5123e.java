package p144o7;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
import p144o7.C5117c0;
import p144o7.C5182l0;
import p144o7.C5230u1;
/* renamed from: o7.e */
/* loaded from: classes2.dex */
public abstract class AbstractC5123e implements InterfaceC5136g1 {

    /* renamed from: o7.e$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C5124a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19393a;

        static {
            int[] iArr = new int[C5230u1.EnumC5232b.values().length];
            f19393a = iArr;
            try {
                iArr[C5230u1.EnumC5232b.f19588u.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19592y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19581d.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19575A.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19587t.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19586s.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19582k.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19585r.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19583p.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19591x.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19576B.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19577C.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19578D.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19579E.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19589v.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19593z.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f19393a[C5230u1.EnumC5232b.f19584q.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* renamed from: o7.e$b */
    /* loaded from: classes2.dex */
    public static final class C5125b extends AbstractC5123e {

        /* renamed from: a */
        public final boolean f19394a;

        /* renamed from: b */
        public final byte[] f19395b;

        /* renamed from: c */
        public int f19396c;

        /* renamed from: d */
        public final int f19397d;

        /* renamed from: e */
        public int f19398e;

        /* renamed from: f */
        public int f19399f;

        /* renamed from: g */
        public int f19400g;

        public C5125b(ByteBuffer byteBuffer, boolean z) {
            super(null);
            this.f19394a = z;
            this.f19395b = byteBuffer.array();
            int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            this.f19396c = arrayOffset;
            this.f19397d = arrayOffset;
            this.f19398e = byteBuffer.arrayOffset() + byteBuffer.limit();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: B */
        public String mo14478B() {
            return m14609a0(false);
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: D */
        public void mo14476D(List<String> list) {
            m14608b0(list, false);
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: E */
        public void mo14475E(List<String> list) {
            m14608b0(list, true);
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: F */
        public AbstractC5137h mo14474F() {
            AbstractC5137h m14554k;
            m14602h0(2);
            int m14607c0 = m14607c0();
            if (m14607c0 == 0) {
                return AbstractC5137h.f19422b;
            }
            m14604f0(m14607c0);
            if (this.f19394a) {
                m14554k = AbstractC5137h.m14558H(this.f19395b, this.f19396c, m14607c0);
            } else {
                m14554k = AbstractC5137h.m14554k(this.f19395b, this.f19396c, m14607c0);
            }
            this.f19396c += m14607c0;
            return m14554k;
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: H */
        public int mo14472H() {
            m14602h0(0);
            return m14607c0();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: J */
        public int mo14470J() {
            m14602h0(5);
            return m14614V();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: M */
        public long mo14467M() {
            m14602h0(0);
            return m14606d0();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: N */
        public String mo14466N() {
            return m14609a0(true);
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: P */
        public <T> T mo14464P(InterfaceC5150h1<T> interfaceC5150h1, C5196p c5196p) {
            m14602h0(2);
            return (T) m14610Z(interfaceC5150h1, c5196p);
        }

        /* renamed from: R */
        public final boolean m14618R() {
            return this.f19396c == this.f19398e;
        }

        /* renamed from: V */
        public final int m14614V() {
            m14604f0(4);
            return m14613W();
        }

        /* renamed from: a0 */
        public String m14609a0(boolean z) {
            m14602h0(2);
            int m14607c0 = m14607c0();
            if (m14607c0 == 0) {
                return "";
            }
            m14604f0(m14607c0);
            if (z) {
                byte[] bArr = this.f19395b;
                int i = this.f19396c;
                if (!C5220t1.m14005n(bArr, i, i + m14607c0)) {
                    throw C5117c0.m14636c();
                }
            }
            String str = new String(this.f19395b, this.f19396c, m14607c0, C5102a0.f19363a);
            this.f19396c += m14607c0;
            return str;
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: b */
        public long mo14453b() {
            m14602h0(0);
            return m14606d0();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: c */
        public long mo14452c() {
            m14602h0(1);
            return m14612X();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: d */
        public <T> T mo14451d(Class<T> cls, C5196p c5196p) {
            m14602h0(2);
            return (T) m14610Z(C5122d1.m14624a().m14621d(cls), c5196p);
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: e */
        public <T> T mo14450e(Class<T> cls, C5196p c5196p) {
            m14602h0(3);
            return (T) m14615U(C5122d1.m14624a().m14621d(cls), c5196p);
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: i */
        public int mo14446i() {
            m14602h0(5);
            return m14614V();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: j */
        public boolean mo14445j() {
            m14602h0(0);
            return m14607c0() != 0;
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: k */
        public long mo14444k() {
            m14602h0(1);
            return m14612X();
        }

        /* renamed from: l0 */
        public final void m14598l0() {
            for (int i = 0; i < 10; i++) {
                if (m14617S() >= 0) {
                    return;
                }
            }
            throw C5117c0.m14634e();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: m */
        public int mo14442m() {
            m14602h0(0);
            return m14607c0();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: o */
        public <T> T mo14440o(InterfaceC5150h1<T> interfaceC5150h1, C5196p c5196p) {
            m14602h0(3);
            return (T) m14615U(interfaceC5150h1, c5196p);
        }

        @Override // p144o7.InterfaceC5136g1
        public double readDouble() {
            m14602h0(1);
            return Double.longBitsToDouble(m14612X());
        }

        @Override // p144o7.InterfaceC5136g1
        public float readFloat() {
            m14602h0(5);
            return Float.intBitsToFloat(m14614V());
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: u */
        public int mo14434u() {
            m14602h0(0);
            return m14607c0();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: v */
        public int mo14433v() {
            return this.f19399f;
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: x */
        public int mo14431x() {
            m14602h0(0);
            return AbstractC5151i.m14529b(m14607c0());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p144o7.InterfaceC5136g1
        /* renamed from: y */
        public <K, V> void mo14430y(Map<K, V> map, C5182l0.C5183a<K, V> c5183a, C5196p c5196p) {
            m14602h0(2);
            int m14607c0 = m14607c0();
            m14604f0(m14607c0);
            int i = this.f19398e;
            this.f19398e = this.f19396c + m14607c0;
            try {
                Object obj = c5183a.f19501b;
                Object obj2 = c5183a.f19503d;
                while (true) {
                    int mo14477C = mo14477C();
                    if (mo14477C == Integer.MAX_VALUE) {
                        map.put(obj, obj2);
                        return;
                    } else if (mo14477C != 1) {
                        if (mo14477C != 2) {
                            try {
                                if (!mo14471I()) {
                                    throw new C5117c0("Unable to parse map entry.");
                                    break;
                                }
                            } catch (C5117c0.C5118a unused) {
                                if (!mo14471I()) {
                                    throw new C5117c0("Unable to parse map entry.");
                                }
                            }
                        } else {
                            obj2 = m14616T(c5183a.f19502c, c5183a.f19503d.getClass(), c5196p);
                        }
                    } else {
                        obj = m14616T(c5183a.f19500a, null, null);
                    }
                }
            } finally {
                this.f19398e = i;
            }
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: z */
        public long mo14429z() {
            m14602h0(0);
            return AbstractC5151i.m14528c(m14606d0());
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: A */
        public void mo14479A(List<Boolean> list) {
            int i;
            boolean z;
            int i2;
            boolean z2;
            if (list instanceof C5131f) {
                C5131f c5131f = (C5131f) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 0) {
                    if (m13943b == 2) {
                        int m14607c0 = this.f19396c + m14607c0();
                        while (this.f19396c < m14607c0) {
                            if (m14607c0() != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            c5131f.m14584k(z2);
                        }
                        m14603g0(m14607c0);
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                do {
                    c5131f.m14584k(mo14445j());
                    if (m14618R()) {
                        return;
                    }
                    i2 = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i2;
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 0) {
                if (m13943b2 == 2) {
                    int m14607c02 = this.f19396c + m14607c0();
                    while (this.f19396c < m14607c02) {
                        if (m14607c0() != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        list.add(Boolean.valueOf(z));
                    }
                    m14603g0(m14607c02);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                list.add(Boolean.valueOf(mo14445j()));
                if (m14618R()) {
                    return;
                }
                i = this.f19396c;
            } while (m14607c0() == this.f19399f);
            this.f19396c = i;
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: G */
        public void mo14473G(List<Float> list) {
            int i;
            int i2;
            if (list instanceof C5244w) {
                C5244w c5244w = (C5244w) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 2) {
                    if (m13943b == 5) {
                        do {
                            c5244w.m13837i(readFloat());
                            if (m14618R()) {
                                return;
                            }
                            i2 = this.f19396c;
                        } while (m14607c0() == this.f19399f);
                        this.f19396c = i2;
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                int m14607c0 = m14607c0();
                m14597m0(m14607c0);
                int i3 = this.f19396c + m14607c0;
                while (this.f19396c < i3) {
                    c5244w.m13837i(Float.intBitsToFloat(m14613W()));
                }
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 2) {
                if (m13943b2 == 5) {
                    do {
                        list.add(Float.valueOf(readFloat()));
                        if (m14618R()) {
                            return;
                        }
                        i = this.f19396c;
                    } while (m14607c0() == this.f19399f);
                    this.f19396c = i;
                    return;
                }
                throw C5117c0.m14635d();
            }
            int m14607c02 = m14607c0();
            m14597m0(m14607c02);
            int i4 = this.f19396c + m14607c02;
            while (this.f19396c < i4) {
                list.add(Float.valueOf(Float.intBitsToFloat(m14613W())));
            }
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: K */
        public void mo14469K(List<AbstractC5137h> list) {
            int i;
            if (C5230u1.m13943b(this.f19399f) == 2) {
                do {
                    list.add(mo14474F());
                    if (m14618R()) {
                        return;
                    }
                    i = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i;
                return;
            }
            throw C5117c0.m14635d();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: L */
        public void mo14468L(List<Double> list) {
            int i;
            int i2;
            if (list instanceof C5185m) {
                C5185m c5185m = (C5185m) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 1) {
                    if (m13943b == 2) {
                        int m14607c0 = m14607c0();
                        m14596n0(m14607c0);
                        int i3 = this.f19396c + m14607c0;
                        while (this.f19396c < i3) {
                            c5185m.m14205i(Double.longBitsToDouble(m14611Y()));
                        }
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                do {
                    c5185m.m14205i(readDouble());
                    if (m14618R()) {
                        return;
                    }
                    i2 = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i2;
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 1) {
                if (m13943b2 == 2) {
                    int m14607c02 = m14607c0();
                    m14596n0(m14607c02);
                    int i4 = this.f19396c + m14607c02;
                    while (this.f19396c < i4) {
                        list.add(Double.valueOf(Double.longBitsToDouble(m14611Y())));
                    }
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                list.add(Double.valueOf(readDouble()));
                if (m14618R()) {
                    return;
                }
                i = this.f19396c;
            } while (m14607c0() == this.f19399f);
            this.f19396c = i;
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: O */
        public void mo14465O(List<Long> list) {
            int i;
            int i2;
            if (list instanceof C5161j0) {
                C5161j0 c5161j0 = (C5161j0) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 1) {
                    if (m13943b == 2) {
                        int m14607c0 = m14607c0();
                        m14596n0(m14607c0);
                        int i3 = this.f19396c + m14607c0;
                        while (this.f19396c < i3) {
                            c5161j0.m14425k(m14611Y());
                        }
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                do {
                    c5161j0.m14425k(mo14452c());
                    if (m14618R()) {
                        return;
                    }
                    i2 = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i2;
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 1) {
                if (m13943b2 == 2) {
                    int m14607c02 = m14607c0();
                    m14596n0(m14607c02);
                    int i4 = this.f19396c + m14607c02;
                    while (this.f19396c < i4) {
                        list.add(Long.valueOf(m14611Y()));
                    }
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                list.add(Long.valueOf(mo14452c()));
                if (m14618R()) {
                    return;
                }
                i = this.f19396c;
            } while (m14607c0() == this.f19399f);
            this.f19396c = i;
        }

        /* renamed from: S */
        public final byte m14617S() {
            int i = this.f19396c;
            if (i != this.f19398e) {
                byte[] bArr = this.f19395b;
                this.f19396c = i + 1;
                return bArr[i];
            }
            throw C5117c0.m14629j();
        }

        /* renamed from: T */
        public final Object m14616T(C5230u1.EnumC5232b enumC5232b, Class<?> cls, C5196p c5196p) {
            switch (C5124a.f19393a[enumC5232b.ordinal()]) {
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

        /* renamed from: U */
        public final <T> T m14615U(InterfaceC5150h1<T> interfaceC5150h1, C5196p c5196p) {
            int i = this.f19400g;
            this.f19400g = C5230u1.m13942c(C5230u1.m13944a(this.f19399f), 4);
            try {
                T newInstance = interfaceC5150h1.newInstance();
                interfaceC5150h1.mo13823e(newInstance, this, c5196p);
                interfaceC5150h1.mo13826b(newInstance);
                if (this.f19399f == this.f19400g) {
                    return newInstance;
                }
                throw C5117c0.m14632g();
            } finally {
                this.f19400g = i;
            }
        }

        /* renamed from: W */
        public final int m14613W() {
            int i = this.f19396c;
            byte[] bArr = this.f19395b;
            this.f19396c = i + 4;
            return ((bArr[i + 3] & DefaultClassResolver.NAME) << 24) | (bArr[i] & DefaultClassResolver.NAME) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16);
        }

        /* renamed from: X */
        public final long m14612X() {
            m14604f0(8);
            return m14611Y();
        }

        /* renamed from: Y */
        public final long m14611Y() {
            int i = this.f19396c;
            byte[] bArr = this.f19395b;
            this.f19396c = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: a */
        public void mo14454a(List<Integer> list) {
            int i;
            int i2;
            if (list instanceof C5256z) {
                C5256z c5256z = (C5256z) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 0) {
                    if (m13943b == 2) {
                        int m14607c0 = this.f19396c + m14607c0();
                        while (this.f19396c < m14607c0) {
                            c5256z.mo13759P(AbstractC5151i.m14529b(m14607c0()));
                        }
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                do {
                    c5256z.mo13759P(mo14431x());
                    if (m14618R()) {
                        return;
                    }
                    i2 = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i2;
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 0) {
                if (m13943b2 == 2) {
                    int m14607c02 = this.f19396c + m14607c0();
                    while (this.f19396c < m14607c02) {
                        list.add(Integer.valueOf(AbstractC5151i.m14529b(m14607c0())));
                    }
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                list.add(Integer.valueOf(mo14431x()));
                if (m14618R()) {
                    return;
                }
                i = this.f19396c;
            } while (m14607c0() == this.f19399f);
            this.f19396c = i;
        }

        /* renamed from: b0 */
        public void m14608b0(List<String> list, boolean z) {
            int i;
            int i2;
            if (C5230u1.m13943b(this.f19399f) == 2) {
                if ((list instanceof InterfaceC5149h0) && !z) {
                    InterfaceC5149h0 interfaceC5149h0 = (InterfaceC5149h0) list;
                    do {
                        interfaceC5149h0.mo14093X(mo14474F());
                        if (m14618R()) {
                            return;
                        }
                        i2 = this.f19396c;
                    } while (m14607c0() == this.f19399f);
                    this.f19396c = i2;
                    return;
                }
                do {
                    list.add(m14609a0(z));
                    if (m14618R()) {
                        return;
                    }
                    i = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i;
                return;
            }
            throw C5117c0.m14635d();
        }

        /* renamed from: c0 */
        public final int m14607c0() {
            int i;
            int i2 = this.f19396c;
            int i3 = this.f19398e;
            if (i3 != i2) {
                byte[] bArr = this.f19395b;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f19396c = i4;
                    return b;
                } else if (i3 - i4 < 9) {
                    return (int) m14605e0();
                } else {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 < 0) {
                        i = i6 ^ (-128);
                    } else {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            i = i8 ^ 16256;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << 21);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                i7 = i5 + 1;
                                byte b2 = bArr[i5];
                                i = (i9 ^ (b2 << 28)) ^ 266354560;
                                if (b2 < 0) {
                                    i5 = i7 + 1;
                                    if (bArr[i7] < 0) {
                                        i7 = i5 + 1;
                                        if (bArr[i5] < 0) {
                                            i5 = i7 + 1;
                                            if (bArr[i7] < 0) {
                                                i7 = i5 + 1;
                                                if (bArr[i5] < 0) {
                                                    i5 = i7 + 1;
                                                    if (bArr[i7] < 0) {
                                                        throw C5117c0.m14634e();
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        i5 = i7;
                    }
                    this.f19396c = i5;
                    return i;
                }
            }
            throw C5117c0.m14629j();
        }

        /* renamed from: d0 */
        public long m14606d0() {
            long j;
            long j2;
            long j3;
            long j4;
            int i;
            int i2 = this.f19396c;
            int i3 = this.f19398e;
            if (i3 != i2) {
                byte[] bArr = this.f19395b;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f19396c = i4;
                    return b;
                } else if (i3 - i4 < 9) {
                    return m14605e0();
                } else {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 < 0) {
                        i = i6 ^ (-128);
                    } else {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            i5 = i7;
                            j4 = i8 ^ 16256;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << 21);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                long j5 = i9;
                                int i10 = i5 + 1;
                                long j6 = j5 ^ (bArr[i5] << 28);
                                if (j6 >= 0) {
                                    j3 = 266354560;
                                } else {
                                    i5 = i10 + 1;
                                    long j7 = j6 ^ (bArr[i10] << 35);
                                    if (j7 < 0) {
                                        j2 = -34093383808L;
                                    } else {
                                        i10 = i5 + 1;
                                        j6 = j7 ^ (bArr[i5] << 42);
                                        if (j6 >= 0) {
                                            j3 = 4363953127296L;
                                        } else {
                                            i5 = i10 + 1;
                                            j7 = j6 ^ (bArr[i10] << 49);
                                            if (j7 < 0) {
                                                j2 = -558586000294016L;
                                            } else {
                                                int i11 = i5 + 1;
                                                j = (j7 ^ (bArr[i5] << 56)) ^ 71499008037633920L;
                                                if (j < 0) {
                                                    i5 = i11 + 1;
                                                    if (bArr[i11] < 0) {
                                                        throw C5117c0.m14634e();
                                                    }
                                                } else {
                                                    i5 = i11;
                                                }
                                                j4 = j;
                                            }
                                        }
                                    }
                                    j = j7 ^ j2;
                                    j4 = j;
                                }
                                j4 = j3 ^ j6;
                                i5 = i10;
                            }
                        }
                        this.f19396c = i5;
                        return j4;
                    }
                    j4 = i;
                    this.f19396c = i5;
                    return j4;
                }
            }
            throw C5117c0.m14629j();
        }

        /* renamed from: e0 */
        public final long m14605e0() {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte m14617S = m14617S();
                j |= (m14617S & Byte.MAX_VALUE) << i;
                if ((m14617S & 128) == 0) {
                    return j;
                }
            }
            throw C5117c0.m14634e();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: f */
        public void mo14449f(List<Integer> list) {
            int i;
            int i2;
            if (list instanceof C5256z) {
                C5256z c5256z = (C5256z) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 2) {
                    if (m13943b == 5) {
                        do {
                            c5256z.mo13759P(mo14470J());
                            if (m14618R()) {
                                return;
                            }
                            i2 = this.f19396c;
                        } while (m14607c0() == this.f19399f);
                        this.f19396c = i2;
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                int m14607c0 = m14607c0();
                m14597m0(m14607c0);
                int i3 = this.f19396c + m14607c0;
                while (this.f19396c < i3) {
                    c5256z.mo13759P(m14613W());
                }
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 2) {
                if (m13943b2 == 5) {
                    do {
                        list.add(Integer.valueOf(mo14470J()));
                        if (m14618R()) {
                            return;
                        }
                        i = this.f19396c;
                    } while (m14607c0() == this.f19399f);
                    this.f19396c = i;
                    return;
                }
                throw C5117c0.m14635d();
            }
            int m14607c02 = m14607c0();
            m14597m0(m14607c02);
            int i4 = this.f19396c + m14607c02;
            while (this.f19396c < i4) {
                list.add(Integer.valueOf(m14613W()));
            }
        }

        /* renamed from: f0 */
        public final void m14604f0(int i) {
            if (i >= 0 && i <= this.f19398e - this.f19396c) {
                return;
            }
            throw C5117c0.m14629j();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: g */
        public void mo14448g(List<Long> list) {
            int i;
            int i2;
            if (list instanceof C5161j0) {
                C5161j0 c5161j0 = (C5161j0) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 0) {
                    if (m13943b == 2) {
                        int m14607c0 = this.f19396c + m14607c0();
                        while (this.f19396c < m14607c0) {
                            c5161j0.m14425k(AbstractC5151i.m14528c(m14606d0()));
                        }
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                do {
                    c5161j0.m14425k(mo14429z());
                    if (m14618R()) {
                        return;
                    }
                    i2 = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i2;
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 0) {
                if (m13943b2 == 2) {
                    int m14607c02 = this.f19396c + m14607c0();
                    while (this.f19396c < m14607c02) {
                        list.add(Long.valueOf(AbstractC5151i.m14528c(m14606d0())));
                    }
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                list.add(Long.valueOf(mo14429z()));
                if (m14618R()) {
                    return;
                }
                i = this.f19396c;
            } while (m14607c0() == this.f19399f);
            this.f19396c = i;
        }

        /* renamed from: g0 */
        public final void m14603g0(int i) {
            if (this.f19396c == i) {
                return;
            }
            throw C5117c0.m14629j();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: h */
        public void mo14447h(List<Integer> list) {
            int i;
            int i2;
            if (list instanceof C5256z) {
                C5256z c5256z = (C5256z) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 0) {
                    if (m13943b == 2) {
                        int m14607c0 = this.f19396c + m14607c0();
                        while (this.f19396c < m14607c0) {
                            c5256z.mo13759P(m14607c0());
                        }
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                do {
                    c5256z.mo13759P(mo14442m());
                    if (m14618R()) {
                        return;
                    }
                    i2 = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i2;
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 0) {
                if (m13943b2 == 2) {
                    int m14607c02 = this.f19396c + m14607c0();
                    while (this.f19396c < m14607c02) {
                        list.add(Integer.valueOf(m14607c0()));
                    }
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                list.add(Integer.valueOf(mo14442m()));
                if (m14618R()) {
                    return;
                }
                i = this.f19396c;
            } while (m14607c0() == this.f19399f);
            this.f19396c = i;
        }

        /* renamed from: h0 */
        public final void m14602h0(int i) {
            if (C5230u1.m13943b(this.f19399f) == i) {
                return;
            }
            throw C5117c0.m14635d();
        }

        /* renamed from: j0 */
        public final void m14600j0() {
            int i = this.f19400g;
            this.f19400g = C5230u1.m13942c(C5230u1.m13944a(this.f19399f), 4);
            while (mo14477C() != Integer.MAX_VALUE && mo14471I()) {
            }
            if (this.f19399f == this.f19400g) {
                this.f19400g = i;
                return;
            }
            throw C5117c0.m14632g();
        }

        /* renamed from: k0 */
        public final void m14599k0() {
            int i = this.f19398e;
            int i2 = this.f19396c;
            if (i - i2 >= 10) {
                byte[] bArr = this.f19395b;
                int i3 = 0;
                while (i3 < 10) {
                    int i4 = i2 + 1;
                    if (bArr[i2] >= 0) {
                        this.f19396c = i4;
                        return;
                    } else {
                        i3++;
                        i2 = i4;
                    }
                }
            }
            m14598l0();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: l */
        public void mo14443l(List<Long> list) {
            int i;
            int i2;
            if (list instanceof C5161j0) {
                C5161j0 c5161j0 = (C5161j0) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 0) {
                    if (m13943b == 2) {
                        int m14607c0 = this.f19396c + m14607c0();
                        while (this.f19396c < m14607c0) {
                            c5161j0.m14425k(m14606d0());
                        }
                        m14603g0(m14607c0);
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                do {
                    c5161j0.m14425k(mo14453b());
                    if (m14618R()) {
                        return;
                    }
                    i2 = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i2;
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 0) {
                if (m13943b2 == 2) {
                    int m14607c02 = this.f19396c + m14607c0();
                    while (this.f19396c < m14607c02) {
                        list.add(Long.valueOf(m14606d0()));
                    }
                    m14603g0(m14607c02);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                list.add(Long.valueOf(mo14453b()));
                if (m14618R()) {
                    return;
                }
                i = this.f19396c;
            } while (m14607c0() == this.f19399f);
            this.f19396c = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p144o7.InterfaceC5136g1
        /* renamed from: n */
        public <T> void mo14441n(List<T> list, InterfaceC5150h1<T> interfaceC5150h1, C5196p c5196p) {
            int i;
            if (C5230u1.m13943b(this.f19399f) == 3) {
                int i2 = this.f19399f;
                do {
                    list.add(m14615U(interfaceC5150h1, c5196p));
                    if (m14618R()) {
                        return;
                    }
                    i = this.f19396c;
                } while (m14607c0() == i2);
                this.f19396c = i;
                return;
            }
            throw C5117c0.m14635d();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: p */
        public void mo14439p(List<Long> list) {
            int i;
            int i2;
            if (list instanceof C5161j0) {
                C5161j0 c5161j0 = (C5161j0) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 0) {
                    if (m13943b == 2) {
                        int m14607c0 = this.f19396c + m14607c0();
                        while (this.f19396c < m14607c0) {
                            c5161j0.m14425k(m14606d0());
                        }
                        m14603g0(m14607c0);
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                do {
                    c5161j0.m14425k(mo14467M());
                    if (m14618R()) {
                        return;
                    }
                    i2 = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i2;
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 0) {
                if (m13943b2 == 2) {
                    int m14607c02 = this.f19396c + m14607c0();
                    while (this.f19396c < m14607c02) {
                        list.add(Long.valueOf(m14606d0()));
                    }
                    m14603g0(m14607c02);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                list.add(Long.valueOf(mo14467M()));
                if (m14618R()) {
                    return;
                }
                i = this.f19396c;
            } while (m14607c0() == this.f19399f);
            this.f19396c = i;
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: q */
        public void mo14438q(List<Long> list) {
            int i;
            int i2;
            if (list instanceof C5161j0) {
                C5161j0 c5161j0 = (C5161j0) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 1) {
                    if (m13943b == 2) {
                        int m14607c0 = m14607c0();
                        m14596n0(m14607c0);
                        int i3 = this.f19396c + m14607c0;
                        while (this.f19396c < i3) {
                            c5161j0.m14425k(m14611Y());
                        }
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                do {
                    c5161j0.m14425k(mo14444k());
                    if (m14618R()) {
                        return;
                    }
                    i2 = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i2;
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 1) {
                if (m13943b2 == 2) {
                    int m14607c02 = m14607c0();
                    m14596n0(m14607c02);
                    int i4 = this.f19396c + m14607c02;
                    while (this.f19396c < i4) {
                        list.add(Long.valueOf(m14611Y()));
                    }
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                list.add(Long.valueOf(mo14444k()));
                if (m14618R()) {
                    return;
                }
                i = this.f19396c;
            } while (m14607c0() == this.f19399f);
            this.f19396c = i;
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: r */
        public void mo14437r(List<Integer> list) {
            int i;
            int i2;
            if (list instanceof C5256z) {
                C5256z c5256z = (C5256z) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 0) {
                    if (m13943b == 2) {
                        int m14607c0 = this.f19396c + m14607c0();
                        while (this.f19396c < m14607c0) {
                            c5256z.mo13759P(m14607c0());
                        }
                        m14603g0(m14607c0);
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                do {
                    c5256z.mo13759P(mo14472H());
                    if (m14618R()) {
                        return;
                    }
                    i2 = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i2;
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 0) {
                if (m13943b2 == 2) {
                    int m14607c02 = this.f19396c + m14607c0();
                    while (this.f19396c < m14607c02) {
                        list.add(Integer.valueOf(m14607c0()));
                    }
                    m14603g0(m14607c02);
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                list.add(Integer.valueOf(mo14472H()));
                if (m14618R()) {
                    return;
                }
                i = this.f19396c;
            } while (m14607c0() == this.f19399f);
            this.f19396c = i;
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: s */
        public void mo14436s(List<Integer> list) {
            int i;
            int i2;
            if (list instanceof C5256z) {
                C5256z c5256z = (C5256z) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 0) {
                    if (m13943b == 2) {
                        int m14607c0 = this.f19396c + m14607c0();
                        while (this.f19396c < m14607c0) {
                            c5256z.mo13759P(m14607c0());
                        }
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                do {
                    c5256z.mo13759P(mo14434u());
                    if (m14618R()) {
                        return;
                    }
                    i2 = this.f19396c;
                } while (m14607c0() == this.f19399f);
                this.f19396c = i2;
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 0) {
                if (m13943b2 == 2) {
                    int m14607c02 = this.f19396c + m14607c0();
                    while (this.f19396c < m14607c02) {
                        list.add(Integer.valueOf(m14607c0()));
                    }
                    return;
                }
                throw C5117c0.m14635d();
            }
            do {
                list.add(Integer.valueOf(mo14434u()));
                if (m14618R()) {
                    return;
                }
                i = this.f19396c;
            } while (m14607c0() == this.f19399f);
            this.f19396c = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p144o7.InterfaceC5136g1
        /* renamed from: t */
        public <T> void mo14435t(List<T> list, InterfaceC5150h1<T> interfaceC5150h1, C5196p c5196p) {
            int i;
            if (C5230u1.m13943b(this.f19399f) == 2) {
                int i2 = this.f19399f;
                do {
                    list.add(m14610Z(interfaceC5150h1, c5196p));
                    if (m14618R()) {
                        return;
                    }
                    i = this.f19396c;
                } while (m14607c0() == i2);
                this.f19396c = i;
                return;
            }
            throw C5117c0.m14635d();
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: w */
        public void mo14432w(List<Integer> list) {
            int i;
            int i2;
            if (list instanceof C5256z) {
                C5256z c5256z = (C5256z) list;
                int m13943b = C5230u1.m13943b(this.f19399f);
                if (m13943b != 2) {
                    if (m13943b == 5) {
                        do {
                            c5256z.mo13759P(mo14446i());
                            if (m14618R()) {
                                return;
                            }
                            i2 = this.f19396c;
                        } while (m14607c0() == this.f19399f);
                        this.f19396c = i2;
                        return;
                    }
                    throw C5117c0.m14635d();
                }
                int m14607c0 = m14607c0();
                m14597m0(m14607c0);
                int i3 = this.f19396c + m14607c0;
                while (this.f19396c < i3) {
                    c5256z.mo13759P(m14613W());
                }
                return;
            }
            int m13943b2 = C5230u1.m13943b(this.f19399f);
            if (m13943b2 != 2) {
                if (m13943b2 == 5) {
                    do {
                        list.add(Integer.valueOf(mo14446i()));
                        if (m14618R()) {
                            return;
                        }
                        i = this.f19396c;
                    } while (m14607c0() == this.f19399f);
                    this.f19396c = i;
                    return;
                }
                throw C5117c0.m14635d();
            }
            int m14607c02 = m14607c0();
            m14597m0(m14607c02);
            int i4 = this.f19396c + m14607c02;
            while (this.f19396c < i4) {
                list.add(Integer.valueOf(m14613W()));
            }
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: C */
        public int mo14477C() {
            if (m14618R()) {
                return Integer.MAX_VALUE;
            }
            int m14607c0 = m14607c0();
            this.f19399f = m14607c0;
            if (m14607c0 == this.f19400g) {
                return Integer.MAX_VALUE;
            }
            return C5230u1.m13944a(m14607c0);
        }

        @Override // p144o7.InterfaceC5136g1
        /* renamed from: I */
        public boolean mo14471I() {
            int i;
            if (!m14618R() && (i = this.f19399f) != this.f19400g) {
                int m13943b = C5230u1.m13943b(i);
                if (m13943b != 0) {
                    if (m13943b != 1) {
                        if (m13943b != 2) {
                            if (m13943b != 3) {
                                if (m13943b == 5) {
                                    m14601i0(4);
                                    return true;
                                }
                                throw C5117c0.m14635d();
                            }
                            m14600j0();
                            return true;
                        }
                        m14601i0(m14607c0());
                        return true;
                    }
                    m14601i0(8);
                    return true;
                }
                m14599k0();
                return true;
            }
            return false;
        }

        /* renamed from: Z */
        public final <T> T m14610Z(InterfaceC5150h1<T> interfaceC5150h1, C5196p c5196p) {
            int m14607c0 = m14607c0();
            m14604f0(m14607c0);
            int i = this.f19398e;
            int i2 = this.f19396c + m14607c0;
            this.f19398e = i2;
            try {
                T newInstance = interfaceC5150h1.newInstance();
                interfaceC5150h1.mo13823e(newInstance, this, c5196p);
                interfaceC5150h1.mo13826b(newInstance);
                if (this.f19396c == i2) {
                    return newInstance;
                }
                throw C5117c0.m14632g();
            } finally {
                this.f19398e = i;
            }
        }

        /* renamed from: i0 */
        public final void m14601i0(int i) {
            m14604f0(i);
            this.f19396c += i;
        }

        /* renamed from: m0 */
        public final void m14597m0(int i) {
            m14604f0(i);
            if ((i & 3) == 0) {
                return;
            }
            throw C5117c0.m14632g();
        }

        /* renamed from: n0 */
        public final void m14596n0(int i) {
            m14604f0(i);
            if ((i & 7) == 0) {
                return;
            }
            throw C5117c0.m14632g();
        }
    }

    public AbstractC5123e() {
    }

    public /* synthetic */ AbstractC5123e(C5124a c5124a) {
        this();
    }

    /* renamed from: Q */
    public static AbstractC5123e m14619Q(ByteBuffer byteBuffer, boolean z) {
        if (byteBuffer.hasArray()) {
            return new C5125b(byteBuffer, z);
        }
        throw new IllegalArgumentException("Direct buffers not yet supported");
    }
}
