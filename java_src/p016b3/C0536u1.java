package p016b3;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import p168r4.dn0;
import p235z2.C7601t;
/* renamed from: b3.u1 */
/* loaded from: classes.dex */
public final class C0536u1 {

    /* renamed from: a */
    public final View f1689a;

    /* renamed from: b */
    public Activity f1690b;

    /* renamed from: c */
    public boolean f1691c;

    /* renamed from: d */
    public boolean f1692d;

    /* renamed from: e */
    public boolean f1693e;

    /* renamed from: f */
    public final ViewTreeObserver.OnGlobalLayoutListener f1694f;

    public C0536u1(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.f1690b = activity;
        this.f1689a = view;
        this.f1694f = onGlobalLayoutListener;
    }

    /* renamed from: a */
    public final void m26264a(Activity activity) {
        this.f1690b = activity;
    }

    /* renamed from: b */
    public final void m26263b() {
        this.f1693e = true;
        if (this.f1692d) {
            m26259f();
        }
    }

    /* renamed from: c */
    public final void m26262c() {
        this.f1693e = false;
        m26258g();
    }

    /* renamed from: d */
    public final void m26261d() {
        this.f1692d = true;
        if (this.f1693e) {
            m26259f();
        }
    }

    /* renamed from: e */
    public final void m26260e() {
        this.f1692d = false;
        m26258g();
    }

    /* renamed from: f */
    public final void m26259f() {
        if (!this.f1691c) {
            Activity activity = this.f1690b;
            if (activity != null) {
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f1694f;
                ViewTreeObserver m26257h = m26257h(activity);
                if (m26257h != null) {
                    m26257h.addOnGlobalLayoutListener(onGlobalLayoutListener);
                }
            }
            C7601t.m943A();
            dn0.m12083a(this.f1689a, this.f1694f);
            this.f1691c = true;
        }
    }

    /* renamed from: g */
    public final void m26258g() {
        Activity activity = this.f1690b;
        if (activity != null && this.f1691c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f1694f;
            ViewTreeObserver m26257h = m26257h(activity);
            if (m26257h != null) {
                C7601t.m937f();
                m26257h.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.f1691c = false;
        }
    }

    /* renamed from: h */
    public static ViewTreeObserver m26257h(Activity activity) {
        View decorView;
        Window window = activity.getWindow();
        if (window == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }
}
