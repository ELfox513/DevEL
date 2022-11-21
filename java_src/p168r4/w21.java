package p168r4;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.w21 */
/* loaded from: classes2.dex */
public final class w21 extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final Context f33024a;

    /* renamed from: b */
    public View f33025b;

    public w21(Context context) {
        super(context);
        this.f33024a = context;
    }

    /* renamed from: c */
    public final int m5933c(double d) {
        C6479yu.m4568a();
        return vl0.m6111q(this.f33024a, (int) d);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f33025b.setY(-iArr[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f33025b.setY(-iArr[1]);
    }

    /* renamed from: a */
    public static w21 m5935a(Context context, View view, no2 no2Var) {
        Resources resources;
        DisplayMetrics displayMetrics;
        w21 w21Var = new w21(context);
        if (!no2Var.f28434u.isEmpty() && (resources = w21Var.f33024a.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            qo2 qo2Var = no2Var.f28434u.get(0);
            float f = displayMetrics.density;
            w21Var.setLayoutParams(new FrameLayout.LayoutParams((int) (qo2Var.f30241a * f), (int) (qo2Var.f30242b * f)));
        }
        w21Var.f33025b = view;
        w21Var.addView(view);
        C7601t.m943A();
        dn0.m12082b(w21Var, w21Var);
        C7601t.m943A();
        dn0.m12083a(w21Var, w21Var);
        JSONObject jSONObject = no2Var.f28413e0;
        RelativeLayout relativeLayout = new RelativeLayout(w21Var.f33024a);
        JSONObject optJSONObject = jSONObject.optJSONObject("header");
        if (optJSONObject != null) {
            w21Var.m5934b(optJSONObject, relativeLayout, 10);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
        if (optJSONObject2 != null) {
            w21Var.m5934b(optJSONObject2, relativeLayout, 12);
        }
        w21Var.addView(relativeLayout);
        return w21Var;
    }

    /* renamed from: b */
    public final void m5934b(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.f33024a);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int m5933c = m5933c(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, m5933c, 0, m5933c);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, m5933c(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }
}
