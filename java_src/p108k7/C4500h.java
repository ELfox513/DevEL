package p108k7;

import java.util.List;
import p144o7.AbstractC5100a;
import p144o7.AbstractC5248y;
import p144o7.C5102a0;
import p144o7.C5182l0;
import p144o7.C5186m0;
import p144o7.C5230u1;
import p144o7.InterfaceC5112a1;
import p144o7.InterfaceC5219t0;
/* renamed from: k7.h */
/* loaded from: classes2.dex */
public final class C4500h extends AbstractC5248y<C4500h, C4502b> implements InterfaceC5219t0 {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 7;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 12;
    private static final C4500h DEFAULT_INSTANCE;
    public static final int HTTP_METHOD_FIELD_NUMBER = 2;
    public static final int HTTP_RESPONSE_CODE_FIELD_NUMBER = 5;
    public static final int NETWORK_CLIENT_ERROR_REASON_FIELD_NUMBER = 11;
    private static volatile InterfaceC5112a1<C4500h> PARSER = null;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 13;
    public static final int REQUEST_PAYLOAD_BYTES_FIELD_NUMBER = 3;
    public static final int RESPONSE_CONTENT_TYPE_FIELD_NUMBER = 6;
    public static final int RESPONSE_PAYLOAD_BYTES_FIELD_NUMBER = 4;
    public static final int TIME_TO_REQUEST_COMPLETED_US_FIELD_NUMBER = 8;
    public static final int TIME_TO_RESPONSE_COMPLETED_US_FIELD_NUMBER = 10;
    public static final int TIME_TO_RESPONSE_INITIATED_US_FIELD_NUMBER = 9;
    public static final int URL_FIELD_NUMBER = 1;
    private int bitField0_;
    private long clientStartTimeUs_;
    private int httpMethod_;
    private int httpResponseCode_;
    private int networkClientErrorReason_;
    private long requestPayloadBytes_;
    private long responsePayloadBytes_;
    private long timeToRequestCompletedUs_;
    private long timeToResponseCompletedUs_;
    private long timeToResponseInitiatedUs_;
    private C5186m0<String, String> customAttributes_ = C5186m0.m14192f();
    private String url_ = "";
    private String responseContentType_ = "";
    private C5102a0.InterfaceC5111i<C4514k> perfSessions_ = AbstractC5248y.m13811D();

    /* renamed from: k7.h$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C4501a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18509a;

        static {
            int[] iArr = new int[AbstractC5248y.EnumC5254f.values().length];
            f18509a = iArr;
            try {
                iArr[AbstractC5248y.EnumC5254f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18509a[AbstractC5248y.EnumC5254f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18509a[AbstractC5248y.EnumC5254f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18509a[AbstractC5248y.EnumC5254f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18509a[AbstractC5248y.EnumC5254f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18509a[AbstractC5248y.EnumC5254f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18509a[AbstractC5248y.EnumC5254f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: k7.h$b */
    /* loaded from: classes2.dex */
    public static final class C4502b extends AbstractC5248y.AbstractC5249a<C4500h, C4502b> implements InterfaceC5219t0 {
        public /* synthetic */ C4502b(C4501a c4501a) {
            this();
        }

        /* renamed from: T */
        public long m16177T() {
            return ((C4500h) this.f19705b).m16188r0();
        }

        /* renamed from: U */
        public boolean m16176U() {
            return ((C4500h) this.f19705b).m16186t0();
        }

        /* renamed from: V */
        public boolean m16175V() {
            return ((C4500h) this.f19705b).m16184v0();
        }

        /* renamed from: W */
        public boolean m16174W() {
            return ((C4500h) this.f19705b).m16180z0();
        }

        public C4502b() {
            super(C4500h.DEFAULT_INSTANCE);
        }

        /* renamed from: Q */
        public C4502b m16179Q(Iterable<? extends C4514k> iterable) {
            m13785G();
            ((C4500h) this.f19705b).m16201e0(iterable);
            return this;
        }

        /* renamed from: S */
        public C4502b m16178S() {
            m13785G();
            ((C4500h) this.f19705b).m16200f0();
            return this;
        }

        /* renamed from: X */
        public C4502b m16173X(long j) {
            m13785G();
            ((C4500h) this.f19705b).m16226C0(j);
            return this;
        }

