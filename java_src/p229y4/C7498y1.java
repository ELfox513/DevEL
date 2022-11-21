package p229y4;

import android.app.Activity;
import android.app.Application;
import p106k5.C4462a;
import p106k5.C4469d;
/* renamed from: y4.y1 */
/* loaded from: classes2.dex */
public final class C7498y1 {

    /* renamed from: a */
    public final Application f37313a;

    /* renamed from: b */
    public final C7418b0 f37314b;

    /* renamed from: c */
    public final C7463n f37315c;

    public C7498y1(Application application, C7418b0 c7418b0, C7463n c7463n) {
        this.f37313a = application;
        this.f37314b = c7418b0;
        this.f37315c = c7463n;
    }

    /* renamed from: d */
    public final C7491w0 m1383d(Activity activity, C4469d c4469d) {
        C4462a m16339a = c4469d.m16339a();
        if (m16339a == null) {
            m16339a = new C4462a.C4463a(this.f37313a).m16344a();
        }
        return C7501z1.m1371a(new C7501z1(this, activity, m16339a, c4469d, null));
    }
}
