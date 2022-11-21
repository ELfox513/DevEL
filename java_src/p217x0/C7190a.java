package p217x0;

import android.os.Handler;
import android.os.Looper;
import p209w0.InterfaceC7128q;
import p232z.C7521c;
/* renamed from: x0.a */
/* loaded from: classes.dex */
public class C7190a implements InterfaceC7128q {

    /* renamed from: a */
    public final Handler f36471a = C7521c.m1306a(Looper.getMainLooper());

    @Override // p209w0.InterfaceC7128q
    /* renamed from: a */
    public void mo2212a(long j, Runnable runnable) {
        this.f36471a.postDelayed(runnable, j);
    }

    @Override // p209w0.InterfaceC7128q
    /* renamed from: b */
    public void mo2211b(Runnable runnable) {
        this.f36471a.removeCallbacks(runnable);
    }
}
