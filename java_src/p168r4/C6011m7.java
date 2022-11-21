package p168r4;

import android.content.Context;
import android.os.Looper;
@Deprecated
/* renamed from: r4.m7 */
/* loaded from: classes2.dex */
public final class C6011m7 {

    /* renamed from: a */
    public final Context f27513a;

    /* renamed from: b */
    public final InterfaceC5900j7 f27514b;

    /* renamed from: c */
    public final InterfaceC5940ka f27515c;

    /* renamed from: d */
    public aw3 f27516d;

    /* renamed from: e */
    public final qt3 f27517e;

    /* renamed from: f */
    public InterfaceC5825h5 f27518f;

    /* renamed from: g */
    public final kw3 f27519g;

    /* renamed from: h */
    public final c41 f27520h;

    /* renamed from: i */
    public final Looper f27521i;

    /* renamed from: j */
    public final dg3 f27522j;

    /* renamed from: k */
    public final C5937k7 f27523k;

    /* renamed from: l */
    public boolean f27524l;

    /* renamed from: m */
    public final C5786g3 f27525m;

    /* renamed from: a */
    public static /* synthetic */ Context m9485a(C6011m7 c6011m7) {
        return c6011m7.f27513a;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC5900j7 m9484b(C6011m7 c6011m7) {
        return c6011m7.f27514b;
    }

    /* renamed from: c */
    public static /* synthetic */ InterfaceC5940ka m9483c(C6011m7 c6011m7) {
        return c6011m7.f27515c;
    }

    /* renamed from: d */
    public static /* synthetic */ aw3 m9482d(C6011m7 c6011m7) {
        return c6011m7.f27516d;
    }

    /* renamed from: e */
    public static /* synthetic */ qt3 m9481e(C6011m7 c6011m7) {
        return c6011m7.f27517e;
    }

    /* renamed from: f */
    public static /* synthetic */ InterfaceC5825h5 m9480f(C6011m7 c6011m7) {
        return c6011m7.f27518f;
    }

    /* renamed from: g */
    public static /* synthetic */ kw3 m9479g(C6011m7 c6011m7) {
        return c6011m7.f27519g;
    }

    /* renamed from: h */
    public static /* synthetic */ c41 m9478h(C6011m7 c6011m7) {
        return c6011m7.f27520h;
    }

    /* renamed from: i */
    public static /* synthetic */ Looper m9477i(C6011m7 c6011m7) {
        return c6011m7.f27521i;
    }

    /* renamed from: j */
    public static /* synthetic */ dg3 m9476j(C6011m7 c6011m7) {
        return c6011m7.f27522j;
    }

    /* renamed from: k */
    public static /* synthetic */ C5937k7 m9475k(C6011m7 c6011m7) {
        return c6011m7.f27523k;
    }

    /* renamed from: o */
    public static /* synthetic */ C5786g3 m9471o(C6011m7 c6011m7) {
        return c6011m7.f27525m;
    }

    @Deprecated
    /* renamed from: l */
    public final C6011m7 m9474l(aw3 aw3Var) {
        C5903ja.m10371d(!this.f27524l);
        this.f27516d = aw3Var;
        return this;
    }

    @Deprecated
    /* renamed from: m */
    public final C6011m7 m9473m(InterfaceC5825h5 interfaceC5825h5) {
        C5903ja.m10371d(!this.f27524l);
        this.f27518f = interfaceC5825h5;
        return this;
    }

    @Deprecated
    public C6011m7(Context context, InterfaceC5900j7 interfaceC5900j7) {
        wz3 wz3Var = new wz3();
        uv3 uv3Var = new uv3(context);
        ss3 ss3Var = new ss3(context, wz3Var);
        C5860i3 c5860i3 = new C5860i3();
        tw3 m6696d = tw3.m6696d(context);
        InterfaceC5940ka interfaceC5940ka = InterfaceC5940ka.f26353a;
        c41 c41Var = new c41(interfaceC5940ka);
        this.f27513a = context;
        this.f27514b = interfaceC5900j7;
        this.f27516d = uv3Var;
        this.f27517e = ss3Var;
        this.f27518f = c5860i3;
        this.f27519g = m6696d;
        this.f27520h = c41Var;
        this.f27521i = C5979lc.m9721P();
        this.f27522j = dg3.f22251c;
        this.f27523k = C5937k7.f26333g;
        this.f27525m = new C5786g3(0.97f, 1.03f, 1000L, 1.0E-7f, C5711e3.m11871b(20L), C5711e3.m11871b(500L), 0.999f, null);
        this.f27515c = interfaceC5940ka;
    }

    @Deprecated
    /* renamed from: n */
    public final C6160q7 m9472n() {
        C5903ja.m10371d(!this.f27524l);
        this.f27524l = true;
        return new C6160q7(this);
    }
}
