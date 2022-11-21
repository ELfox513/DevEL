package p026c4;

import android.os.SystemClock;
import androidx.annotation.RecentlyNonNull;
/* renamed from: c4.i */
/* loaded from: classes.dex */
public class C1048i implements InterfaceC1045f {

    /* renamed from: a */
    public static final C1048i f2951a = new C1048i();

    @RecentlyNonNull
    /* renamed from: d */
    public static InterfaceC1045f m24760d() {
        return f2951a;
    }

    @Override // p026c4.InterfaceC1045f
    /* renamed from: a */
    public final long mo24763a() {
        return System.currentTimeMillis();
    }

    @Override // p026c4.InterfaceC1045f
    /* renamed from: b */
    public final long mo24762b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // p026c4.InterfaceC1045f
    /* renamed from: c */
    public final long mo24761c() {
        return System.nanoTime();
    }
}
