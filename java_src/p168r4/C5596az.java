package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import p016b3.C0492j1;
import p042d4.C3325e;
import p220x3.C7297q;
/* renamed from: r4.az */
/* loaded from: classes2.dex */
public final class C5596az {

    /* renamed from: a */
    public final Context f20771a;

    public C5596az(Context context) {
        C7297q.m1882k(context, "Context can not be null");
        this.f20771a = context;
    }

    /* renamed from: a */
    public final boolean m12916a() {
        if (((Boolean) C0492j1.m26361a(this.f20771a, new CallableC6520zy())).booleanValue() && C3325e.m19140a(this.f20771a).m19148a("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        return false;
    }

    @TargetApi(14)
    /* renamed from: b */
    public final boolean m12915b() {
        if (m12914c(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"))) {
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public final boolean m12914c(Intent intent) {
        C7297q.m1882k(intent, "Intent can not be null");
        if (this.f20771a.getPackageManager().queryIntentActivities(intent, 0).isEmpty()) {
            return false;
        }
        return true;
    }
}
