package p077h3;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import p086i3.C4124b;
import p168r4.C6225rz;
import p168r4.C6300u;
import p168r4.cm0;
import p184t2.C6708f;
import p184t2.EnumC6703b;
import p235z2.C7601t;
/* renamed from: h3.a */
/* loaded from: classes.dex */
public final class C3985a {

    /* renamed from: a */
    public final Context f17414a;

    /* renamed from: b */
    public final WebView f17415b;

    /* renamed from: c */
    public final C6300u f17416c;

    public C3985a(WebView webView, C6300u c6300u) {
        this.f17415b = webView;
        this.f17414a = webView.getContext();
        this.f17416c = c6300u;
    }

    @JavascriptInterface
    @TargetApi(21)
    public String getClickSignals(String str) {
        C6225rz.m7278a(this.f17414a);
        try {
            return this.f17416c.m6683b().mo1019b(this.f17414a, str, this.f17415b);
        } catch (RuntimeException e) {
            cm0.m12439d("Exception getting click signals. ", e);
            C7601t.m935h().m9056k(e, "TaggingLibraryJsInterface.getClickSignals");
            return "";
        }
    }

    @JavascriptInterface
    @TargetApi(21)
    public String getViewSignals() {
        C6225rz.m7278a(this.f17414a);
        try {
            return this.f17416c.m6683b().mo1017d(this.f17414a, this.f17415b, null);
        } catch (RuntimeException e) {
            cm0.m12439d("Exception getting view signals. ", e);
            C7601t.m935h().m9056k(e, "TaggingLibraryJsInterface.getViewSignals");
            return "";
        }
    }

    @JavascriptInterface
    @TargetApi(21)
    public void reportTouchEvent(String str) {
        int i;
        C6225rz.m7278a(this.f17414a);
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i2 = jSONObject.getInt("x");
            int i3 = jSONObject.getInt("y");
            int i4 = jSONObject.getInt("duration_ms");
            float f = (float) jSONObject.getDouble("force");
            int i5 = jSONObject.getInt("type");
            if (i5 != 0) {
                if (i5 != 1) {
                    if (i5 != 2) {
                        if (i5 != 3) {
                            i = -1;
                        } else {
                            i = 3;
                        }
                    } else {
                        i = 2;
                    }
                } else {
                    i = 1;
                }
            } else {
                i = 0;
            }
            this.f17416c.m6681d(MotionEvent.obtain(0L, i4, i, i2, i3, f, 1.0f, 0, 1.0f, 1.0f, 0, 0));
        } catch (RuntimeException | JSONException e) {
            cm0.m12439d("Failed to parse the touch string. ", e);
            C7601t.m935h().m9056k(e, "TaggingLibraryJsInterface.reportTouchEvent");
        }
    }

    @JavascriptInterface
    @TargetApi(21)
    public String getQueryInfo() {
        C7601t.m939d();
        String uuid = UUID.randomUUID().toString();
        Bundle bundle = new Bundle();
        bundle.putString("query_info_type", "requester_type_6");
        Context context = this.f17414a;
        EnumC6703b enumC6703b = EnumC6703b.BANNER;
        C6708f.C6709a c6709a = new C6708f.C6709a();
        c6709a.m3593b(AdMobAdapter.class, bundle);
        C4124b.m17329a(context, enumC6703b, c6709a.m3592c(), new C4007l(this, uuid));
        return uuid;
    }
}
