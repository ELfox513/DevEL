package p018b5;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: b5.q5 */
/* loaded from: classes2.dex */
public final class C0833q5 extends ContentObserver {
    public C0833q5(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = C0850r5.f2243e;
        atomicBoolean.set(true);
    }
}
