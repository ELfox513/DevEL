package p168r4;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import java.util.Set;
import java.util.concurrent.Callable;
/* renamed from: r4.ld2 */
/* loaded from: classes2.dex */
public final class ld2 implements eg2<md2> {

    /* renamed from: a */
    public final i83 f27190a;

    /* renamed from: b */
    public final ViewGroup f27191b;

    /* renamed from: c */
    public final Context f27192c;

    /* renamed from: d */
    public final Set<String> f27193d;

    public ld2(i83 i83Var, ViewGroup viewGroup, Context context, Set<String> set) {
        this.f27190a = i83Var;
        this.f27193d = set;
        this.f27191b = viewGroup;
        this.f27192c = context;
    }

    @Override // p168r4.eg2
    public final h83<md2> zza() {
        return this.f27190a.mo8015c(new Callable(this) { // from class: r4.kd2

            /* renamed from: a */
            public final ld2 f26377a;

            {
                this.f26377a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f26377a.m9678a();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ md2 m9678a() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31038i4)).booleanValue() && this.f27191b != null && this.f27193d.contains("banner")) {
            return new md2(Boolean.valueOf(this.f27191b.isHardwareAccelerated()));
        }
        Boolean bool = null;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31046j4)).booleanValue() && this.f27193d.contains("native")) {
            Context context = this.f27192c;
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                Window window = activity.getWindow();
                if (window != null && (window.getAttributes().flags & 16777216) != 0) {
                    bool = Boolean.TRUE;
                } else {
                    try {
                        boolean z = false;
                        if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0) {
                            z = true;
                        }
                        bool = Boolean.valueOf(z);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                return new md2(bool);
            }
        }
        return new md2(null);
    }
}
