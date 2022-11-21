package p042d4;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
/* renamed from: d4.e */
/* loaded from: classes.dex */
public class C3325e {

    /* renamed from: b */
    public static C3325e f15648b = new C3325e();

    /* renamed from: a */
    public C3324d f15649a = null;

    @RecentlyNonNull
    /* renamed from: a */
    public static C3324d m19140a(@RecentlyNonNull Context context) {
        return f15648b.m19139b(context);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final synchronized C3324d m19139b(@RecentlyNonNull Context context) {
        if (this.f15649a == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f15649a = new C3324d(context);
        }
        return this.f15649a;
    }
}
