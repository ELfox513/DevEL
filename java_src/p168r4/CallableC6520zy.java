package p168r4;

import android.os.Environment;
import java.util.concurrent.Callable;
/* renamed from: r4.zy */
/* loaded from: classes2.dex */
public final class CallableC6520zy implements Callable<Boolean> {
    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Boolean call() {
        return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
    }
}
