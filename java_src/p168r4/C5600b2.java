package p168r4;

import android.view.View;
/* renamed from: r4.b2 */
/* loaded from: classes2.dex */
public final class C5600b2 extends AbstractCallableC5710e2 {

    /* renamed from: i */
    public final View f20812i;

    public C5600b2(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2, View view) {
        super(c6338v0, "Rh7wPiyt0Q0zAefasWAQ/36LhULiVi3U1eCO9K34euxkll+3xBb3q2iaqyDuAy33", "Kmv9uscZLQkY9DcwgermeDphrIGnHnQJYdRAudw6Thg=", za4Var, i, 57);
        this.f20812i = view;
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        if (this.f20812i != null) {
            Boolean bool = (Boolean) C5592av.m12935c().m8098c(C6225rz.f30944X1);
            C6486z0 c6486z0 = new C6486z0((String) this.f22748f.invoke(null, this.f20812i, this.f22744b.m6283c().getResources().getDisplayMetrics(), bool));
            nb4 m8841C = ob4.m8841C();
            m8841C.m9127v(c6486z0.f34265b.longValue());
            m8841C.m9126x(c6486z0.f34266c.longValue());
            m8841C.m9125z(c6486z0.f34267d.longValue());
            if (bool.booleanValue()) {
                m8841C.m9128A(c6486z0.f34268e.longValue());
            }
            this.f22747e.m4386L(m8841C.m9614o());
        }
    }
}
