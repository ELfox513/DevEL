package p168r4;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import p220x3.C7297q;
/* renamed from: r4.ra2 */
/* loaded from: classes2.dex */
public final class ra2 implements dg2<Bundle> {

    /* renamed from: a */
    public final C6478yt f30511a;

    /* renamed from: b */
    public final String f30512b;

    /* renamed from: c */
    public final boolean f30513c;

    /* renamed from: d */
    public final String f30514d;

    /* renamed from: e */
    public final float f30515e;

    /* renamed from: f */
    public final int f30516f;

    /* renamed from: g */
    public final int f30517g;

    /* renamed from: h */
    public final String f30518h;

    /* renamed from: i */
    public final boolean f30519i;

    public ra2(C6478yt c6478yt, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        C7297q.m1882k(c6478yt, "the adSize must not be null");
        this.f30511a = c6478yt;
        this.f30512b = str;
        this.f30513c = z;
        this.f30514d = str2;
        this.f30515e = f;
        this.f30516f = i;
        this.f30517g = i2;
        this.f30518h = str3;
        this.f30519i = z2;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        boolean z;
        boolean z2;
        String str;
        Bundle bundle2 = bundle;
        if (this.f30511a.f34201p == -1) {
            z = true;
        } else {
            z = false;
        }
        up2.m6399b(bundle2, "smart_w", "full", z);
        if (this.f30511a.f34198b == -2) {
            z2 = true;
        } else {
            z2 = false;
        }
        up2.m6399b(bundle2, "smart_h", "auto", z2);
        Boolean bool = Boolean.TRUE;
        up2.m6397d(bundle2, "ene", bool, this.f30511a.f34206u);
        up2.m6399b(bundle2, "rafmt", "102", this.f30511a.f34209x);
        up2.m6399b(bundle2, "rafmt", "103", this.f30511a.f34210y);
        up2.m6399b(bundle2, "rafmt", "105", this.f30511a.f34211z);
        up2.m6397d(bundle2, "inline_adaptive_slot", bool, this.f30519i);
        up2.m6397d(bundle2, "interscroller_slot", bool, this.f30511a.f34211z);
        up2.m6396e(bundle2, "format", this.f30512b);
        up2.m6399b(bundle2, "fluid", "height", this.f30513c);
        up2.m6399b(bundle2, "sz", this.f30514d, !TextUtils.isEmpty(str));
        bundle2.putFloat("u_sd", this.f30515e);
        bundle2.putInt("sw", this.f30516f);
        bundle2.putInt("sh", this.f30517g);
        String str2 = this.f30518h;
        up2.m6399b(bundle2, "sc", str2, true ^ TextUtils.isEmpty(str2));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        C6478yt[] c6478ytArr = this.f30511a.f34203r;
        if (c6478ytArr == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.f30511a.f34198b);
            bundle3.putInt("width", this.f30511a.f34201p);
            bundle3.putBoolean("is_fluid_height", this.f30511a.f34205t);
            arrayList.add(bundle3);
        } else {
            for (C6478yt c6478yt : c6478ytArr) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", c6478yt.f34205t);
                bundle4.putInt("height", c6478yt.f34198b);
                bundle4.putInt("width", c6478yt.f34201p);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
