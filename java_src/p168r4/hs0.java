package p168r4;

import android.net.Uri;
import java.util.List;
import java.util.Map;
/* renamed from: r4.hs0 */
/* loaded from: classes2.dex */
public final class hs0 implements t73<Map<String, String>> {

    /* renamed from: a */
    public final /* synthetic */ List f24809a;

    /* renamed from: b */
    public final /* synthetic */ String f24810b;

    /* renamed from: c */
    public final /* synthetic */ Uri f24811c;

    /* renamed from: d */
    public final /* synthetic */ js0 f24812d;

    public hs0(js0 js0Var, List list, String str, Uri uri) {
        this.f24812d = js0Var;
        this.f24809a = list;
        this.f24810b = str;
        this.f24811c = uri;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        cm0.m12437f("Failed to parse gmsg params for: ".concat(String.valueOf(this.f24811c)));
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(Map<String, String> map) {
        this.f24812d.m10171z(map, this.f24809a, this.f24810b);
    }
}
