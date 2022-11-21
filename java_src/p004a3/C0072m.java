package p004a3;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import p016b3.AbstractC0467d0;
import p016b3.C0478g;
import p016b3.C0497k2;
import p235z2.C7591j;
import p235z2.C7601t;
/* renamed from: a3.m */
/* loaded from: classes.dex */
public final class C0072m extends AbstractC0467d0 {

    /* renamed from: c */
    public final /* synthetic */ BinderC0073n f120c;

    public /* synthetic */ C0072m(BinderC0073n binderC0073n, C0070k c0070k) {
        this.f120c = binderC0073n;
    }

    @Override // p016b3.AbstractC0467d0
    /* renamed from: a */
    public final void mo10004a() {
        Bitmap m26393a = C7601t.m920w().m26393a(Integer.valueOf(this.f120c.f128b.f7645z.f37571q));
        if (m26393a != null) {
            C0478g m937f = C7601t.m937f();
            BinderC0073n binderC0073n = this.f120c;
            Activity activity = binderC0073n.f127a;
            C7591j c7591j = binderC0073n.f128b.f7645z;
            final Drawable mo26287d = m937f.mo26287d(activity, m26393a, c7591j.f37569k, c7591j.f37570p);
            C0497k2.f1630i.post(new Runnable(this, mo26287d) { // from class: a3.l

                /* renamed from: a */
                public final C0072m f118a;

                /* renamed from: b */
                public final Drawable f119b;

                {
                    this.f118a = this;
                    this.f119b = mo26287d;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C0072m c0072m = this.f118a;
                    c0072m.f120c.f127a.getWindow().setBackgroundDrawable(this.f119b);
                }
            });
        }
    }
}
