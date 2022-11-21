package p168r4;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.List;
import java.util.concurrent.Callable;
import p016b3.InterfaceC0549y1;
/* renamed from: r4.o61 */
/* loaded from: classes2.dex */
public final class o61 {

    /* renamed from: a */
    public final mt2 f28900a;

    /* renamed from: b */
    public final im0 f28901b;

    /* renamed from: c */
    public final ApplicationInfo f28902c;

    /* renamed from: d */
    public final String f28903d;

    /* renamed from: e */
    public final List<String> f28904e;

    /* renamed from: f */
    public final PackageInfo f28905f;

    /* renamed from: g */
    public final or3<h83<String>> f28906g;

    /* renamed from: h */
    public final String f28907h;

    /* renamed from: i */
    public final ig2<Bundle> f28908i;

    public o61(mt2 mt2Var, im0 im0Var, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, or3<h83<String>> or3Var, InterfaceC0549y1 interfaceC0549y1, String str2, ig2<Bundle> ig2Var) {
        this.f28900a = mt2Var;
        this.f28901b = im0Var;
        this.f28902c = applicationInfo;
        this.f28903d = str;
        this.f28904e = list;
        this.f28905f = packageInfo;
        this.f28906g = or3Var;
        this.f28907h = str2;
        this.f28908i = ig2Var;
    }

    /* renamed from: a */
    public final h83<Bundle> m8878a() {
        mt2 mt2Var = this.f28900a;
        return xs2.m5028a(this.f28908i.m10662a(new Bundle()), gt2.SIGNALS, mt2Var).m11948i();
    }

    /* renamed from: c */
    public final /* synthetic */ og0 m8876c(h83 h83Var) {
        return new og0((Bundle) h83Var.get(), this.f28901b, this.f28902c, this.f28903d, this.f28904e, this.f28905f, this.f28906g.m8710a().get(), this.f28907h, null, null);
    }

    /* renamed from: b */
    public final h83<og0> m8877b() {
        final h83<Bundle> m8878a = m8878a();
        return this.f28900a.m11681f(gt2.REQUEST_PARCEL, m8878a, this.f28906g.m8710a()).m6383a(new Callable(this, m8878a) { // from class: r4.n61

            /* renamed from: a */
            public final o61 f28172a;

            /* renamed from: b */
            public final h83 f28173b;

            {
                this.f28172a = this;
                this.f28173b = m8878a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f28172a.m8876c(this.f28173b);
            }
        }).m11948i();
    }
}
