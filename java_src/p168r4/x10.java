package p168r4;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.List;
import p060f4.BinderC3514b;
import p220x3.C7297q;
import p235z2.C7601t;
/* renamed from: r4.x10 */
/* loaded from: classes2.dex */
public final class x10 extends RelativeLayout {

    /* renamed from: b */
    public static final float[] f33407b = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    /* renamed from: a */
    public AnimationDrawable f33408a;

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.f33408a;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }

    public x10(Context context, w10 w10Var, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        C7297q.m1883j(w10Var);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f33407b, null, null));
        shapeDrawable.getPaint().setColor(w10Var.m5942c());
        setLayoutParams(layoutParams);
        C7601t.m937f();
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(w10Var.mo5944a())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(w10Var.mo5944a());
            textView.setTextColor(w10Var.m5941d());
            textView.setTextSize(w10Var.m5939g7());
            C6479yu.m4568a();
            int m6111q = vl0.m6111q(context, 4);
            C6479yu.m4568a();
            textView.setPadding(m6111q, 0, vl0.m6111q(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<z10> m5940e = w10Var.m5940e();
        if (m5940e != null && m5940e.size() > 1) {
            this.f33408a = new AnimationDrawable();
            for (z10 z10Var : m5940e) {
                try {
                    this.f33408a.addFrame((Drawable) BinderC3514b.m18740t0(z10Var.mo4484a()), w10Var.m5938h7());
                } catch (Exception e) {
                    cm0.m12439d("Error while getting drawable.", e);
                }
            }
            C7601t.m937f();
            imageView.setBackground(this.f33408a);
        } else if (m5940e.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) BinderC3514b.m18740t0(m5940e.get(0).mo4484a()));
            } catch (Exception e2) {
                cm0.m12439d("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }
}
