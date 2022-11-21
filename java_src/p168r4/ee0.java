package p168r4;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.ee0 */
/* loaded from: classes2.dex */
public final class ee0 extends fe0 implements u50<cs0> {

    /* renamed from: c */
    public final cs0 f22951c;

    /* renamed from: d */
    public final Context f22952d;

    /* renamed from: e */
    public final WindowManager f22953e;

    /* renamed from: f */
    public final C5596az f22954f;

    /* renamed from: g */
    public DisplayMetrics f22955g;

    /* renamed from: h */
    public float f22956h;

    /* renamed from: i */
    public int f22957i;

    /* renamed from: j */
    public int f22958j;

    /* renamed from: k */
    public int f22959k;

    /* renamed from: l */
    public int f22960l;

    /* renamed from: m */
    public int f22961m;

    /* renamed from: n */
    public int f22962n;

    /* renamed from: o */
    public int f22963o;

    public ee0(cs0 cs0Var, Context context, C5596az c5596az) {
        super(cs0Var, "");
        this.f22957i = -1;
        this.f22958j = -1;
        this.f22960l = -1;
        this.f22961m = -1;
        this.f22962n = -1;
        this.f22963o = -1;
        this.f22951c = cs0Var;
        this.f22952d = context;
        this.f22954f = c5596az;
        this.f22953e = (WindowManager) context.getSystemService("window");
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(cs0 cs0Var, Map map) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        JSONObject jSONObject;
        this.f22955g = new DisplayMetrics();
        Display defaultDisplay = this.f22953e.getDefaultDisplay();
        defaultDisplay.getMetrics(this.f22955g);
        this.f22956h = this.f22955g.density;
        this.f22959k = defaultDisplay.getRotation();
        C6479yu.m4568a();
        DisplayMetrics displayMetrics = this.f22955g;
        this.f22957i = vl0.m6113o(displayMetrics, displayMetrics.widthPixels);
        C6479yu.m4568a();
        DisplayMetrics displayMetrics2 = this.f22955g;
        this.f22958j = vl0.m6113o(displayMetrics2, displayMetrics2.heightPixels);
        Activity mo5078h = this.f22951c.mo5078h();
        if (mo5078h != null && mo5078h.getWindow() != null) {
            C7601t.m939d();
            int[] m26302t = C0497k2.m26302t(mo5078h);
            C6479yu.m4568a();
            this.f22960l = vl0.m6113o(this.f22955g, m26302t[0]);
            C6479yu.m4568a();
            this.f22961m = vl0.m6113o(this.f22955g, m26302t[1]);
        } else {
            this.f22960l = this.f22957i;
            this.f22961m = this.f22958j;
        }
        if (this.f22951c.mo5049r().m6018g()) {
            this.f22962n = this.f22957i;
            this.f22963o = this.f22958j;
        } else {
            this.f22951c.measure(0, 0);
        }
        m11552g(this.f22957i, this.f22958j, this.f22960l, this.f22961m, this.f22956h, this.f22959k);
        de0 de0Var = new de0();
        C5596az c5596az = this.f22954f;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        de0Var.m12155g(c5596az.m12914c(intent));
        C5596az c5596az2 = this.f22954f;
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        de0Var.m12156f(c5596az2.m12914c(intent2));
        de0Var.m12154h(this.f22954f.m12915b());
        de0Var.m12153i(this.f22954f.m12916a());
        de0Var.m12152j(true);
        z = de0Var.f22232a;
        z2 = de0Var.f22233b;
        z3 = de0Var.f22234c;
        z4 = de0Var.f22235d;
        z5 = de0Var.f22236e;
        cs0 cs0Var2 = this.f22951c;
        try {
            jSONObject = new JSONObject().put("sms", z).put("tel", z2).put("calendar", z3).put("storePicture", z4).put("inlineVideo", z5);
        } catch (JSONException e) {
            cm0.m12439d("Error occurred while obtaining the MRAID capabilities.", e);
            jSONObject = null;
        }
        cs0Var2.mo5091c("onDeviceFeaturesReceived", jSONObject);
        int[] iArr = new int[2];
        this.f22951c.getLocationOnScreen(iArr);
        m11809h(C6479yu.m4568a().m6127a(this.f22952d, iArr[0]), C6479yu.m4568a().m6127a(this.f22952d, iArr[1]));
        if (cm0.m12433j(2)) {
            cm0.m12438e("Dispatching Ready Event.");
        }
        m11556c(this.f22951c.mo5061n().f25171a);
    }

    /* renamed from: h */
    public final void m11809h(int i, int i2) {
        int i3;
        int i4 = 0;
        if (this.f22952d instanceof Activity) {
            C7601t.m939d();
            i3 = C0497k2.m26300v((Activity) this.f22952d)[0];
        } else {
            i3 = 0;
        }
        if (this.f22951c.mo5049r() == null || !this.f22951c.mo5049r().m6018g()) {
            int width = this.f22951c.getWidth();
            int height = this.f22951c.getHeight();
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30854M)).booleanValue()) {
                if (width == 0) {
                    if (this.f22951c.mo5049r() != null) {
                        width = this.f22951c.mo5049r().f32805c;
                    } else {
                        width = 0;
                    }
                }
                if (height == 0) {
                    if (this.f22951c.mo5049r() != null) {
                        i4 = this.f22951c.mo5049r().f32804b;
                    }
                    this.f22962n = C6479yu.m4568a().m6127a(this.f22952d, width);
                    this.f22963o = C6479yu.m4568a().m6127a(this.f22952d, i4);
                }
            }
            i4 = height;
            this.f22962n = C6479yu.m4568a().m6127a(this.f22952d, width);
            this.f22963o = C6479yu.m4568a().m6127a(this.f22952d, i4);
        }
        m11554e(i, i2 - i3, this.f22962n, this.f22963o);
        this.f22951c.mo5057o0().mo7011N0(i, i2);
    }
}
