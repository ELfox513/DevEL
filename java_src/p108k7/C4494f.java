package p108k7;

import p144o7.AbstractC5248y;
import p144o7.InterfaceC5112a1;
import p144o7.InterfaceC5219t0;
/* renamed from: k7.f */
/* loaded from: classes2.dex */
public final class C4494f extends AbstractC5248y<C4494f, C4496b> implements InterfaceC5219t0 {
    public static final int CPU_CLOCK_RATE_KHZ_FIELD_NUMBER = 2;
    public static final int CPU_PROCESSOR_COUNT_FIELD_NUMBER = 6;
    private static final C4494f DEFAULT_INSTANCE;
    public static final int DEVICE_RAM_SIZE_KB_FIELD_NUMBER = 3;
    public static final int MAX_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 4;
    public static final int MAX_ENCOURAGED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 5;
    private static volatile InterfaceC5112a1<C4494f> PARSER = null;
    public static final int PROCESS_NAME_FIELD_NUMBER = 1;
    private int bitField0_;
    private int cpuClockRateKhz_;
    private int cpuProcessorCount_;
    private int deviceRamSizeKb_;
    private int maxAppJavaHeapMemoryKb_;
    private int maxEncouragedAppJavaHeapMemoryKb_;
    private String processName_ = "";

    /* renamed from: k7.f$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C4495a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18507a;

        static {
            int[] iArr = new int[AbstractC5248y.EnumC5254f.values().length];
            f18507a = iArr;
            try {
                iArr[AbstractC5248y.EnumC5254f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18507a[AbstractC5248y.EnumC5254f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18507a[AbstractC5248y.EnumC5254f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18507a[AbstractC5248y.EnumC5254f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18507a[AbstractC5248y.EnumC5254f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18507a[AbstractC5248y.EnumC5254f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18507a[AbstractC5248y.EnumC5254f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: k7.f$b */
    /* loaded from: classes2.dex */
    public static final class C4496b extends AbstractC5248y.AbstractC5249a<C4494f, C4496b> implements InterfaceC5219t0 {
        public /* synthetic */ C4496b(C4495a c4495a) {
            this();
        }

        public C4496b() {
            super(C4494f.DEFAULT_INSTANCE);
        }

        /* renamed from: Q */
        public C4496b m16254Q(int i) {
            m13785G();
            ((C4494f) this.f19705b).m16258Y(i);
            return this;
        }

        /* renamed from: S */
        public C4496b m16253S(int i) {
            m13785G();
            ((C4494f) this.f19705b).m16257Z(i);
            return this;
        }

        /* renamed from: T */
        public C4496b m16252T(int i) {
            m13785G();
            ((C4494f) this.f19705b).m16256a0(i);
            return this;
        }

        /* renamed from: U */
        public C4496b m16251U(String str) {
            m13785G();
            ((C4494f) this.f19705b).m16255b0(str);
            return this;
        }
    }

    /* renamed from: V */
    public static C4494f m16261V() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: X */
    public static C4496b m16259X() {
        return DEFAULT_INSTANCE.m13791y();
    }

    /* renamed from: W */
    public boolean m16260W() {
        return (this.bitField0_ & 16) != 0;
    }

    static {
        C4494f c4494f = new C4494f();
        DEFAULT_INSTANCE = c4494f;
        AbstractC5248y.m13800O(C4494f.class, c4494f);
    }

    @Override // p144o7.AbstractC5248y
    /* renamed from: B */
    public final Object mo13813B(AbstractC5248y.EnumC5254f enumC5254f, Object obj, Object obj2) {
        switch (C4495a.f18507a[enumC5254f.ordinal()]) {
            case 1:
                return new C4494f();
            case 2:
                return new C4496b(null);
            case 3:
                return AbstractC5248y.m13802M(DEFAULT_INSTANCE, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001\u0003င\u0003\u0004င\u0004\u0005င\u0005\u0006င\u0002", new Object[]{"bitField0_", "processName_", "cpuClockRateKhz_", "deviceRamSizeKb_", "maxAppJavaHeapMemoryKb_", "maxEncouragedAppJavaHeapMemoryKb_", "cpuProcessorCount_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                InterfaceC5112a1<C4494f> interfaceC5112a1 = PARSER;
                if (interfaceC5112a1 == null) {
                    synchronized (C4494f.class) {
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
    public final void m16258Y(int i) {
        this.bitField0_ |= 8;
        this.deviceRamSizeKb_ = i;
    }

    /* renamed from: Z */
    public final void m16257Z(int i) {
        this.bitField0_ |= 16;
        this.maxAppJavaHeapMemoryKb_ = i;
    }

    /* renamed from: a0 */
    public final void m16256a0(int i) {
        this.bitField0_ |= 32;
        this.maxEncouragedAppJavaHeapMemoryKb_ = i;
    }

    /* renamed from: b0 */
    public final void m16255b0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.processName_ = str;
    }
}
