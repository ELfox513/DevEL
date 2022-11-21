package p229y4;

import android.app.Application;
import android.util.Log;
import java.io.IOException;
import p185t3.C6748i;
import p211w2.C7171a;
/* renamed from: y4.b0 */
/* loaded from: classes2.dex */
public final class C7418b0 {

    /* renamed from: a */
    public final Application f37124a;

    public C7418b0(Application application) {
        this.f37124a = application;
    }

    /* renamed from: a */
    public final C7413a m1463a() {
        try {
            C7171a.C7172a m2243b = C7171a.m2243b(this.f37124a);
            return new C7413a(m2243b.m2232a(), m2243b.m2231b());
        } catch (IOException | C6748i e) {
            Log.d("UserMessagingPlatform", "Failed to get ad id.", e);
            return null;
        }
    }
}