        /* renamed from: Y */
        public C4502b m16172Y(EnumC4504d enumC4504d) {
            m13785G();
            ((C4500h) this.f19705b).m16225D0(enumC4504d);
            return this;
        }

        /* renamed from: Z */
        public C4502b m16171Z(int i) {
            m13785G();
            ((C4500h) this.f19705b).m16224E0(i);
            return this;
        }

        /* renamed from: a0 */
        public C4502b m16170a0(EnumC4507e enumC4507e) {
            m13785G();
            ((C4500h) this.f19705b).m16223F0(enumC4507e);
            return this;
        }

        /* renamed from: b0 */
        public C4502b m16169b0(long j) {
            m13785G();
            ((C4500h) this.f19705b).m16222G0(j);
            return this;
        }

        /* renamed from: c0 */
        public C4502b m16168c0(String str) {
            m13785G();
            ((C4500h) this.f19705b).m16221H0(str);
            return this;
        }

        /* renamed from: d0 */
        public C4502b m16167d0(long j) {
            m13785G();
            ((C4500h) this.f19705b).m16220I0(j);
            return this;
        }

        /* renamed from: e0 */
        public C4502b m16166e0(long j) {
            m13785G();
            ((C4500h) this.f19705b).m16219J0(j);
            return this;
        }

        /* renamed from: f0 */
        public C4502b m16165f0(long j) {
            m13785G();
            ((C4500h) this.f19705b).m16218K0(j);
            return this;
        }

        /* renamed from: g0 */
        public C4502b m16164g0(long j) {
            m13785G();
            ((C4500h) this.f19705b).m16217L0(j);
            return this;
        }

        /* renamed from: h0 */
        public C4502b m16163h0(String str) {
            m13785G();
            ((C4500h) this.f19705b).m16216M0(str);
            return this;
        }
    }

    /* renamed from: k7.h$c */
    /* loaded from: classes2.dex */
    public static final class C4503c {

        /* renamed from: a */
        public static final C5182l0<String, String> f18510a;

        static {
            C5230u1.EnumC5232b enumC5232b = C5230u1.EnumC5232b.f19589v;
            f18510a = C5182l0.m14211d(enumC5232b, "", enumC5232b, "");
        }
    }

    /* renamed from: k7.h$e */
    /* loaded from: classes2.dex */
    public enum EnumC4507e implements C5102a0.InterfaceC5105c {
        NETWORK_CLIENT_ERROR_REASON_UNKNOWN(0),
        GENERIC_CLIENT_ERROR(1);
        

        /* renamed from: k */
        public static final C5102a0.InterfaceC5106d<EnumC4507e> f18527k = new C4508a();

        /* renamed from: a */
        public final int f18529a;

        /* renamed from: k7.h$e$a */
        /* loaded from: classes2.dex */
        public class C4508a implements C5102a0.InterfaceC5106d<EnumC4507e> {
            @Override // p144o7.C5102a0.InterfaceC5106d
            /* renamed from: b */
            public EnumC4507e mo14648a(int i) {
                return EnumC4507e.m16159c(i);
            }
        }

        /* renamed from: k7.h$e$b */
        /* loaded from: classes2.dex */
        public static final class C4509b implements C5102a0.InterfaceC5107e {

            /* renamed from: a */
            public static final C5102a0.InterfaceC5107e f18530a = new C4509b();

            @Override // p144o7.C5102a0.InterfaceC5107e
            /* renamed from: a */
            public boolean mo14647a(int i) {
                return EnumC4507e.m16159c(i) != null;
            }
        }

        /* renamed from: d */
        public static C5102a0.InterfaceC5107e m16158d() {
            return C4509b.f18530a;
        }

        @Override // p144o7.C5102a0.InterfaceC5105c
        /* renamed from: e */
        public final int mo14649e() {
            return this.f18529a;
        }

        /* renamed from: c */
        public static EnumC4507e m16159c(int i) {
            if (i != 0) {
                if (i != 1) {
                    return null;
                }
                return GENERIC_CLIENT_ERROR;
            }
            return NETWORK_CLIENT_ERROR_REASON_UNKNOWN;
        }

        EnumC4507e(int i) {
            this.f18529a = i;
        }
    }

    /* renamed from: B0 */
    public static C4502b m16227B0() {
        return DEFAULT_INSTANCE.m13791y();
    }

    /* renamed from: i0 */
    public static C4500h m16197i0() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: A0 */
    public boolean m16228A0() {
        return (this.bitField0_ & 512) != 0;
    }

