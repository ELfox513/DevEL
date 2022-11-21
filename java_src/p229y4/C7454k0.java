package p229y4;

import android.app.Activity;
import android.app.Application;
import android.content.ContextWrapper;
import android.content.Intent;
/* renamed from: y4.k0 */
/* loaded from: classes2.dex */
public final class C7454k0 extends ContextWrapper {

    /* renamed from: a */
    public Activity f37215a;

    public C7454k0(Application application) {
        super(application);
    }

    /* renamed from: a */
    public final void m1423a(Activity activity) {
        this.f37215a = activity;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        Activity activity = this.f37215a;
        if (activity != null) {
            return activity.getSystemService(str);
        }
        return super.getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f37215a;
        if (activity != null) {
            activity.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        super.startActivity(intent);
    }
}
