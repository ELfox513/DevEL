package p108k7;

import java.util.Map;
import p108k7.C4478a;
import p144o7.AbstractC5248y;
import p144o7.C5182l0;
import p144o7.C5186m0;
import p144o7.C5230u1;
import p144o7.InterfaceC5112a1;
import p144o7.InterfaceC5219t0;
/* renamed from: k7.c */
/* loaded from: classes2.dex */
public final class C4484c extends AbstractC5248y<C4484c, C4486b> implements InterfaceC5219t0 {
    public static final int ANDROID_APP_INFO_FIELD_NUMBER = 3;
    public static final int APPLICATION_PROCESS_STATE_FIELD_NUMBER = 5;
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 6;
    private static final C4484c DEFAULT_INSTANCE;
    public static final int GOOGLE_APP_ID_FIELD_NUMBER = 1;
    private static volatile InterfaceC5112a1<C4484c> PARSER;
    private C4478a androidAppInfo_;
    private int applicationProcessState_;
    private int bitField0_;
    private C5186m0<String, String> customAttributes_ = C5186m0.m14192f();
    private String googleAppId_ = "";
    private String appInstanceId_ = "";

    /* renamed from: k7.c$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C4485a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18496a;

        static {
            int[] iArr = new int[AbstractC5248y.EnumC5254f.values().length];
            f18496a = iArr;
            try {
                iArr[AbstractC5248y.EnumC5254f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18496a[AbstractC5248y.EnumC5254f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18496a[AbstractC5248y.EnumC5254f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18496a[AbstractC5248y.EnumC5254f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18496a[AbstractC5248y.EnumC5254f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18496a[AbstractC5248y.EnumC5254f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18496a[AbstractC5248y.EnumC5254f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: k7.c$b */
    /* loaded from: classes2.dex */
    public static final class C4486b extends AbstractC5248y.AbstractC5249a<C4484c, C4486b> implements InterfaceC5219t0 {
        public /* synthetic */ C4486b(C4485a c4485a) {
            this();
        }

        /* renamed from: Q */
        public boolean m16286Q() {
            return ((C4484c) this.f19705b).m16295a0();
        }

        public C4486b() {
            super(C4484c.DEFAULT_INSTANCE);
        }

        /* renamed from: S */
        public C4486b m16285S(Map<String, String> map) {
            m13785G();
            ((C4484c) this.f19705b).m16297Y().putAll(map);
            return this;
        }

        /* renamed from: T */
        public C4486b m16284T(C4478a.C4480b c4480b) {
            m13785G();
            ((C4484c) this.f19705b).m16290f0(c4480b.build());
            return this;
        }

        /* renamed from: U */
        public C4486b m16283U(String str) {
            m13785G();
            ((C4484c) this.f19705b).m16289g0(str);
            return this;
        }

        /* renamed from: V */
        public C4486b m16282V(EnumC4488d enumC4488d) {
            m13785G();
            ((C4484c) this.f19705b).m16288h0(enumC4488d);
            return this;
        }

        /* renamed from: W */
        public C4486b m16281W(String str) {
            m13785G();
            ((C4484c) this.f19705b).m16287i0(str);
            return this;
        }
    }

    /* renamed from: k7.c$c */
    /* loaded from: classes2.dex */
    public static final class C4487c {

        /* renamed from: a */
        public static final C5182l0<String, String> f18497a;

        static {
            C5230u1.EnumC5232b enumC5232b = C5230u1.EnumC5232b.f19589v;
            f18497a = C5182l0.m14211d(enumC5232b, "", enumC5232b, "");
        }
    }

    /* renamed from: X */
    public static C4484c m16298X() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: e0 */
    public static C4486b m16291e0() {
        return DEFAULT_INSTANCE.m13791y();
    }

    /* renamed from: W */
    public C4478a m16299W() {
        C4478a c4478a = this.androidAppInfo_;
        return c4478a == null ? C4478a.m16323U() : c4478a;
    }

    /* renamed from: Y */
    public final Map<String, String> m16297Y() {
        return m16292d0();
    }

    /* renamed from: Z */
    public boolean m16296Z() {
        return (this.bitField0_ & 4) != 0;
    }

    /* renamed from: a0 */
    public boolean m16295a0() {
        return (this.bitField0_ & 2) != 0;
    }

    /* renamed from: b0 */
    public boolean m16294b0() {
        return (this.bitField0_ & 8) != 0;
    }

    /* renamed from: c0 */
    public boolean m16293c0() {
        return (this.bitField0_ & 1) != 0;
    }

    static {
        C4484c c4484c = new C4484c();
        DEFAULT_INSTANCE = c4484c;
        AbstractC5248y.m13800O(C4484c.class, c4484c);
    }

    @Override // p144o7.AbstractC5248y
    /* renamed from: B */
    public final Object mo13813B(AbstractC5248y.EnumC5254f enumC5254f, Object obj, Object obj2) {
        switch (C4485a.f18496a[enumC5254f.ordinal()]) {
            case 1:
                return new C4484c();
            case 2:
                return new C4486b(null);
            case 3:
                return AbstractC5248y.m13802M(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0001\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0005ဌ\u0003\u00062", new Object[]{"bitField0_", "googleAppId_", "appInstanceId_", "androidAppInfo_", "applicationProcessState_", EnumC4488d.m16279d(), "customAttributes_", C4487c.f18497a});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                InterfaceC5112a1<C4484c> interfaceC5112a1 = PARSER;
                if (interfaceC5112a1 == null) {
                    synchronized (C4484c.class) {
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

    /* renamed from: d0 */
    public final C5186m0<String, String> m16292d0() {
        if (!this.customAttributes_.m14188l()) {
            this.customAttributes_ = this.customAttributes_.m14185p();
        }
        return this.customAttributes_;
    }

    /* renamed from: f0 */
    public final void m16290f0(C4478a c4478a) {
        c4478a.getClass();
        this.androidAppInfo_ = c4478a;
        this.bitField0_ |= 4;
    }

    /* renamed from: g0 */
    public final void m16289g0(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.appInstanceId_ = str;
    }

    /* renamed from: h0 */
    public final void m16288h0(EnumC4488d enumC4488d) {
        this.applicationProcessState_ = enumC4488d.mo14649e();
        this.bitField0_ |= 8;
    }

    /* renamed from: i0 */
    public final void m16287i0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.googleAppId_ = str;
    }
}
