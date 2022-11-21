package p174s1;

import p183t1.AbstractC6650f;
/* renamed from: s1.a */
/* loaded from: classes.dex */
public final class C6570a {

    /* renamed from: a */
    public InterfaceC6572b f34868a = null;

    /* renamed from: b */
    public InterfaceC6572b f34869b = null;

    /* renamed from: c */
    public InterfaceC6572b f34870c = null;

    /* renamed from: d */
    public InterfaceC6572b f34871d = null;

    /* renamed from: e */
    public InterfaceC6572b f34872e = null;

    /* renamed from: f */
    public InterfaceC6572b f34873f = null;

    /* renamed from: g */
    public InterfaceC6572b f34874g = null;

    /* renamed from: s1.a$a */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C6571a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34875a;

        static {
            int[] iArr = new int[EnumC6573b.values().length];
            f34875a = iArr;
            try {
                iArr[EnumC6573b.STRING_REF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34875a[EnumC6573b.TYPE_REF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34875a[EnumC6573b.FIELD_REF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34875a[EnumC6573b.METHOD_REF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34875a[EnumC6573b.METHOD_AND_PROTO_REF.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34875a[EnumC6573b.CALL_SITE_REF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: s1.a$b */
    /* loaded from: classes.dex */
    public interface InterfaceC6572b {
        /* renamed from: a */
        void mo3080a(AbstractC6650f[] abstractC6650fArr, AbstractC6650f abstractC6650f);
    }

    /* renamed from: c */
    public void m3900c(InterfaceC6572b interfaceC6572b) {
        this.f34874g = interfaceC6572b;
    }

    /* renamed from: d */
    public void m3899d(InterfaceC6572b interfaceC6572b) {
        this.f34871d = interfaceC6572b;
    }

    /* renamed from: e */
    public void m3898e(InterfaceC6572b interfaceC6572b) {
        this.f34873f = interfaceC6572b;
    }

    /* renamed from: f */
    public void m3897f(InterfaceC6572b interfaceC6572b) {
        this.f34872e = interfaceC6572b;
    }

    /* renamed from: g */
    public void m3896g(InterfaceC6572b interfaceC6572b) {
        this.f34869b = interfaceC6572b;
    }

    /* renamed from: h */
    public void m3895h(InterfaceC6572b interfaceC6572b) {
        this.f34870c = interfaceC6572b;
    }

    /* renamed from: i */
    public void m3894i(AbstractC6650f[] abstractC6650fArr) {
        for (AbstractC6650f abstractC6650f : abstractC6650fArr) {
            if (abstractC6650f != null) {
                m3902a(abstractC6650fArr, abstractC6650f);
            }
        }
    }

    /* renamed from: a */
    public final void m3902a(AbstractC6650f[] abstractC6650fArr, AbstractC6650f abstractC6650f) {
        InterfaceC6572b interfaceC6572b;
        switch (C6571a.f34875a[C6574c.m3891c(abstractC6650f.m3688u()).ordinal()]) {
            case 1:
                interfaceC6572b = this.f34869b;
                break;
            case 2:
                interfaceC6572b = this.f34870c;
                break;
            case 3:
                interfaceC6572b = this.f34871d;
                break;
            case 4:
                interfaceC6572b = this.f34872e;
                break;
            case 5:
                interfaceC6572b = this.f34873f;
                break;
            case 6:
                interfaceC6572b = this.f34874g;
                break;
            default:
                interfaceC6572b = null;
                break;
        }
        if (interfaceC6572b == null) {
            interfaceC6572b = this.f34868a;
        }
        if (interfaceC6572b != null) {
            interfaceC6572b.mo3080a(abstractC6650fArr, abstractC6650f);
        }
    }

    /* renamed from: b */
    public void m3901b(InterfaceC6572b interfaceC6572b) {
        this.f34868a = interfaceC6572b;
        this.f34869b = interfaceC6572b;
        this.f34870c = interfaceC6572b;
        this.f34871d = interfaceC6572b;
        this.f34872e = interfaceC6572b;
        this.f34873f = interfaceC6572b;
        this.f34874g = interfaceC6572b;
    }
}
