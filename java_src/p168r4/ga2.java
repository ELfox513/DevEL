package p168r4;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.List;
import p235z2.C7601t;
/* renamed from: r4.ga2 */
/* loaded from: classes2.dex */
public final class ga2 implements dg2<Bundle> {

    /* renamed from: a */
    public final Context f23951a;

    /* renamed from: b */
    public final C6478yt f23952b;

    /* renamed from: c */
    public final List<Parcelable> f23953c;

    public ga2(Context context, C6478yt c6478yt, List<Parcelable> list) {
        this.f23951a = context;
        this.f23952b = c6478yt;
        this.f23953c = list;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        Bundle bundle2 = bundle;
        if (!j10.f25854a.m6673e().booleanValue()) {
            return;
        }
        Bundle bundle3 = new Bundle();
        C7601t.m939d();
        String str = null;
        try {
            ActivityManager activityManager = (ActivityManager) this.f23951a.getSystemService("activity");
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && (componentName = runningTaskInfo.topActivity) != null) {
                str = componentName.getClassName();
            }
        } catch (Exception unused) {
        }
        bundle3.putString("activity", str);
        Bundle bundle4 = new Bundle();
        bundle4.putInt("width", this.f23952b.f34201p);
        bundle4.putInt("height", this.f23952b.f34198b);
        bundle3.putBundle("size", bundle4);
        if (this.f23953c.size() > 0) {
            List<Parcelable> list = this.f23953c;
            bundle3.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
        }
        bundle2.putBundle("view_hierarchy", bundle3);
    }
}
