package p203v3;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Status;
import p097j5.C4348j;
import p194u3.C6894b;
/* renamed from: v3.r */
/* loaded from: classes.dex */
public class C7044r {
    /* renamed from: a */
    public static <TResult> void m2617a(@RecentlyNonNull Status status, TResult tresult, @RecentlyNonNull C4348j<TResult> c4348j) {
        if (status.m23033c1()) {
            c4348j.m16773c(tresult);
        } else {
            c4348j.m16774b(new C6894b(status));
        }
    }
}
