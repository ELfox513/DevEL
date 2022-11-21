package p016b3;

import android.annotation.TargetApi;
import android.os.Environment;
import android.os.StatFs;
import android.view.View;
import android.view.WindowId;
@TargetApi(18)
/* renamed from: b3.q2 */
/* loaded from: classes.dex */
public class C0521q2 extends C0509n2 {
    @Override // p016b3.C0478g
    /* renamed from: g */
    public boolean mo26273g(View view) {
        WindowId windowId;
        if (super.mo26273g(view)) {
            return true;
        }
        windowId = view.getWindowId();
        return windowId != null;
    }

    @Override // p016b3.C0478g
    /* renamed from: h */
    public final int mo26276h() {
        return 14;
    }

    @Override // p016b3.C0478g
    /* renamed from: i */
    public final long mo26275i() {
        long availableBytes;
        availableBytes = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes();
        return availableBytes / 1024;
    }
}
