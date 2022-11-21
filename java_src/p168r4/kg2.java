package p168r4;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
/* renamed from: r4.kg2 */
/* loaded from: classes2.dex */
public final class kg2 implements dg2<Bundle> {

    /* renamed from: a */
    public final boolean f26397a;

    /* renamed from: b */
    public final boolean f26398b;

    /* renamed from: c */
    public final String f26399c;

    /* renamed from: d */
    public final boolean f26400d;

    /* renamed from: e */
    public final boolean f26401e;

    /* renamed from: f */
    public final boolean f26402f;

    /* renamed from: g */
    public final String f26403g;

    /* renamed from: h */
    public final ArrayList<String> f26404h;

    /* renamed from: i */
    public final String f26405i;

    /* renamed from: j */
    public final String f26406j;

    /* renamed from: k */
    public final String f26407k;

    /* renamed from: l */
    public final boolean f26408l;

    /* renamed from: m */
    public final String f26409m;

    /* renamed from: n */
    public final long f26410n;

    public kg2(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList<String> arrayList, String str3, String str4, String str5, boolean z6, String str6, long j) {
        this.f26397a = z;
        this.f26398b = z2;
        this.f26399c = str;
        this.f26400d = z3;
        this.f26401e = z4;
        this.f26402f = z5;
        this.f26403g = str2;
        this.f26404h = arrayList;
        this.f26405i = str3;
        this.f26406j = str4;
        this.f26407k = str5;
        this.f26408l = z6;
        this.f26409m = str6;
        this.f26410n = j;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("cog", this.f26397a);
        bundle2.putBoolean("coh", this.f26398b);
        bundle2.putString("gl", this.f26399c);
        bundle2.putBoolean("simulator", this.f26400d);
        bundle2.putBoolean("is_latchsky", this.f26401e);
        bundle2.putBoolean("is_sidewinder", this.f26402f);
        bundle2.putString("hl", this.f26403g);
        if (!this.f26404h.isEmpty()) {
            bundle2.putStringArrayList("hl_list", this.f26404h);
        }
        bundle2.putString("mv", this.f26405i);
        bundle2.putString("submodel", this.f26409m);
        Bundle m6400a = up2.m6400a(bundle2, "device");
        bundle2.putBundle("device", m6400a);
        m6400a.putString("build", this.f26407k);
        m6400a.putLong("remaining_data_partition_space", this.f26410n);
        Bundle m6400a2 = up2.m6400a(m6400a, "browser");
        m6400a.putBundle("browser", m6400a2);
        m6400a2.putBoolean("is_browser_custom_tabs_capable", this.f26408l);
        if (!TextUtils.isEmpty(this.f26406j)) {
            Bundle m6400a3 = up2.m6400a(m6400a, "play_store");
            m6400a.putBundle("play_store", m6400a3);
            m6400a3.putString("package_version", this.f26406j);
        }
    }
}
