package p168r4;

import android.content.Context;
import android.os.Looper;
/* renamed from: r4.sx2 */
/* loaded from: classes2.dex */
public final class sx2 {

    /* renamed from: a */
    public final Context f31573a;

    /* renamed from: b */
    public final Looper f31574b;

    public sx2(Context context, Looper looper) {
        this.f31573a = context;
        this.f31574b = looper;
    }

    /* renamed from: a */
    public final void m6954a(String str) {
        hy2 m10150C = jy2.m10150C();
        m10150C.m10758v(this.f31573a.getPackageName());
        m10150C.m10756z(2);
        ey2 m11330C = fy2.m11330C();
        m11330C.m11662v(str);
        m11330C.m11661x(2);
        m10150C.m10757x(m11330C);
        new tx2(this.f31573a, this.f31574b, m10150C.m9614o()).m6687a();
    }
}