    /* renamed from: h0 */
    public long m16198h0() {
        return this.clientStartTimeUs_;
    }

    /* renamed from: k0 */
    public int m16195k0() {
        return this.httpResponseCode_;
    }

    /* renamed from: l0 */
    public List<C4514k> m16194l0() {
        return this.perfSessions_;
    }

    /* renamed from: m0 */
    public long m16193m0() {
        return this.requestPayloadBytes_;
    }

    /* renamed from: n0 */
    public String m16192n0() {
        return this.responseContentType_;
    }

    /* renamed from: o0 */
    public long m16191o0() {
        return this.responsePayloadBytes_;
    }

    /* renamed from: p0 */
    public long m16190p0() {
        return this.timeToRequestCompletedUs_;
    }

    /* renamed from: q0 */
    public long m16189q0() {
        return this.timeToResponseCompletedUs_;
    }

    /* renamed from: r0 */
    public long m16188r0() {
        return this.timeToResponseInitiatedUs_;
    }

    /* renamed from: s0 */
    public String m16187s0() {
        return this.url_;
    }

    /* renamed from: t0 */
    public boolean m16186t0() {
        return (this.bitField0_ & 128) != 0;
    }

    /* renamed from: u0 */
    public boolean m16185u0() {
        return (this.bitField0_ & 2) != 0;
    }

    /* renamed from: v0 */
    public boolean m16184v0() {
        return (this.bitField0_ & 32) != 0;
    }

    /* renamed from: w0 */
    public boolean m16183w0() {
        return (this.bitField0_ & 4) != 0;
    }

    /* renamed from: x0 */
    public boolean m16182x0() {
        return (this.bitField0_ & 8) != 0;
    }

    /* renamed from: y0 */
    public boolean m16181y0() {
        return (this.bitField0_ & 256) != 0;
    }

    /* renamed from: z0 */
    public boolean m16180z0() {
        return (this.bitField0_ & 1024) != 0;
    }

    /* renamed from: k7.h$d */
    /* loaded from: classes2.dex */
    public enum EnumC4504d implements C5102a0.InterfaceC5105c {
        HTTP_METHOD_UNKNOWN(0),
        GET(1),
        PUT(2),
        POST(3),
        DELETE(4),
        HEAD(5),
        PATCH(6),
        OPTIONS(7),
        TRACE(8),
        CONNECT(9);
        

        /* renamed from: w */
        public static final C5102a0.InterfaceC5106d<EnumC4504d> f18521w = new C4505a();

        /* renamed from: a */
        public final int f18523a;

        /* renamed from: k7.h$d$a */
        /* loaded from: classes2.dex */
        public class C4505a implements C5102a0.InterfaceC5106d<EnumC4504d> {
            @Override // p144o7.C5102a0.InterfaceC5106d
            /* renamed from: b */
            public EnumC4504d mo14648a(int i) {
                return EnumC4504d.m16162c(i);
            }
        }

        /* renamed from: k7.h$d$b */
        /* loaded from: classes2.dex */
        public static final class C4506b implements C5102a0.InterfaceC5107e {

            /* renamed from: a */
            public static final C5102a0.InterfaceC5107e f18524a = new C4506b();

            @Override // p144o7.C5102a0.InterfaceC5107e
            /* renamed from: a */
            public boolean mo14647a(int i) {
                return EnumC4504d.m16162c(i) != null;
            }
        }

        /* renamed from: d */
        public static C5102a0.InterfaceC5107e m16161d() {
            return C4506b.f18524a;
        }

        @Override // p144o7.C5102a0.InterfaceC5105c
        /* renamed from: e */
        public final int mo14649e() {
            return this.f18523a;
        }

        EnumC4504d(int i) {
            this.f18523a = i;
        }

        /* renamed from: c */
        public static EnumC4504d m16162c(int i) {
            switch (i) {
                case 0:
                    return HTTP_METHOD_UNKNOWN;
                case 1:
                    return GET;
                case 2:
                    return PUT;
                case 3:
                    return POST;
                case 4:
                    return DELETE;
                case 5:
                    return HEAD;
                case 6:
                    return PATCH;
                case 7:
                    return OPTIONS;
                case 8:
                    return TRACE;
                case 9:
                    return CONNECT;
                default:
                    return null;
            }
        }
    }

