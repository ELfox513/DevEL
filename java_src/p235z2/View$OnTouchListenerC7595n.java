package p235z2;

import android.view.MotionEvent;
import android.view.View;
import p168r4.C6300u;
/* renamed from: z2.n */
/* loaded from: classes.dex */
public final class View$OnTouchListenerC7595n implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ BinderC7600s f37576a;

    public View$OnTouchListenerC7595n(BinderC7600s binderC7600s) {
        this.f37576a = binderC7600s;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C6300u c6300u;
        C6300u c6300u2;
        c6300u = this.f37576a.f37592s;
        if (c6300u != null) {
            c6300u2 = this.f37576a.f37592s;
            c6300u2.m6681d(motionEvent);
            return false;
        }
        return false;
    }
}
