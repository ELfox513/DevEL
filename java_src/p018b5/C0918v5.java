package p018b5;

import android.database.ContentObserver;
import android.os.Handler;
/* renamed from: b5.v5 */
/* loaded from: classes2.dex */
public final class C0918v5 extends ContentObserver {

    /* renamed from: a */
    public final /* synthetic */ C0952x5 f2359a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0918v5(C0952x5 c0952x5, Handler handler) {
        super(null);
        this.f2359a = c0952x5;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f2359a.m24991e();
    }
}
