package p168r4;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
/* renamed from: r4.ut0 */
/* loaded from: classes2.dex */
public final class ut0 extends MutableContextWrapper {

    /* renamed from: a */
    public Activity f32386a;

    /* renamed from: b */
    public Context f32387b;

    /* renamed from: c */
    public Context f32388c;

    /* renamed from: a */
    public final Activity m6373a() {
        return this.f32386a;
    }

    /* renamed from: b */
    public final Context m6372b() {
        return this.f32388c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f32388c.getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f32386a;
        if (activity != null) {
            activity.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        this.f32387b.startActivity(intent);
    }

    public ut0(Context context) {
        super(context);
        setBaseContext(context);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        Activity activity;
        Context applicationContext = context.getApplicationContext();
        this.f32387b = applicationContext;
        if (context instanceof Activity) {
            activity = (Activity) context;
        } else {
            activity = null;
        }
        this.f32386a = activity;
        this.f32388c = context;
        super.setBaseContext(applicationContext);
    }
}
