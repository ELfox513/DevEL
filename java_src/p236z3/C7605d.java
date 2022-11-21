package p236z3;

import android.content.Context;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p194u3.AbstractC6897e;
import p194u3.C6883a;
import p203v3.AbstractC7041q;
import p203v3.InterfaceC7029m;
import p213w4.C7181d;
import p220x3.C7309u;
import p220x3.C7318x;
import p220x3.InterfaceC7315w;
/* renamed from: z3.d */
/* loaded from: classes.dex */
public final class C7605d extends AbstractC6897e<C7318x> implements InterfaceC7315w {

    /* renamed from: k */
    public static final C6883a.C6893g<C7606e> f37624k;

    /* renamed from: l */
    public static final C6883a.AbstractC6884a<C7606e, C7318x> f37625l;

    /* renamed from: m */
    public static final C6883a<C7318x> f37626m;

    static {
        C6883a.C6893g<C7606e> c6893g = new C6883a.C6893g<>();
        f37624k = c6893g;
        C7604c c7604c = new C7604c();
        f37625l = c7604c;
        f37626m = new C6883a<>("ClientTelemetry.API", c7604c, c6893g);
    }

    public C7605d(Context context, C7318x c7318x) {
        super(context, f37626m, c7318x, AbstractC6897e.C6898a.f35763c);
    }

    @Override // p220x3.InterfaceC7315w
    /* renamed from: b */
    public final AbstractC4346i<Void> mo914b(final C7309u c7309u) {
        AbstractC7041q.C7042a m2627a = AbstractC7041q.m2627a();
        m2627a.m2620d(C7181d.f36465a);
        m2627a.m2621c(false);
        m2627a.m2622b(new InterfaceC7029m(c7309u) { // from class: z3.b

            /* renamed from: a */
            public final C7309u f37623a;

            {
                this.f37623a = c7309u;
            }

            @Override // p203v3.InterfaceC7029m
            public final void accept(Object obj, Object obj2) {
                C7309u c7309u2 = this.f37623a;
                C6883a.C6893g<C7606e> c6893g = C7605d.f37624k;
                ((C7602a) ((C7606e) obj).m2025B()).m916L0(c7309u2);
                ((C4348j) obj2).m16773c(null);
            }
        });
        return m3059h(m2627a.m2623a());
    }
}
