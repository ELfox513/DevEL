package p131n3;

import android.os.Bundle;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import p140o3.InterfaceC5092a;
import p149p3.InterfaceC5357a;
import p158q3.InterfaceC5410a;
import p167r3.C5541h;
import p167r3.C5542i;
import p194u3.C6883a;
import p204v4.C7067f;
import p204v4.C7068g;
import p220x3.C7289o;
/* renamed from: n3.a */
/* loaded from: classes.dex */
public final class C4743a {

    /* renamed from: a */
    public static final C6883a.C6893g<C7068g> f18985a;

    /* renamed from: b */
    public static final C6883a.C6893g<C5541h> f18986b;

    /* renamed from: c */
    public static final C6883a.AbstractC6884a<C7068g, C4744a> f18987c;

    /* renamed from: d */
    public static final C6883a.AbstractC6884a<C5541h, GoogleSignInOptions> f18988d;
    @Deprecated

    /* renamed from: e */
    public static final C6883a<C4747c> f18989e;

    /* renamed from: f */
    public static final C6883a<C4744a> f18990f;

    /* renamed from: g */
    public static final C6883a<GoogleSignInOptions> f18991g;
    @Deprecated

    /* renamed from: h */
    public static final InterfaceC5357a f18992h;

    /* renamed from: i */
    public static final InterfaceC5092a f18993i;

    /* renamed from: j */
    public static final InterfaceC5410a f18994j;

    @Deprecated
    /* renamed from: n3.a$a */
    /* loaded from: classes.dex */
    public static class C4744a implements C6883a.InterfaceC6887d {

        /* renamed from: k */
        public static final C4744a f18995k = new C4745a().m15480b();

        /* renamed from: a */
        public final String f18996a;

        /* renamed from: b */
        public final boolean f18997b;

        /* renamed from: d */
        public final String f18998d;

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C4744a)) {
                return false;
            }
            C4744a c4744a = (C4744a) obj;
            return C7289o.m1908a(this.f18996a, c4744a.f18996a) && this.f18997b == c4744a.f18997b && C7289o.m1908a(this.f18998d, c4744a.f18998d);
        }

        public int hashCode() {
            return C7289o.m1907b(this.f18996a, Boolean.valueOf(this.f18997b), this.f18998d);
        }

        @Deprecated
        /* renamed from: n3.a$a$a */
        /* loaded from: classes.dex */
        public static class C4745a {

            /* renamed from: a */
            public String f18999a;

            /* renamed from: b */
            public Boolean f19000b;

            /* renamed from: c */
            public String f19001c;

            public C4745a() {
                this.f19000b = Boolean.FALSE;
            }

            /* renamed from: a */
            public C4745a m15481a(String str) {
                this.f19001c = str;
                return this;
            }

            /* renamed from: b */
            public C4744a m15480b() {
                return new C4744a(this);
            }

            public C4745a(C4744a c4744a) {
                this.f19000b = Boolean.FALSE;
                this.f18999a = c4744a.f18996a;
                this.f19000b = Boolean.valueOf(c4744a.f18997b);
                this.f19001c = c4744a.f18998d;
            }
        }

        /* renamed from: a */
        public final Bundle m15485a() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", this.f18996a);
            bundle.putBoolean("force_save_dialog", this.f18997b);
            bundle.putString("log_session_id", this.f18998d);
            return bundle;
        }

        public C4744a(C4745a c4745a) {
            this.f18996a = c4745a.f18999a;
            this.f18997b = c4745a.f19000b.booleanValue();
            this.f18998d = c4745a.f19001c;
        }
    }

    static {
        C6883a.C6893g<C7068g> c6893g = new C6883a.C6893g<>();
        f18985a = c6893g;
        C6883a.C6893g<C5541h> c6893g2 = new C6883a.C6893g<>();
        f18986b = c6893g2;
        C4749e c4749e = new C4749e();
        f18987c = c4749e;
        C4750f c4750f = new C4750f();
        f18988d = c4750f;
        f18989e = C4746b.f19004c;
        f18990f = new C6883a<>("Auth.CREDENTIALS_API", c4749e, c6893g);
        f18991g = new C6883a<>("Auth.GOOGLE_SIGN_IN_API", c4750f, c6893g2);
        f18992h = C4746b.f19005d;
        f18993i = new C7067f();
        f18994j = new C5542i();
    }
}
