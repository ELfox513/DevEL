package p168r4;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.List;
import p136o.AbstractServiceConnectionC5059d;
import p136o.C5055b;
import p136o.C5061e;
/* renamed from: r4.q00 */
/* loaded from: classes2.dex */
public final class q00 {

    /* renamed from: a */
    public C5061e f29872a;

    /* renamed from: b */
    public C5055b f29873b;

    /* renamed from: c */
    public AbstractServiceConnectionC5059d f29874c;

    /* renamed from: d */
    public o00 f29875d;

    /* renamed from: b */
    public final void m8085b(Activity activity) {
        AbstractServiceConnectionC5059d abstractServiceConnectionC5059d = this.f29874c;
        if (abstractServiceConnectionC5059d == null) {
            return;
        }
        activity.unbindService(abstractServiceConnectionC5059d);
        this.f29873b = null;
        this.f29872a = null;
        this.f29874c = null;
    }

    /* renamed from: c */
    public final C5061e m8084c() {
        C5055b c5055b = this.f29873b;
        if (c5055b == null) {
            this.f29872a = null;
        } else if (this.f29872a == null) {
            this.f29872a = c5055b.m14747b(null);
        }
        return this.f29872a;
    }

    /* renamed from: d */
    public final void m8083d(o00 o00Var) {
        this.f29875d = o00Var;
    }

    /* renamed from: g */
    public final void m8080g() {
        this.f29873b = null;
        this.f29872a = null;
    }

    /* renamed from: e */
    public final void m8082e(Activity activity) {
        String m10169a;
        if (this.f29873b != null || (m10169a = js3.m10169a(activity)) == null) {
            return;
        }
        ks3 ks3Var = new ks3(this, null);
        this.f29874c = ks3Var;
        C5055b.m14748a(activity, m10169a, ks3Var);
    }

    /* renamed from: f */
    public final void m8081f(C5055b c5055b) {
        this.f29873b = c5055b;
        c5055b.m14746c(0L);
        o00 o00Var = this.f29875d;
        if (o00Var != null) {
            o00Var.zza();
        }
    }

    /* renamed from: a */
    public static boolean m8086a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (queryIntentActivities != null && resolveActivity != null) {
            for (int i = 0; i < queryIntentActivities.size(); i++) {
                if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                    return resolveActivity.activityInfo.packageName.equals(js3.m10169a(context));
                }
            }
        }
        return false;
    }
}
