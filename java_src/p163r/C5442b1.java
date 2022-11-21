package p163r;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import p172s.C6550a;
/* renamed from: r.b1 */
/* loaded from: classes.dex */
public final class C5442b1 implements Iterable<Intent> {

    /* renamed from: a */
    public final ArrayList<Intent> f20130a = new ArrayList<>();

    /* renamed from: b */
    public final Context f20131b;

    /* renamed from: r.b1$a */
    /* loaded from: classes.dex */
    public interface InterfaceC5443a {
        /* renamed from: c */
        Intent mo13290c();
    }

    /* renamed from: i */
    public static C5442b1 m13293i(Context context) {
        return new C5442b1(context);
    }

    /* renamed from: d */
    public C5442b1 m13296d(Intent intent) {
        this.f20130a.add(intent);
        return this;
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f20130a.iterator();
    }

    /* renamed from: k */
    public void m13292k() {
        m13291l(null);
    }

    /* renamed from: e */
    public C5442b1 m13295e(Activity activity) {
        Intent intent;
        if (activity instanceof InterfaceC5443a) {
            intent = ((InterfaceC5443a) activity).mo13290c();
        } else {
            intent = null;
        }
        if (intent == null) {
            intent = C5477m.m13246a(activity);
        }
        if (intent != null) {
            ComponentName component = intent.getComponent();
            if (component == null) {
                component = intent.resolveActivity(this.f20131b.getPackageManager());
            }
            m13294g(component);
            m13296d(intent);
        }
        return this;
    }

    /* renamed from: g */
    public C5442b1 m13294g(ComponentName componentName) {
        int size = this.f20130a.size();
        try {
            Intent m13245b = C5477m.m13245b(this.f20131b, componentName);
            while (m13245b != null) {
                this.f20130a.add(size, m13245b);
                m13245b = C5477m.m13245b(this.f20131b, m13245b.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: l */
    public void m13291l(Bundle bundle) {
        if (!this.f20130a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f20130a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (!C6550a.m3934f(this.f20131b, intentArr, bundle)) {
                Intent intent = new Intent(intentArr[intentArr.length - 1]);
                intent.addFlags(268435456);
                this.f20131b.startActivity(intent);
                return;
            }
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }

    public C5442b1(Context context) {
        this.f20131b = context;
    }
}
