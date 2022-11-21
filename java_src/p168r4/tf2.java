package p168r4;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;
import p016b3.C0478g;
import p016b3.C0497k2;
import p042d4.C3325e;
import p235z2.C7601t;
/* renamed from: r4.tf2 */
/* loaded from: classes2.dex */
public final class tf2 implements eg2<uf2> {

    /* renamed from: a */
    public final i83 f31829a;

    /* renamed from: b */
    public final Context f31830b;

    /* renamed from: c */
    public final im0 f31831c;

    public tf2(i83 i83Var, Context context, im0 im0Var) {
        this.f31829a = i83Var;
        this.f31830b = context;
        this.f31831c = im0Var;
    }

    @Override // p168r4.eg2
    public final h83<uf2> zza() {
        return this.f31829a.mo8015c(new Callable(this) { // from class: r4.sf2

            /* renamed from: a */
            public final tf2 f31323a;

            {
                this.f31323a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f31323a.m6829a();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ uf2 m6829a() {
        int i;
        boolean m19142g = C3325e.m19140a(this.f31830b).m19142g();
        C7601t.m939d();
        boolean m26314h = C0497k2.m26314h(this.f31830b);
        String str = this.f31831c.f25171a;
        C7601t.m937f();
        boolean m26373s = C0478g.m26373s();
        C7601t.m939d();
        ApplicationInfo applicationInfo = this.f31830b.getApplicationInfo();
        if (applicationInfo == null) {
            i = 0;
        } else {
            i = applicationInfo.targetSdkVersion;
        }
        return new uf2(m19142g, m26314h, str, m26373s, i, DynamiteModule.m23005c(this.f31830b, ModuleDescriptor.MODULE_ID), DynamiteModule.m23007a(this.f31830b, ModuleDescriptor.MODULE_ID));
    }
}
