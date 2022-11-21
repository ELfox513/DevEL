package p004a3;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import p168r4.C6479yu;
import p168r4.vl0;
/* renamed from: a3.s */
/* loaded from: classes.dex */
public final class View$OnClickListenerC0078s extends FrameLayout implements View.OnClickListener {

    /* renamed from: a */
    public final ImageButton f146a;

    /* renamed from: b */
    public final InterfaceC0061b0 f147b;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC0061b0 interfaceC0061b0 = this.f147b;
        if (interfaceC0061b0 != null) {
            interfaceC0061b0.mo11735e();
        }
    }

    /* renamed from: a */
    public final void m27688a(boolean z) {
        if (z) {
            this.f146a.setVisibility(8);
        } else {
            this.f146a.setVisibility(0);
        }
    }

    public View$OnClickListenerC0078s(Context context, C0077r c0077r, InterfaceC0061b0 interfaceC0061b0) {
        super(context);
        this.f147b = interfaceC0061b0;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.f146a = imageButton;
        imageButton.setImageResource(17301527);
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        C6479yu.m4568a();
        int m6111q = vl0.m6111q(context, c0077r.f142a);
        C6479yu.m4568a();
        int m6111q2 = vl0.m6111q(context, 0);
        C6479yu.m4568a();
        int m6111q3 = vl0.m6111q(context, c0077r.f143b);
        C6479yu.m4568a();
        imageButton.setPadding(m6111q, m6111q2, m6111q3, vl0.m6111q(context, c0077r.f144c));
        imageButton.setContentDescription("Interstitial close button");
        C6479yu.m4568a();
        int m6111q4 = vl0.m6111q(context, c0077r.f145d + c0077r.f142a + c0077r.f143b);
        C6479yu.m4568a();
        addView(imageButton, new FrameLayout.LayoutParams(m6111q4, vl0.m6111q(context, c0077r.f145d + c0077r.f144c), 17));
    }
}
