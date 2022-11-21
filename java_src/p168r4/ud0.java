package p168r4;

import android.app.Activity;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.zzbye;
import p004a3.C0074o;
import p235z2.C7601t;
/* renamed from: r4.ud0 */
/* loaded from: classes2.dex */
public final class ud0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AdOverlayInfoParcel f32247a;

    /* renamed from: b */
    public final /* synthetic */ zzbye f32248b;

    public ud0(zzbye zzbyeVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f32248b = zzbyeVar;
        this.f32247a = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        C7601t.m940c();
        activity = this.f32248b.f7830a;
        C0074o.m27689a(activity, this.f32247a, true);
    }
}
