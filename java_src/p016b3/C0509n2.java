package p016b3;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.provider.Settings$Global;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.webkit.WebSettings;
import p026c4.C1044e;
import p026c4.C1057r;
import p185t3.C6756m;
@TargetApi(17)
/* renamed from: b3.n2 */
/* loaded from: classes.dex */
public class C0509n2 extends C0478g {
    public C0509n2() {
        super(null);
    }

    @Override // p016b3.C0478g
    /* renamed from: e */
    public final int mo26286e(ContentResolver contentResolver) {
        return Settings$Global.getInt(contentResolver, "wifi_on", 0);
    }

    @Override // p016b3.C0478g
    /* renamed from: f */
    public final int mo26285f(ContentResolver contentResolver) {
        return Settings$Global.getInt(contentResolver, "airplane_mode_on", 0);
    }

    @Override // p016b3.C0478g
    /* renamed from: d */
    public final Drawable mo26287d(Context context, Bitmap bitmap, boolean z, float f) {
        if (z && f > 0.0f && f <= 25.0f) {
            try {
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
                Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap);
                RenderScript create = RenderScript.create(context);
                ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
                Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
                Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
                create2.setRadius(f);
                create2.setInput(createFromBitmap);
                create2.forEach(createFromBitmap2);
                createFromBitmap2.copyTo(createBitmap);
                return new BitmapDrawable(context.getResources(), createBitmap);
            } catch (RuntimeException unused) {
                return new BitmapDrawable(context.getResources(), bitmap);
            }
        }
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    @Override // p016b3.C0478g
    /* renamed from: a */
    public final boolean mo26290a(Context context, WebSettings webSettings) {
        super.mo26290a(context, webSettings);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        return true;
    }

    @Override // p016b3.C0478g
    /* renamed from: b */
    public final String mo26289b(Context context) {
        String str;
        C0508n1 m26291a = C0508n1.m26291a();
        if (TextUtils.isEmpty(m26291a.f1654a)) {
            if (C1044e.m24774a()) {
                str = (String) C0492j1.m26361a(context, new CallableC0500l1(m26291a, context));
            } else {
                str = (String) C0492j1.m26361a(context, new CallableC0504m1(m26291a, C6756m.m3480c(context), context));
            }
            m26291a.f1654a = str;
        }
        return m26291a.f1654a;
    }

    @Override // p016b3.C0478g
    /* renamed from: c */
    public final void mo26288c(Context context) {
        String defaultUserAgent;
        String defaultUserAgent2;
        C0508n1 m26291a = C0508n1.m26291a();
        C0543w1.m26251k("Updating user agent.");
        defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(m26291a.f1654a)) {
            Context m3480c = C6756m.m3480c(context);
            if (!C1044e.m24774a()) {
                if (m3480c == null) {
                    m3480c = null;
                }
                m26291a.f1654a = defaultUserAgent;
            }
            defaultUserAgent2 = WebSettings.getDefaultUserAgent(context);
            SharedPreferences.Editor putString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", defaultUserAgent2);
            if (m3480c == null) {
                putString.apply();
            } else {
                C1057r.m24727a(context, putString, "admob_user_agent");
            }
            m26291a.f1654a = defaultUserAgent;
        }
        C0543w1.m26251k("User agent is updated.");
    }
}
