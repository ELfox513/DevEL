package p004a3;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import p168r4.cs0;
/* renamed from: a3.j */
/* loaded from: classes.dex */
public final class C0069j {

    /* renamed from: a */
    public final int f114a;

    /* renamed from: b */
    public final ViewGroup.LayoutParams f115b;

    /* renamed from: c */
    public final ViewGroup f116c;

    /* renamed from: d */
    public final Context f117d;

    public C0069j(cs0 cs0Var) {
        this.f115b = cs0Var.getLayoutParams();
        ViewParent parent = cs0Var.getParent();
        this.f117d = cs0Var.mo5131D0();
        if (parent != null && (parent instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) parent;
            this.f116c = viewGroup;
            this.f114a = viewGroup.indexOfChild(cs0Var.mo5124I());
            viewGroup.removeView(cs0Var.mo5124I());
            cs0Var.mo5098Y0(true);
            return;
        }
        throw new C0067h("Could not get the parent of the WebView for an overlay.");
    }
}
