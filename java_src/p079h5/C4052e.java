package p079h5;

import com.google.android.gms.common.api.Scope;
import p088i5.C4127a;
import p194u3.C6883a;
/* renamed from: h5.e */
/* loaded from: classes2.dex */
public final class C4052e {

    /* renamed from: a */
    public static final C6883a.C6893g<C4127a> f17572a;

    /* renamed from: b */
    public static final C6883a.C6893g<C4127a> f17573b;

    /* renamed from: c */
    public static final C6883a.AbstractC6884a<C4127a, C4048a> f17574c;

    /* renamed from: d */
    public static final C6883a.AbstractC6884a<C4127a, C4051d> f17575d;

    /* renamed from: e */
    public static final Scope f17576e;

    /* renamed from: f */
    public static final Scope f17577f;

    /* renamed from: g */
    public static final C6883a<C4048a> f17578g;

    /* renamed from: h */
    public static final C6883a<C4051d> f17579h;

    static {
        C6883a.C6893g<C4127a> c6893g = new C6883a.C6893g<>();
        f17572a = c6893g;
        C6883a.C6893g<C4127a> c6893g2 = new C6883a.C6893g<>();
        f17573b = c6893g2;
        C4049b c4049b = new C4049b();
        f17574c = c4049b;
        C4050c c4050c = new C4050c();
        f17575d = c4050c;
        f17576e = new Scope("profile");
        f17577f = new Scope("email");
        f17578g = new C6883a<>("SignIn.API", c4049b, c6893g);
        f17579h = new C6883a<>("SignIn.INTERNAL_API", c4050c, c6893g2);
    }
}
