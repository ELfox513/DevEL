package android.app.job;

import android.annotation.NonNull;
import android.content.ComponentName;
import android.os.Parcelable;
import android.p010os.PersistableBundle;
/* loaded from: classes.dex */
public /* synthetic */ class JobInfo implements Parcelable {

    /* loaded from: classes.dex */
    public final /* synthetic */ class Builder {
        static {
            throw new NoClassDefFoundError();
        }

        public /* synthetic */ Builder(int i, @NonNull ComponentName componentName) {
        }

        public native /* synthetic */ JobInfo build();

        public native /* synthetic */ Builder setBackoffCriteria(long j, int i);

        public native /* synthetic */ Builder setExtras(@NonNull PersistableBundle persistableBundle);

        public native /* synthetic */ Builder setMinimumLatency(long j);

        public native /* synthetic */ Builder setOverrideDeadline(long j);

        public native /* synthetic */ Builder setPersisted(boolean z);

        public native /* synthetic */ Builder setRequiredNetworkType(int i);

        public native /* synthetic */ Builder setRequiresCharging(boolean z);

        public native /* synthetic */ Builder setRequiresDeviceIdle(boolean z);
    }

    static {
        throw new NoClassDefFoundError();
    }

    @NonNull
    public native /* synthetic */ PersistableBundle getExtras();

    public native /* synthetic */ int getId();

    @NonNull
    public native /* synthetic */ ComponentName getService();
}
