package p229y4;

import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.util.Locale;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: y4.o0 */
/* loaded from: classes2.dex */
public final class C7467o0 implements InterfaceC7477r1 {

    /* renamed from: a */
    public final Application f37234a;

    /* renamed from: b */
    public final C7454k0 f37235b;

    /* renamed from: c */
    public final Handler f37236c;

    /* renamed from: d */
    public final Executor f37237d;

    /* renamed from: e */
    public final C7480s1 f37238e;

    /* renamed from: f */
    public final C7457l f37239f;

    /* renamed from: g */
    public final C7499z f37240g;

    /* renamed from: h */
    public final C7463n f37241h;

    public C7467o0(Application application, C7454k0 c7454k0, Handler handler, Executor executor, C7480s1 c7480s1, C7457l c7457l, C7499z c7499z, C7463n c7463n) {
        this.f37234a = application;
        this.f37235b = c7454k0;
        this.f37236c = handler;
        this.f37237d = executor;
        this.f37238e = c7480s1;
        this.f37239f = c7457l;
        this.f37240g = c7499z;
        this.f37241h = c7463n;
    }

    @Override // p229y4.InterfaceC7477r1
    public final Executor zza() {
        final Handler handler = this.f37236c;
        return new Executor() { // from class: y4.n0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    /* renamed from: b */
    public final /* synthetic */ void m1409b() {
        String str;
        Application application = this.f37234a;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", application.getPackageManager().getApplicationLabel(application.getApplicationInfo()).toString());
            Drawable applicationIcon = application.getPackageManager().getApplicationIcon(application.getApplicationInfo());
            if (applicationIcon == null) {
                str = null;
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                applicationIcon.draw(canvas);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                String valueOf = String.valueOf(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2));
                if (valueOf.length() != 0) {
                    str = "data:image/png;base64,".concat(valueOf);
                } else {
                    str = new String("data:image/png;base64,");
                }
            }
            jSONObject.put("app_icon", str);
            jSONObject.put("stored_infos_map", this.f37241h.m1414b());
        } catch (JSONException unused) {
        }
        this.f37240g.m1381b().m1437b("UMP_configureFormWithAppAssets", jSONObject.toString());
    }

    /* renamed from: d */
    public final void m1407d(int i, String str, String str2) {
        this.f37240g.m1376g(new C7486u1(2, String.format(Locale.US, "WebResourceError(%d, %s): %s", Integer.valueOf(i), str2, str)));
    }

    /* renamed from: e */
    public final void m1406e(JSONObject jSONObject) {
        String str;
        String str2;
        String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            Log.d("UserMessagingPlatform", "Action[browser]: empty url.");
        }
        Uri parse = Uri.parse(optString);
        if (parse.getScheme() == null) {
            String valueOf = String.valueOf(optString);
            if (valueOf.length() != 0) {
                str2 = "Action[browser]: empty scheme: ".concat(valueOf);
            } else {
                str2 = new String("Action[browser]: empty scheme: ");
            }
            Log.d("UserMessagingPlatform", str2);
        }
        try {
            this.f37235b.startActivity(new Intent("android.intent.action.VIEW", parse));
        } catch (ActivityNotFoundException e) {
            String valueOf2 = String.valueOf(optString);
            if (valueOf2.length() != 0) {
                str = "Action[browser]: can not open url: ".concat(valueOf2);
            } else {
                str = new String("Action[browser]: can not open url: ");
            }
            Log.d("UserMessagingPlatform", str, e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p229y4.InterfaceC7477r1
    /* renamed from: a */
    public final boolean mo1399a(String str, JSONObject jSONObject) {
        char c;
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1370505102:
                if (str.equals("load_complete")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -278739366:
                if (str.equals("configure_app_assets")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 150940456:
                if (str.equals("browser")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1671672458:
                if (str.equals("dismiss")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        return false;
                    }
                    this.f37237d.execute(new Runnable() { // from class: y4.m0
                        @Override // java.lang.Runnable
                        public final void run() {
                            C7467o0.this.m1409b();
                        }
                    });
                    return true;
                }
                m1406e(jSONObject);
                return true;
            }
            String optString = jSONObject.optString("status");
            switch (optString.hashCode()) {
                case -954325659:
                    if (optString.equals("CONSENT_SIGNAL_NON_PERSONALIZED_ADS")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -258041904:
                    if (optString.equals("personalized")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 429411856:
                    if (optString.equals("CONSENT_SIGNAL_SUFFICIENT")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 467888915:
                    if (optString.equals("CONSENT_SIGNAL_PERSONALIZED_ADS")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 1666911234:
                    if (optString.equals("non_personalized")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            if (c2 != 0 && c2 != 1 && c2 != 2 && c2 != 3 && c2 != 4) {
                this.f37240g.m1378e(new C7486u1(1, "We are getting something wrong with the webview."));
            } else {
                this.f37240g.m1379d(3);
            }
            return true;
        }
        this.f37240g.m1377f();
        return true;
    }

    /* renamed from: c */
    public final void m1408c(String str) {
        String str2;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "Receive consent action: ".concat(valueOf);
        } else {
            str2 = new String("Receive consent action: ");
        }
        Log.d("UserMessagingPlatform", str2);
        Uri parse = Uri.parse(str);
        this.f37238e.m1397b(parse.getQueryParameter("action"), parse.getQueryParameter("args"), this, this.f37239f);
    }
}
