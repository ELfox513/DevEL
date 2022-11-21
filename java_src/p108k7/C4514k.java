package p108k7;

import p144o7.AbstractC5248y;
import p144o7.C5102a0;
import p144o7.InterfaceC5112a1;
import p144o7.InterfaceC5114b0;
import p144o7.InterfaceC5219t0;
/* renamed from: k7.k */
/* loaded from: classes2.dex */
public final class C4514k extends AbstractC5248y<C4514k, C4517c> implements InterfaceC5219t0 {
    private static final C4514k DEFAULT_INSTANCE;
    private static volatile InterfaceC5112a1<C4514k> PARSER = null;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    public static final int SESSION_VERBOSITY_FIELD_NUMBER = 2;
    private static final InterfaceC5114b0<Integer, EnumC4518l> sessionVerbosity_converter_ = new C4515a();
    private int bitField0_;
    private String sessionId_ = "";
    private C5102a0.InterfaceC5109g sessionVerbosity_ = AbstractC5248y.m13812C();

    /* renamed from: k7.k$b */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C4516b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18532a;

        static {
            int[] iArr = new int[AbstractC5248y.EnumC5254f.values().length];
            f18532a = iArr;
            try {
                iArr[AbstractC5248y.EnumC5254f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18532a[AbstractC5248y.EnumC5254f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18532a[AbstractC5248y.EnumC5254f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18532a[AbstractC5248y.EnumC5254f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18532a[AbstractC5248y.EnumC5254f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18532a[AbstractC5248y.EnumC5254f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18532a[AbstractC5248y.EnumC5254f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: k7.k$c */
    /* loaded from: classes2.dex */
    public static final class C4517c extends AbstractC5248y.AbstractC5249a<C4514k, C4517c> implements InterfaceC5219t0 {
        public /* synthetic */ C4517c(C4515a c4515a) {
            this();
        }

        public C4517c() {
            super(C4514k.DEFAULT_INSTANCE);
        }

        /* renamed from: Q */
        public C4517c m16124Q(EnumC4518l enumC4518l) {
            m13785G();
            ((C4514k) this.f19705b).m16131T(enumC4518l);
            return this;
        }

        /* renamed from: S */
        public C4517c m16123S(String str) {
            m13785G();
            ((C4514k) this.f19705b).m16126Y(str);
            return this;
        }
    }

    /* renamed from: X */
    public static C4517c m16127X() {
        return DEFAULT_INSTANCE.m13791y();
    }

    /* renamed from: V */
    public EnumC4518l m16129V(int i) {
        return sessionVerbosity_converter_.mo14641a(Integer.valueOf(this.sessionVerbosity_.getInt(i)));
    }

    /* renamed from: W */
    public int m16128W() {
        return this.sessionVerbosity_.size();
    }

    /* renamed from: k7.k$a */
    /* loaded from: classes2.dex */
    public class C4515a implements InterfaceC5114b0<Integer, EnumC4518l> {
        @Override // p144o7.InterfaceC5114b0
        /* renamed from: b */
        public EnumC4518l mo14641a(Integer num) {
            EnumC4518l m16122c = EnumC4518l.m16122c(num.intValue());
            if (m16122c == null) {
                return EnumC4518l.SESSION_VERBOSITY_NONE;
            }
            return m16122c;
        }
    }

    static {
        C4514k c4514k = new C4514k();
        DEFAULT_INSTANCE = c4514k;
        AbstractC5248y.m13800O(C4514k.class, c4514k);
    }

    @Override // p144o7.AbstractC5248y
    /* renamed from: B */
    public final Object mo13813B(AbstractC5248y.EnumC5254f enumC5254f, Object obj, Object obj2) {
        switch (C4516b.f18532a[enumC5254f.ordinal()]) {
            case 1:
                return new C4514k();
            case 2:
                return new C4517c(null);
            case 3:
                return AbstractC5248y.m13802M(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001e", new Object[]{"bitField0_", "sessionId_", "sessionVerbosity_", EnumC4518l.m16121d()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                InterfaceC5112a1<C4514k> interfaceC5112a1 = PARSER;
                if (interfaceC5112a1 == null) {
                    synchronized (C4514k.class) {
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
    public final void m16130U() {
        C5102a0.InterfaceC5109g interfaceC5109g = this.sessionVerbosity_;
        if (!interfaceC5109g.mo14568V0()) {
            this.sessionVerbosity_ = AbstractC5248y.m13805J(interfaceC5109g);
        }
    }

    /* renamed from: T */
    public final void m16131T(EnumC4518l enumC4518l) {
        enumC4518l.getClass();
        m16130U();
        this.sessionVerbosity_.mo13759P(enumC4518l.mo14649e());
    }

    /* renamed from: Y */
    public final void m16126Y(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.sessionId_ = str;
    }
}