    static {
        C4500h c4500h = new C4500h();
        DEFAULT_INSTANCE = c4500h;
        AbstractC5248y.m13800O(C4500h.class, c4500h);
    }

    @Override // p144o7.AbstractC5248y
    /* renamed from: B */
    public final Object mo13813B(AbstractC5248y.EnumC5254f enumC5254f, Object obj, Object obj2) {
        switch (C4501a.f18509a[enumC5254f.ordinal()]) {
            case 1:
                return new C4500h();
            case 2:
                return new C4502b(null);
            case 3:
                return AbstractC5248y.m13802M(DEFAULT_INSTANCE, "\u0001\r\u0000\u0001\u0001\r\r\u0001\u0001\u0000\u0001ဈ\u0000\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005င\u0005\u0006ဈ\u0006\u0007ဂ\u0007\bဂ\b\tဂ\t\nဂ\n\u000bဌ\u0004\f2\r\u001b", new Object[]{"bitField0_", "url_", "httpMethod_", EnumC4504d.m16161d(), "requestPayloadBytes_", "responsePayloadBytes_", "httpResponseCode_", "responseContentType_", "clientStartTimeUs_", "timeToRequestCompletedUs_", "timeToResponseInitiatedUs_", "timeToResponseCompletedUs_", "networkClientErrorReason_", EnumC4507e.m16158d(), "customAttributes_", C4503c.f18510a, "perfSessions_", C4514k.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                InterfaceC5112a1<C4500h> interfaceC5112a1 = PARSER;
                if (interfaceC5112a1 == null) {
                    synchronized (C4500h.class) {
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

    /* renamed from: C0 */
    public final void m16226C0(long j) {
        this.bitField0_ |= 128;
        this.clientStartTimeUs_ = j;
    }

    /* renamed from: E0 */
    public final void m16224E0(int i) {
        this.bitField0_ |= 32;
        this.httpResponseCode_ = i;
    }

    /* renamed from: G0 */
    public final void m16222G0(long j) {
        this.bitField0_ |= 4;
        this.requestPayloadBytes_ = j;
    }

    /* renamed from: I0 */
    public final void m16220I0(long j) {
        this.bitField0_ |= 8;
        this.responsePayloadBytes_ = j;
    }

    /* renamed from: J0 */
    public final void m16219J0(long j) {
        this.bitField0_ |= 256;
        this.timeToRequestCompletedUs_ = j;
    }

    /* renamed from: K0 */
    public final void m16218K0(long j) {
        this.bitField0_ |= 1024;
        this.timeToResponseCompletedUs_ = j;
    }

    /* renamed from: L0 */
    public final void m16217L0(long j) {
        this.bitField0_ |= 512;
        this.timeToResponseInitiatedUs_ = j;
    }

    /* renamed from: f0 */
    public final void m16200f0() {
        this.bitField0_ &= -65;
        this.responseContentType_ = m16197i0().m16192n0();
    }

    /* renamed from: g0 */
    public final void m16199g0() {
        C5102a0.InterfaceC5111i<C4514k> interfaceC5111i = this.perfSessions_;
        if (!interfaceC5111i.mo14568V0()) {
            this.perfSessions_ = AbstractC5248y.m13804K(interfaceC5111i);
        }
    }

    /* renamed from: j0 */
    public EnumC4504d m16196j0() {
        EnumC4504d m16162c = EnumC4504d.m16162c(this.httpMethod_);
        if (m16162c == null) {
            return EnumC4504d.HTTP_METHOD_UNKNOWN;
        }
        return m16162c;
    }

    /* renamed from: D0 */
    public final void m16225D0(EnumC4504d enumC4504d) {
        this.httpMethod_ = enumC4504d.mo14649e();
        this.bitField0_ |= 2;
    }

    /* renamed from: F0 */
    public final void m16223F0(EnumC4507e enumC4507e) {
        this.networkClientErrorReason_ = enumC4507e.mo14649e();
        this.bitField0_ |= 16;
    }

    /* renamed from: H0 */
    public final void m16221H0(String str) {
        str.getClass();
        this.bitField0_ |= 64;
        this.responseContentType_ = str;
    }

    /* renamed from: M0 */
    public final void m16216M0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.url_ = str;
    }

    /* renamed from: e0 */
    public final void m16201e0(Iterable<? extends C4514k> iterable) {
        m16199g0();
        AbstractC5100a.m14668d(iterable, this.perfSessions_);
    }
}
