package p168r4;

import android.content.Context;
import android.util.SparseArray;
/* renamed from: r4.ss3 */
/* loaded from: classes2.dex */
public final class ss3 implements qt3 {

    /* renamed from: a */
    public final InterfaceC5974l7 f31502a;

    /* renamed from: b */
    public final SparseArray<qt3> f31503b;

    /* renamed from: c */
    public final int[] f31504c;

    public ss3(Context context, g04 g04Var) {
        uw3 uw3Var = new uw3(context);
        this.f31502a = uw3Var;
        SparseArray<qt3> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, (qt3) Class.forName("androidx.media3.exoplayer.dash.DashMediaSource$Factory").asSubclass(qt3.class).getConstructor(InterfaceC5974l7.class).newInstance(uw3Var));
        } catch (Exception unused) {
        }
        try {
            sparseArray.put(1, (qt3) Class.forName("androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory").asSubclass(qt3.class).getConstructor(InterfaceC5974l7.class).newInstance(uw3Var));
        } catch (Exception unused2) {
        }
        try {
            sparseArray.put(2, (qt3) Class.forName("androidx.media3.exoplayer.hls.HlsMediaSource$Factory").asSubclass(qt3.class).getConstructor(InterfaceC5974l7.class).newInstance(uw3Var));
        } catch (Exception unused3) {
        }
        try {
            sparseArray.put(3, (qt3) Class.forName("androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory").asSubclass(qt3.class).getConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Exception unused4) {
        }
        sparseArray.put(4, new ku3(uw3Var, g04Var));
        this.f31503b = sparseArray;
        this.f31504c = new int[sparseArray.size()];
        for (int i = 0; i < this.f31503b.size(); i++) {
            this.f31504c[i] = this.f31503b.keyAt(i);
        }
    }
}
