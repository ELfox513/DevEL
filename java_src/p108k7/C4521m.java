package p108k7;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import p144o7.AbstractC5100a;
import p144o7.AbstractC5248y;
import p144o7.C5102a0;
import p144o7.C5182l0;
import p144o7.C5186m0;
import p144o7.C5230u1;
import p144o7.InterfaceC5112a1;
import p144o7.InterfaceC5219t0;
/* renamed from: k7.m */
/* loaded from: classes2.dex */
public final class C4521m extends AbstractC5248y<C4521m, C4523b> implements InterfaceC5219t0 {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 4;
    public static final int COUNTERS_FIELD_NUMBER = 6;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 8;
    private static final C4521m DEFAULT_INSTANCE;
    public static final int DURATION_US_FIELD_NUMBER = 5;
    public static final int IS_AUTO_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile InterfaceC5112a1<C4521m> PARSER = null;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 9;
    public static final int SUBTRACES_FIELD_NUMBER = 7;
    private int bitField0_;
    private long clientStartTimeUs_;
    private long durationUs_;
    private boolean isAuto_;
    private C5186m0<String, Long> counters_ = C5186m0.m14192f();
    private C5186m0<String, String> customAttributes_ = C5186m0.m14192f();
    private String name_ = "";
    private C5102a0.InterfaceC5111i<C4521m> subtraces_ = AbstractC5248y.m13811D();
    private C5102a0.InterfaceC5111i<C4514k> perfSessions_ = AbstractC5248y.m13811D();

    /* renamed from: k7.m$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C4522a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18539a;

        static {
            int[] iArr = new int[AbstractC5248y.EnumC5254f.values().length];
            f18539a = iArr;
            try {
                iArr[AbstractC5248y.EnumC5254f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18539a[AbstractC5248y.EnumC5254f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18539a[AbstractC5248y.EnumC5254f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18539a[AbstractC5248y.EnumC5254f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18539a[AbstractC5248y.EnumC5254f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18539a[AbstractC5248y.EnumC5254f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18539a[AbstractC5248y.EnumC5254f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: k7.m$b */
    /* loaded from: classes2.dex */
    public static final class C4523b extends AbstractC5248y.AbstractC5249a<C4521m, C4523b> implements InterfaceC5219t0 {
        public /* synthetic */ C4523b(C4522a c4522a) {
            this();
        }

        public C4523b() {
            super(C4521m.DEFAULT_INSTANCE);
        }

        /* renamed from: Q */
        public C4523b m16084Q(Iterable<? extends C4514k> iterable) {
            m13785G();
            ((C4521m) this.f19705b).m16109a0(iterable);
            return this;
        }

        /* renamed from: S */
        public C4523b m16083S(Iterable<? extends C4521m> iterable) {
            m13785G();
            ((C4521m) this.f19705b).m16108b0(iterable);
            return this;
        }

        /* renamed from: T */
        public C4523b m16082T(C4514k c4514k) {
            m13785G();
            ((C4521m) this.f19705b).m16107c0(c4514k);
            return this;
        }

        /* renamed from: U */
        public C4523b m16081U(C4521m c4521m) {
            m13785G();
            ((C4521m) this.f19705b).m16106d0(c4521m);
            return this;
        }

        /* renamed from: V */
        public C4523b m16080V(Map<String, Long> map) {
            m13785G();
            ((C4521m) this.f19705b).m16098l0().putAll(map);
            return this;
        }

        /* renamed from: W */
        public C4523b m16079W(Map<String, String> map) {
            m13785G();
            ((C4521m) this.f19705b).m16097m0().putAll(map);
            return this;
        }

        /* renamed from: X */
        public C4523b m16078X(String str, long j) {
            str.getClass();
            m13785G();
            ((C4521m) this.f19705b).m16098l0().put(str, Long.valueOf(j));
            return this;
        }

        /* renamed from: Y */
        public C4523b m16077Y(long j) {
            m13785G();
            ((C4521m) this.f19705b).m16087w0(j);
            return this;
        }

        /* renamed from: Z */
        public C4523b m16076Z(long j) {
            m13785G();
            ((C4521m) this.f19705b).m16086x0(j);
            return this;
        }

        /* renamed from: a0 */
        public C4523b m16075a0(String str) {
            m13785G();
            ((C4521m) this.f19705b).m16085y0(str);
            return this;
        }
    }

    /* renamed from: k7.m$c */
    /* loaded from: classes2.dex */
    public static final class C4524c {

        /* renamed from: a */
        public static final C5182l0<String, Long> f18540a = C5182l0.m14211d(C5230u1.EnumC5232b.f19589v, "", C5230u1.EnumC5232b.f19583p, 0L);
    }

    /* renamed from: k7.m$d */
    /* loaded from: classes2.dex */
    public static final class C4525d {

        /* renamed from: a */
        public static final C5182l0<String, String> f18541a;

        static {
            C5230u1.EnumC5232b enumC5232b = C5230u1.EnumC5232b.f19589v;
            f18541a = C5182l0.m14211d(enumC5232b, "", enumC5232b, "");
        }
    }

    /* renamed from: j0 */
    public static C4521m m16100j0() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: v0 */
    public static C4523b m16088v0() {
        return DEFAULT_INSTANCE.m13791y();
    }

