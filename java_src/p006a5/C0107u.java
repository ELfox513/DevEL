package p006a5;

import android.os.Bundle;
import android.os.IBinder;
/* renamed from: a5.u */
/* loaded from: classes2.dex */
public final class C0107u {

    /* renamed from: b */
    public int f167b;

    /* renamed from: c */
    public int f168c = -1;

    /* renamed from: d */
    public int f169d = 0;

    /* renamed from: e */
    public int f170e = 0;

    /* renamed from: f */
    public int f171f = 0;

    /* renamed from: g */
    public int f172g = 0;

    /* renamed from: a */
    public IBinder f166a = null;

    /* renamed from: a */
    public final Bundle m27668a() {
        Bundle bundle = new Bundle();
        bundle.putInt("popupLocationInfo.gravity", this.f167b);
        bundle.putInt("popupLocationInfo.displayId", this.f168c);
        bundle.putInt("popupLocationInfo.left", this.f169d);
        bundle.putInt("popupLocationInfo.top", this.f170e);
        bundle.putInt("popupLocationInfo.right", this.f171f);
        bundle.putInt("popupLocationInfo.bottom", this.f172g);
        return bundle;
    }

    public C0107u(int i, IBinder iBinder) {
        this.f167b = i;
    }
}
