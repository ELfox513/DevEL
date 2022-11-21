package p229y4;

import android.app.Application;
import android.content.Context;
/* renamed from: y4.o1 */
/* loaded from: classes2.dex */
public abstract class AbstractC7468o1 {

    /* renamed from: a */
    public static AbstractC7468o1 f37242a;

    /* renamed from: b */
    public abstract C7489v1 mo1404b();

    /* renamed from: c */
    public abstract C7422c0 mo1403c();

    /* renamed from: a */
    public static AbstractC7468o1 m1405a(Context context) {
        AbstractC7468o1 abstractC7468o1;
        synchronized (AbstractC7468o1.class) {
            if (f37242a == null) {
                C7441h c7441h = new C7441h(null);
                c7441h.m1441b((Application) context.getApplicationContext());
                f37242a = c7441h.m1442a();
            }
            abstractC7468o1 = f37242a;
        }
        return abstractC7468o1;
    }
}
