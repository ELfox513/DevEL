package p229y4;

import android.util.Log;
import p106k5.C4471e;
/* renamed from: y4.u1 */
/* loaded from: classes2.dex */
public final class C7486u1 extends Exception {

    /* renamed from: a */
    public final int f37281a;

    public C7486u1(int i, String str) {
        super(str);
        this.f37281a = i;
    }

    public C7486u1(int i, String str, Throwable th) {
        super(str, th);
        this.f37281a = i;
    }

    /* renamed from: a */
    public final C4471e m1394a() {
        if (getCause() == null) {
            Log.w("UserMessagingPlatform", getMessage());
        } else {
            Log.w("UserMessagingPlatform", getMessage(), getCause());
        }
        return new C4471e(this.f37281a, getMessage());
    }
}
