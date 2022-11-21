package p073h;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ViewConfiguration;
import p021c.C1008a;
import p021c.C1009b;
import p021c.C1011d;
import p021c.C1017j;
/* renamed from: h.a */
/* loaded from: classes.dex */
public class C3910a {

    /* renamed from: a */
    public Context f17152a;

    /* renamed from: b */
    public static C3910a m17784b(Context context) {
        return new C3910a(context);
    }

    /* renamed from: a */
    public boolean m17785a() {
        return this.f17152a.getApplicationInfo().targetSdkVersion < 14;
    }

    /* renamed from: c */
    public int m17783c() {
        return this.f17152a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    /* renamed from: e */
    public int m17781e() {
        return this.f17152a.getResources().getDimensionPixelSize(C1011d.f2541b);
    }

    /* renamed from: g */
    public boolean m17779g() {
        return this.f17152a.getResources().getBoolean(C1009b.f2531a);
    }

    /* renamed from: d */
    public int m17782d() {
        Configuration configuration = this.f17152a.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp <= 600 && i <= 600) {
            if (i <= 960 || i2 <= 720) {
                if (i <= 720 || i2 <= 960) {
                    if (i < 500) {
                        if (i <= 640 || i2 <= 480) {
                            if (i <= 480 || i2 <= 640) {
                                if (i >= 360) {
                                    return 3;
                                }
                                return 2;
                            }
                            return 4;
                        }
                        return 4;
                    }
                    return 4;
                }
                return 5;
            }
            return 5;
        }
        return 5;
    }

    /* renamed from: f */
    public int m17780f() {
        TypedArray obtainStyledAttributes = this.f17152a.obtainStyledAttributes(null, C1017j.f2791a, C1008a.f2507c, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C1017j.f2836j, 0);
        Resources resources = this.f17152a.getResources();
        if (!m17779g()) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(C1011d.f2540a));
        }
        obtainStyledAttributes.recycle();
        return layoutDimension;
    }

    /* renamed from: h */
    public boolean m17778h() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return !ViewConfiguration.get(this.f17152a).hasPermanentMenuKey();
    }

    public C3910a(Context context) {
        this.f17152a = context;
    }
}
