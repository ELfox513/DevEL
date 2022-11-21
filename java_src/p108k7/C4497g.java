package p108k7;

import p144o7.AbstractC5248y;
import p144o7.C5102a0;
import p144o7.InterfaceC5112a1;
import p144o7.InterfaceC5219t0;
/* renamed from: k7.g */
/* loaded from: classes2.dex */
public final class C4497g extends AbstractC5248y<C4497g, C4499b> implements InterfaceC5219t0 {
    public static final int ANDROID_MEMORY_READINGS_FIELD_NUMBER = 4;
    public static final int CPU_METRIC_READINGS_FIELD_NUMBER = 2;
    private static final C4497g DEFAULT_INSTANCE;
    public static final int GAUGE_METADATA_FIELD_NUMBER = 3;
    private static volatile InterfaceC5112a1<C4497g> PARSER = null;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private int bitField0_;
    private C4494f gaugeMetadata_;
    private String sessionId_ = "";
    private C5102a0.InterfaceC5111i<C4491e> cpuMetricReadings_ = AbstractC5248y.m13811D();
    private C5102a0.InterfaceC5111i<C4481b> androidMemoryReadings_ = AbstractC5248y.m13811D();

    /* renamed from: k7.g$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C4498a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18508a;

        static {
            int[] iArr = new int[AbstractC5248y.EnumC5254f.values().length];
            f18508a = iArr;
            try {
                iArr[AbstractC5248y.EnumC5254f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18508a[AbstractC5248y.EnumC5254f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18508a[AbstractC5248y.EnumC5254f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18508a[AbstractC5248y.EnumC5254f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18508a[AbstractC5248y.EnumC5254f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18508a[AbstractC5248y.EnumC5254f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18508a[AbstractC5248y.EnumC5254f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: k7.g$b */
    /* loaded from: classes2.dex */
    public static final class C4499b extends AbstractC5248y.AbstractC5249a<C4497g, C4499b> implements InterfaceC5219t0 {
        public /* synthetic */ C4499b(C4498a c4498a) {
            this();
        }

        public C4499b() {
            super(C4497g.DEFAULT_INSTANCE);
        }

        /* renamed from: Q */
        public C4499b m16232Q(C4481b c4481b) {
            m13785G();
            ((C4497g) this.f19705b).m16245V(c4481b);
            return this;
        }

        /* renamed from: S */
        public C4499b m16231S(C4491e c4491e) {
            m13785G();
            ((C4497g) this.f19705b).m16244W(c4491e);
            return this;
        }

        /* renamed from: T */
        public C4499b m16230T(C4494f c4494f) {
            m13785G();
            ((C4497g) this.f19705b).m16234g0(c4494f);
            return this;
        }

        /* renamed from: U */
        public C4499b m16229U(String str) {
            m13785G();
            ((C4497g) this.f19705b).m16233h0(str);
            return this;
        }
    }

    /* renamed from: b0 */
    public static C4497g m16239b0() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: f0 */
    public static C4499b m16235f0() {
        return DEFAULT_INSTANCE.m13791y();
    }

    /* renamed from: Z */
    public int m16241Z() {
        return this.androidMemoryReadings_.size();
    }

    /* renamed from: a0 */
    public int m16240a0() {
        return this.cpuMetricReadings_.size();
    }

    /* renamed from: c0 */
    public C4494f m16238c0() {
        C4494f c4494f = this.gaugeMetadata_;
        return c4494f == null ? C4494f.m16261V() : c4494f;
    }

    /* renamed from: d0 */
    public boolean m16237d0() {
        return (this.bitField0_ & 2) != 0;
    }

    /* renamed from: e0 */
    public boolean m16236e0() {
        return (this.bitField0_ & 1) != 0;
    }

    static {
        C4497g c4497g = new C4497g();
        DEFAULT_INSTANCE = c4497g;
        AbstractC5248y.m13800O(C4497g.class, c4497g);
    }

    @Override // p144o7.AbstractC5248y
    /* renamed from: B */
    public final Object mo13813B(AbstractC5248y.EnumC5254f enumC5254f, Object obj, Object obj2) {
        switch (C4498a.f18508a[enumC5254f.ordinal()]) {
            case 1:
                return new C4497g();
            case 2:
                return new C4499b(null);
            case 3:
                return AbstractC5248y.m13802M(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဉ\u0001\u0004\u001b", new Object[]{"bitField0_", "sessionId_", "cpuMetricReadings_", C4491e.class, "gaugeMetadata_", "androidMemoryReadings_", C4481b.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                InterfaceC5112a1<C4497g> interfaceC5112a1 = PARSER;
                if (interfaceC5112a1 == null) {
                    synchronized (C4497g.class) {
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

    /* renamed from: X */
    public final void m16243X() {
        C5102a0.InterfaceC5111i<C4481b> interfaceC5111i = this.androidMemoryReadings_;
        if (!interfaceC5111i.mo14568V0()) {
            this.androidMemoryReadings_ = AbstractC5248y.m13804K(interfaceC5111i);
        }
    }

    /* renamed from: Y */
    public final void m16242Y() {
        C5102a0.InterfaceC5111i<C4491e> interfaceC5111i = this.cpuMetricReadings_;
        if (!interfaceC5111i.mo14568V0()) {
            this.cpuMetricReadings_ = AbstractC5248y.m13804K(interfaceC5111i);
        }
    }

    /* renamed from: V */
    public final void m16245V(C4481b c4481b) {
        c4481b.getClass();
        m16243X();
        this.androidMemoryReadings_.add(c4481b);
    }

    /* renamed from: W */
    public final void m16244W(C4491e c4491e) {
        c4491e.getClass();
        m16242Y();
        this.cpuMetricReadings_.add(c4491e);
    }

    /* renamed from: g0 */
    public final void m16234g0(C4494f c4494f) {
        c4494f.getClass();
        this.gaugeMetadata_ = c4494f;
        this.bitField0_ |= 2;
    }

    /* renamed from: h0 */
    public final void m16233h0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.sessionId_ = str;
    }
}
