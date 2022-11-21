package p108k7;

import p144o7.AbstractC5248y;
import p144o7.InterfaceC5112a1;
import p144o7.InterfaceC5219t0;
/* renamed from: k7.b */
/* loaded from: classes2.dex */
public final class C4481b extends AbstractC5248y<C4481b, C4483b> implements InterfaceC5219t0 {
    public static final int CLIENT_TIME_US_FIELD_NUMBER = 1;
    private static final C4481b DEFAULT_INSTANCE;
    private static volatile InterfaceC5112a1<C4481b> PARSER = null;
    public static final int USED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 2;
    private int bitField0_;
    private long clientTimeUs_;
    private int usedAppJavaHeapMemoryKb_;

    /* renamed from: k7.b$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C4482a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18495a;

        static {
            int[] iArr = new int[AbstractC5248y.EnumC5254f.values().length];
            f18495a = iArr;
            try {
                iArr[AbstractC5248y.EnumC5254f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18495a[AbstractC5248y.EnumC5254f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18495a[AbstractC5248y.EnumC5254f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18495a[AbstractC5248y.EnumC5254f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18495a[AbstractC5248y.EnumC5254f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18495a[AbstractC5248y.EnumC5254f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18495a[AbstractC5248y.EnumC5254f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: k7.b$b */
    /* loaded from: classes2.dex */
    public static final class C4483b extends AbstractC5248y.AbstractC5249a<C4481b, C4483b> implements InterfaceC5219t0 {
        public /* synthetic */ C4483b(C4482a c4482a) {
            this();
        }

        public C4483b() {
            super(C4481b.DEFAULT_INSTANCE);
        }

        /* renamed from: Q */
        public C4483b m16307Q(long j) {
            m13785G();
            ((C4481b) this.f19705b).m16309U(j);
            return this;
        }

        /* renamed from: S */
        public C4483b m16306S(int i) {
            m13785G();
            ((C4481b) this.f19705b).m16308V(i);
            return this;
        }
    }

    /* renamed from: T */
    public static C4483b m16310T() {
        return DEFAULT_INSTANCE.m13791y();
    }

    static {
        C4481b c4481b = new C4481b();
        DEFAULT_INSTANCE = c4481b;
        AbstractC5248y.m13800O(C4481b.class, c4481b);
    }

    @Override // p144o7.AbstractC5248y
    /* renamed from: B */
    public final Object mo13813B(AbstractC5248y.EnumC5254f enumC5254f, Object obj, Object obj2) {
        switch (C4482a.f18495a[enumC5254f.ordinal()]) {
            case 1:
                return new C4481b();
            case 2:
                return new C4483b(null);
            case 3:
                return AbstractC5248y.m13802M(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002င\u0001", new Object[]{"bitField0_", "clientTimeUs_", "usedAppJavaHeapMemoryKb_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                InterfaceC5112a1<C4481b> interfaceC5112a1 = PARSER;
                if (interfaceC5112a1 == null) {
                    synchronized (C4481b.class) {
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

    /* renamed from: U */
    public final void m16309U(long j) {
        this.bitField0_ |= 1;
        this.clientTimeUs_ = j;
    }

    /* renamed from: V */
    public final void m16308V(int i) {
        this.bitField0_ |= 2;
        this.usedAppJavaHeapMemoryKb_ = i;
    }
}
