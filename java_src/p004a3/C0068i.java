package p004a3;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import p016b3.C0547y;
/* renamed from: a3.i */
/* loaded from: classes.dex */
public final class C0068i extends RelativeLayout {

    /* renamed from: a */
    public final C0547y f112a;

    /* renamed from: b */
    public boolean f113b;

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f113b) {
            return false;
        }
        this.f112a.m26248a(motionEvent);
        return false;
    }

    public C0068i(Context context, String str, String str2, String str3) {
        super(context);
        C0547y c0547y = new C0547y(context, str);
        this.f112a = c0547y;
        c0547y.m26245d(str2);
        c0547y.m26246c(str3);
    }
}
