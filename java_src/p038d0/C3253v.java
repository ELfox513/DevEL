package p038d0;

import android.view.View;
import android.view.ViewGroup;
/* renamed from: d0.v */
/* loaded from: classes.dex */
public class C3253v {

    /* renamed from: a */
    public int f15568a;

    /* renamed from: b */
    public int f15569b;

    public C3253v(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    public int m19238a() {
        return this.f15568a | this.f15569b;
    }

    /* renamed from: b */
    public void m19237b(View view, View view2, int i) {
        m19236c(view, view2, i, 0);
    }

    /* renamed from: c */
    public void m19236c(View view, View view2, int i, int i2) {
        if (i2 == 1) {
            this.f15569b = i;
        } else {
            this.f15568a = i;
        }
    }

    /* renamed from: d */
    public void m19235d(View view, int i) {
        if (i == 1) {
            this.f15569b = 0;
        } else {
            this.f15568a = 0;
        }
    }
}
