package p108k7;

import p144o7.AbstractC5248y;
import p144o7.InterfaceC5112a1;
import p144o7.InterfaceC5219t0;
/* renamed from: k7.a */
/* loaded from: classes2.dex */
public final class C4478a extends AbstractC5248y<C4478a, C4480b> implements InterfaceC5219t0 {
    private static final C4478a DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    private static volatile InterfaceC5112a1<C4478a> PARSER = null;
    public static final int SDK_VERSION_FIELD_NUMBER = 2;
    public static final int VERSION_NAME_FIELD_NUMBER = 3;
    private int bitField0_;
    private String packageName_ = "";
    private String sdkVersion_ = "";
    private String versionName_ = "";

    /* renamed from: k7.a$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C4479a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18494a;

        static {
            int[] iArr = new int[AbstractC5248y.EnumC5254f.values().length];
            f18494a = iArr;
            try {
                iArr[AbstractC5248y.EnumC5254f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18494a[AbstractC5248y.EnumC5254f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18494a[AbstractC5248y.EnumC5254f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18494a[AbstractC5248y.EnumC5254f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18494a[AbstractC5248y.EnumC5254f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18494a[AbstractC5248y.EnumC5254f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18494a[AbstractC5248y.EnumC5254f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: k7.a$b */
    /* loaded from: classes2.dex */
    public static final class C4480b extends AbstractC5248y.AbstractC5249a<C4478a, C4480b> implements InterfaceC5219t0 {
        public /* synthetic */ C4480b(C4479a c4479a) {
            this();
        }

        public C4480b() {
            super(C4478a.DEFAULT_INSTANCE);
        }

        /* renamed from: Q */
        public C4480b m16316Q(String str) {
            m13785G();
            ((C4478a) this.f19705b).m16319Y(str);
            return this;
        }

        /* renamed from: S */
        public C4480b m16315S(String str) {
            m13785G();
            ((C4478a) this.f19705b).m16318Z(str);
            return this;
        }

        /* renamed from: T */
        public C4480b m16314T(String str) {
            m13785G();
            ((C4478a) this.f19705b).m16317a0(str);
            return this;
        }
    }

    /* renamed from: U */
    public static C4478a m16323U() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: X */
    public static C4480b m16320X() {
        return DEFAULT_INSTANCE.m13791y();
    }

    /* renamed from: V */
    public boolean m16322V() {
        return (this.bitField0_ & 1) != 0;
    }

    /* renamed from: W */
    public boolean m16321W() {
        return (this.bitField0_ & 2) != 0;
    }

    static {
        C4478a c4478a = new C4478a();
        DEFAULT_INSTANCE = c4478a;
        AbstractC5248y.m13800O(C4478a.class, c4478a);
    }

    @Override // p144o7.AbstractC5248y
    /* renamed from: B */
    public final Object mo13813B(AbstractC5248y.EnumC5254f enumC5254f, Object obj, Object obj2) {
        switch (C4479a.f18494a[enumC5254f.ordinal()]) {
            case 1:
                return new C4478a();
            case 2:
                return new C4480b(null);
            case 3:
                return AbstractC5248y.m13802M(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002", new Object[]{"bitField0_", "packageName_", "sdkVersion_", "versionName_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                InterfaceC5112a1<C4478a> interfaceC5112a1 = PARSER;
                if (interfaceC5112a1 == null) {
                    synchronized (C4478a.class) {
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
    public final void m16319Y(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.packageName_ = str;
    }

    /* renamed from: Z */
    public final void m16318Z(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.sdkVersion_ = str;
    }

    /* renamed from: a0 */
    public final void m16317a0(String str) {
        str.getClass();
        this.bitField0_ |= 4;
        this.versionName_ = str;
    }
}
