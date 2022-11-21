package p168r4;

import android.content.Context;
import android.os.Handler;
/* renamed from: r4.w2 */
/* loaded from: classes2.dex */
public final class C6377w2 {

    /* renamed from: a */
    public final Context f33022a;

    /* renamed from: b */
    public final RunnableC6303u2 f33023b;

    public C6377w2(Context context, Handler handler, InterfaceC6340v2 interfaceC6340v2) {
        this.f33022a = context.getApplicationContext();
        this.f33023b = new RunnableC6303u2(this, handler, interfaceC6340v2);
    }
}
