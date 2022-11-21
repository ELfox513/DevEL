package p108k7;

import p144o7.AbstractC5248y;
import p144o7.C5102a0;
import p144o7.InterfaceC5112a1;
import p144o7.InterfaceC5219t0;
/* renamed from: k7.n */
/* loaded from: classes2.dex */
public final class C4526n extends AbstractC5248y<C4526n, C4528b> implements InterfaceC5219t0 {
    private static final C4526n DEFAULT_INSTANCE;
    public static final int DISPATCH_DESTINATION_FIELD_NUMBER = 1;
    private static volatile InterfaceC5112a1<C4526n> PARSER;
    private int bitField0_;
    private int dispatchDestination_;

    /* renamed from: k7.n$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C4527a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18542a;

        static {
            int[] iArr = new int[AbstractC5248y.EnumC5254f.values().length];
            f18542a = iArr;
            try {
                iArr[AbstractC5248y.EnumC5254f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18542a[AbstractC5248y.EnumC5254f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18542a[AbstractC5248y.EnumC5254f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18542a[AbstractC5248y.EnumC5254f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18542a[AbstractC5248y.EnumC5254f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18542a[AbstractC5248y.EnumC5254f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18542a[AbstractC5248y.EnumC5254f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: k7.n$b */
    /* loaded from: classes2.dex */
    public static final class C4528b extends AbstractC5248y.AbstractC5249a<C4526n, C4528b> implements InterfaceC5219t0 {
        public /* synthetic */ C4528b(C4527a c4527a) {
            this();
        }

        public C4528b() {
            super(C4526n.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: k7.n$c */
    /* loaded from: classes2.dex */
    public enum EnumC4529c implements C5102a0.InterfaceC5105c {
        SOURCE_UNKNOWN(0),
        FL_LEGACY_V1(1);
        

        /* renamed from: k */
        public static final C5102a0.InterfaceC5106d<EnumC4529c> f18545k = new C4530a();

        /* renamed from: a */
        public final int f18547a;

        /* renamed from: k7.n$c$a */
        /* loaded from: classes2.dex */
        public class C4530a implements C5102a0.InterfaceC5106d<EnumC4529c> {
            @Override // p144o7.C5102a0.InterfaceC5106d
            /* renamed from: b */
            public EnumC4529c mo14648a(int i) {
                return EnumC4529c.m16073c(i);
            }
        }

        /* renamed from: k7.n$c$b */
        /* loaded from: classes2.dex */
        public static final class C4531b implements C5102a0.InterfaceC5107e {

            /* renamed from: a */
            public static final C5102a0.InterfaceC5107e f18548a = new C4531b();

            @Override // p144o7.C5102a0.InterfaceC5107e
            /* renamed from: a */
            public boolean mo14647a(int i) {
                return EnumC4529c.m16073c(i) != null;
            }
        }

        /* renamed from: d */
        public static C5102a0.InterfaceC5107e m16072d() {
            return C4531b.f18548a;
        }

        @Override // p144o7.C5102a0.InterfaceC5105c
        /* renamed from: e */
        public final int mo14649e() {
            return this.f18547a;
        }

        /* renamed from: c */
        public static EnumC4529c m16073c(int i) {
            if (i != 0) {
                if (i != 1) {
                    return null;
                }
                return FL_LEGACY_V1;
            }
            return SOURCE_UNKNOWN;
        }

        EnumC4529c(int i) {
            this.f18547a = i;
        }
    }

    static {
        C4526n c4526n = new C4526n();
        DEFAULT_INSTANCE = c4526n;
        AbstractC5248y.m13800O(C4526n.class, c4526n);
    }

    @Override // p144o7.AbstractC5248y
    /* renamed from: B */
    public final Object mo13813B(AbstractC5248y.EnumC5254f enumC5254f, Object obj, Object obj2) {
        switch (C4527a.f18542a[enumC5254f.ordinal()]) {
            case 1:
                return new C4526n();
            case 2:
                return new C4528b(null);
            case 3:
                return AbstractC5248y.m13802M(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"bitField0_", "dispatchDestination_", EnumC4529c.m16072d()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                InterfaceC5112a1<C4526n> interfaceC5112a1 = PARSER;
                if (interfaceC5112a1 == null) {
                    synchronized (C4526n.class) {
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
}