    /* renamed from: g0 */
    public int m16103g0() {
        return m16092r0().size();
    }

    /* renamed from: k0 */
    public long m16099k0() {
        return this.durationUs_;
    }

    /* renamed from: l0 */
    public final Map<String, Long> m16098l0() {
        return m16090t0();
    }

    /* renamed from: m0 */
    public final Map<String, String> m16097m0() {
        return m16089u0();
    }

    /* renamed from: n0 */
    public String m16096n0() {
        return this.name_;
    }

    /* renamed from: o0 */
    public List<C4514k> m16095o0() {
        return this.perfSessions_;
    }

    /* renamed from: p0 */
    public List<C4521m> m16094p0() {
        return this.subtraces_;
    }

    /* renamed from: q0 */
    public boolean m16093q0() {
        return (this.bitField0_ & 4) != 0;
    }

    /* renamed from: r0 */
    public final C5186m0<String, Long> m16092r0() {
        return this.counters_;
    }

    /* renamed from: s0 */
    public final C5186m0<String, String> m16091s0() {
        return this.customAttributes_;
    }

    static {
        C4521m c4521m = new C4521m();
        DEFAULT_INSTANCE = c4521m;
        AbstractC5248y.m13800O(C4521m.class, c4521m);
    }

    @Override // p144o7.AbstractC5248y
    /* renamed from: B */
    public final Object mo13813B(AbstractC5248y.EnumC5254f enumC5254f, Object obj, Object obj2) {
        switch (C4522a.f18539a[enumC5254f.ordinal()]) {
            case 1:
                return new C4521m();
            case 2:
                return new C4523b(null);
            case 3:
                return AbstractC5248y.m13802M(DEFAULT_INSTANCE, "\u0001\b\u0000\u0001\u0001\t\b\u0002\u0002\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0004ဂ\u0002\u0005ဂ\u0003\u00062\u0007\u001b\b2\t\u001b", new Object[]{"bitField0_", "name_", "isAuto_", "clientStartTimeUs_", "durationUs_", "counters_", C4524c.f18540a, "subtraces_", C4521m.class, "customAttributes_", C4525d.f18541a, "perfSessions_", C4514k.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                InterfaceC5112a1<C4521m> interfaceC5112a1 = PARSER;
                if (interfaceC5112a1 == null) {
                    synchronized (C4521m.class) {
                        interfaceC5112a1 = PARSER;
                        if (interfaceC5112a1 == null) {
                            interfaceC5112a1 = new AbstractC5248y.C5250b<>(DEFAULT_INSTANCE);
                            PARSER = interfaceC5112a1;
                        }
                    }
                }
                return interfaceC5112a1;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: e0 */
    public final void m16105e0() {
        C5102a0.InterfaceC5111i<C4514k> interfaceC5111i = this.perfSessions_;
        if (!interfaceC5111i.mo14568V0()) {
            this.perfSessions_ = AbstractC5248y.m13804K(interfaceC5111i);
        }
    }

    /* renamed from: f0 */
    public final void m16104f0() {
        C5102a0.InterfaceC5111i<C4521m> interfaceC5111i = this.subtraces_;
        if (!interfaceC5111i.mo14568V0()) {
            this.subtraces_ = AbstractC5248y.m13804K(interfaceC5111i);
        }
    }

    /* renamed from: t0 */
    public final C5186m0<String, Long> m16090t0() {
        if (!this.counters_.m14188l()) {
            this.counters_ = this.counters_.m14185p();
        }
        return this.counters_;
    }

    /* renamed from: u0 */
    public final C5186m0<String, String> m16089u0() {
        if (!this.customAttributes_.m14188l()) {
            this.customAttributes_ = this.customAttributes_.m14185p();
        }
        return this.customAttributes_;
    }

    /* renamed from: w0 */
    public final void m16087w0(long j) {
        this.bitField0_ |= 4;
        this.clientStartTimeUs_ = j;
    }

    /* renamed from: x0 */
    public final void m16086x0(long j) {
        this.bitField0_ |= 8;
        this.durationUs_ = j;
    }

    /* renamed from: a0 */
    public final void m16109a0(Iterable<? extends C4514k> iterable) {
        m16105e0();
        AbstractC5100a.m14668d(iterable, this.perfSessions_);
    }

    /* renamed from: b0 */
    public final void m16108b0(Iterable<? extends C4521m> iterable) {
        m16104f0();
        AbstractC5100a.m14668d(iterable, this.subtraces_);
    }

    /* renamed from: c0 */
    public final void m16107c0(C4514k c4514k) {
        c4514k.getClass();
        m16105e0();
        this.perfSessions_.add(c4514k);
    }

    /* renamed from: d0 */
    public final void m16106d0(C4521m c4521m) {
        c4521m.getClass();
        m16104f0();
        this.subtraces_.add(c4521m);
    }

    /* renamed from: h0 */
    public Map<String, Long> m16102h0() {
        return Collections.unmodifiableMap(m16092r0());
    }

    /* renamed from: i0 */
    public Map<String, String> m16101i0() {
        return Collections.unmodifiableMap(m16091s0());
    }

    /* renamed from: y0 */
    public final void m16085y0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.name_ = str;
    }
}
