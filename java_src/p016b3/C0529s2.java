package p016b3;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import java.io.InputStream;
import java.util.Map;
import p168r4.C5882ip;
import p168r4.cm0;
import p168r4.cs0;
import p168r4.js0;
import p168r4.jt0;
import p235z2.C7601t;
@TargetApi(21)
/* renamed from: b3.s2 */
/* loaded from: classes.dex */
public class C0529s2 extends C0525r2 {
    @Override // p016b3.C0478g
    /* renamed from: l */
    public final js0 mo26269l(cs0 cs0Var, C5882ip c5882ip, boolean z) {
        return new jt0(cs0Var, c5882ip, z);
    }

    @Override // p016b3.C0478g
    /* renamed from: m */
    public final int mo26268m() {
        return 16974374;
    }

    @Override // p016b3.C0478g
    /* renamed from: n */
    public final WebResourceResponse mo26267n(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }

    @Override // p016b3.C0478g
    /* renamed from: k */
    public final CookieManager mo26270k(Context context) {
        if (C0478g.m26373s()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            cm0.m12439d("Failed to obtain CookieManager.", th);
            C7601t.m935h().m9056k(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }
}
