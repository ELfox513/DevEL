package p108k7;

import p144o7.AbstractC5248y;
import p144o7.InterfaceC5112a1;
import p144o7.InterfaceC5219t0;
/* renamed from: k7.e */
/* loaded from: classes2.dex */
public final class C4491e extends AbstractC5248y<C4491e, C4493b> implements InterfaceC5219t0 {
    public static final int CLIENT_TIME_US_FIELD_NUMBER = 1;
    private static final C4491e DEFAULT_INSTANCE;
    private static volatile InterfaceC5112a1<C4491e> PARSER = null;
    public static final int SYSTEM_TIME_US_FIELD_NUMBER = 3;
    public static final int USER_TIME_US_FIELD_NUMBER = 2;
    private int bitField0_;
    private long clientTimeUs_;
    private long systemTimeUs_;
    private long userTimeUs_;

    /* renamed from: k7.e$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C4492a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18506a;

        static {
            int[] iArr = new int[AbstractC5248y.EnumC5254f.values().length];
            f18506a = iArr;
            try {
                iArr[AbstractC5248y.EnumC5254f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18506a[AbstractC5248y.EnumC5254f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18506a[AbstractC5248y.EnumC5254f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18506a[AbstractC5248y.EnumC5254f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18506a[AbstractC5248y.EnumC5254f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18506a[AbstractC5248y.EnumC5254f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18506a[AbstractC5248y.EnumC5254f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: k7.e$b */
    /* loaded from: classes2.dex */
    public static final class C4493b extends AbstractC5248y.AbstractC5249a<C4491e, C4493b> implements InterfaceC5219t0 {
        public /* synthetic */ C4493b(C4492a c4492a) {
            this();
        }

        public C4493b() {
            super(C4491e.DEFAULT_INSTANCE);
        }

        /* renamed from: Q */
        public C4493b m16269Q(long j) {
            m13785G();
            ((C4491e) this.f19705b).m16272V(j);
            return this;
        }

        /* renamed from: S */
        public C4493b m16268S(long j) {
            m13785G();
            ((C4491e) this.f19705b).m16271W(j);
            return this;
        }

        /* renamed from: T */
        public C4493b m16267T(long j) {
            m13785G();
            ((C4491e) this.f19705b).m16270X(j);
            return this;
        }
    }

    /* renamed from: U */
    public static C4493b m16273U() {
        return DEFAULT_INSTANCE.m13791y();
    }

    static {
        C4491e c4491e = new C4491e();
        DEFAULT_INSTANCE = c4491e;
        AbstractC5248y.m13800O(C4491e.class, c4491e);
    }

    @Override // p144o7.AbstractC5248y
    /* renamed from: B */
    public final Object mo13813B(AbstractC5248y.EnumC5254f enumC5254f, Object obj, Object obj2) {
        switch (C4492a.f18506a[enumC5254f.ordinal()]) {
            case 1:
                return new C4491e();
            case 2:
                return new C4493b(null);
            case 3:
                return AbstractC5248y.m13802M(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002", new Object[]{"bitField0_", "clientTimeUs_", "userTimeUs_", "systemTimeUs_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                InterfaceC5112a1<C4491e> interfaceC5112a1 = PARSER;
                if (interfaceC5112a1 == null) {
                    synchronized (C4491e.class) {
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

    /* renamed from: V */
    public final void m16272V(long j) {
        this.bitField0_ |= 1;
        this.clientTimeUs_ = j;
    }

    /* renamed from: W */
    public final void m16271W(long j) {
        this.bitField0_ |= 4;
        this.systemTimeUs_ = j;
    }

    /* renamed from: X */
    public final void m16270X(long j) {
        this.bitField0_ |= 2;
        this.userTimeUs_ = j;
    }
}
