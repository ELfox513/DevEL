package p108k7;

import p108k7.C4484c;
import p144o7.AbstractC5248y;
import p144o7.InterfaceC5112a1;
/* renamed from: k7.i */
/* loaded from: classes2.dex */
public final class C4510i extends AbstractC5248y<C4510i, C4512b> implements InterfaceC4513j {
    public static final int APPLICATION_INFO_FIELD_NUMBER = 1;
    private static final C4510i DEFAULT_INSTANCE;
    public static final int GAUGE_METRIC_FIELD_NUMBER = 4;
    public static final int NETWORK_REQUEST_METRIC_FIELD_NUMBER = 3;
    private static volatile InterfaceC5112a1<C4510i> PARSER = null;
    public static final int TRACE_METRIC_FIELD_NUMBER = 2;
    public static final int TRANSPORT_INFO_FIELD_NUMBER = 5;
    private C4484c applicationInfo_;
    private int bitField0_;
    private C4497g gaugeMetric_;
    private C4500h networkRequestMetric_;
    private C4521m traceMetric_;
    private C4526n transportInfo_;

    /* renamed from: k7.i$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C4511a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18531a;

        static {
            int[] iArr = new int[AbstractC5248y.EnumC5254f.values().length];
            f18531a = iArr;
            try {
                iArr[AbstractC5248y.EnumC5254f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18531a[AbstractC5248y.EnumC5254f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18531a[AbstractC5248y.EnumC5254f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18531a[AbstractC5248y.EnumC5254f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18531a[AbstractC5248y.EnumC5254f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18531a[AbstractC5248y.EnumC5254f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18531a[AbstractC5248y.EnumC5254f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: k7.i$b */
    /* loaded from: classes2.dex */
    public static final class C4512b extends AbstractC5248y.AbstractC5249a<C4510i, C4512b> implements InterfaceC4513j {
        public /* synthetic */ C4512b(C4511a c4511a) {
            this();
        }

        @Override // p108k7.InterfaceC4513j
        /* renamed from: b */
        public boolean mo16140b() {
            return ((C4510i) this.f19705b).mo16140b();
        }

        @Override // p108k7.InterfaceC4513j
        /* renamed from: i */
        public boolean mo16139i() {
            return ((C4510i) this.f19705b).mo16139i();
        }

        @Override // p108k7.InterfaceC4513j
        /* renamed from: j */
        public C4521m mo16138j() {
            return ((C4510i) this.f19705b).mo16138j();
        }

        @Override // p108k7.InterfaceC4513j
        /* renamed from: n */
        public boolean mo16137n() {
            return ((C4510i) this.f19705b).mo16137n();
        }

        @Override // p108k7.InterfaceC4513j
        /* renamed from: o */
        public C4500h mo16136o() {
            return ((C4510i) this.f19705b).mo16136o();
        }

        @Override // p108k7.InterfaceC4513j
        /* renamed from: t */
        public C4497g mo16135t() {
            return ((C4510i) this.f19705b).mo16135t();
        }

        public C4512b() {
            super(C4510i.DEFAULT_INSTANCE);
        }

        /* renamed from: Q */
        public C4512b m16144Q(C4484c.C4486b c4486b) {
            m13785G();
            ((C4510i) this.f19705b).m16148Y(c4486b.build());
            return this;
        }

        /* renamed from: S */
        public C4512b m16143S(C4497g c4497g) {
            m13785G();
            ((C4510i) this.f19705b).m16147Z(c4497g);
            return this;
        }

        /* renamed from: T */
        public C4512b m16142T(C4500h c4500h) {
            m13785G();
            ((C4510i) this.f19705b).m16146a0(c4500h);
            return this;
        }

        /* renamed from: U */
        public C4512b m16141U(C4521m c4521m) {
            m13785G();
            ((C4510i) this.f19705b).m16145b0(c4521m);
            return this;
        }
    }

    /* renamed from: X */
    public static C4512b m16149X() {
        return DEFAULT_INSTANCE.m13791y();
    }

    /* renamed from: V */
    public C4484c m16151V() {
        C4484c c4484c = this.applicationInfo_;
        return c4484c == null ? C4484c.m16298X() : c4484c;
    }

    /* renamed from: W */
    public boolean m16150W() {
        return (this.bitField0_ & 1) != 0;
    }

    @Override // p108k7.InterfaceC4513j
    /* renamed from: b */
    public boolean mo16140b() {
        return (this.bitField0_ & 8) != 0;
    }

    @Override // p108k7.InterfaceC4513j
    /* renamed from: i */
    public boolean mo16139i() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // p108k7.InterfaceC4513j
    /* renamed from: j */
    public C4521m mo16138j() {
        C4521m c4521m = this.traceMetric_;
        return c4521m == null ? C4521m.m16100j0() : c4521m;
    }

    @Override // p108k7.InterfaceC4513j
    /* renamed from: n */
    public boolean mo16137n() {
        return (this.bitField0_ & 4) != 0;
    }

    @Override // p108k7.InterfaceC4513j
    /* renamed from: o */
    public C4500h mo16136o() {
        C4500h c4500h = this.networkRequestMetric_;
        return c4500h == null ? C4500h.m16197i0() : c4500h;
    }

    @Override // p108k7.InterfaceC4513j
    /* renamed from: t */
    public C4497g mo16135t() {
        C4497g c4497g = this.gaugeMetric_;
        return c4497g == null ? C4497g.m16239b0() : c4497g;
    }

    static {
        C4510i c4510i = new C4510i();
        DEFAULT_INSTANCE = c4510i;
        AbstractC5248y.m13800O(C4510i.class, c4510i);
    }

    @Override // p144o7.AbstractC5248y
    /* renamed from: B */
    public final Object mo13813B(AbstractC5248y.EnumC5254f enumC5254f, Object obj, Object obj2) {
        switch (C4511a.f18531a[enumC5254f.ordinal()]) {
            case 1:
                return new C4510i();
            case 2:
                return new C4512b(null);
            case 3:
                return AbstractC5248y.m13802M(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဉ\u0004", new Object[]{"bitField0_", "applicationInfo_", "traceMetric_", "networkRequestMetric_", "gaugeMetric_", "transportInfo_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                InterfaceC5112a1<C4510i> interfaceC5112a1 = PARSER;
                if (interfaceC5112a1 == null) {
                    synchronized (C4510i.class) {
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

    /* renamed from: Y */
    public final void m16148Y(C4484c c4484c) {
        c4484c.getClass();
        this.applicationInfo_ = c4484c;
        this.bitField0_ |= 1;
    }

    /* renamed from: Z */
    public final void m16147Z(C4497g c4497g) {
        c4497g.getClass();
        this.gaugeMetric_ = c4497g;
        this.bitField0_ |= 8;
    }

    /* renamed from: a0 */
    public final void m16146a0(C4500h c4500h) {
        c4500h.getClass();
        this.networkRequestMetric_ = c4500h;
        this.bitField0_ |= 4;
    }

    /* renamed from: b0 */
    public final void m16145b0(C4521m c4521m) {
        c4521m.getClass();
        this.traceMetric_ = c4521m;
        this.bitField0_ |= 2;
    }
}
