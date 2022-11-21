package android.app;

import android.annotation.NonNull;
import android.annotation.Nullable;
import android.os.Parcelable;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public final /* synthetic */ class ApplicationExitInfo implements Parcelable {
    static {
        throw new NoClassDefFoundError();
    }

    public native /* synthetic */ int getImportance();

    public native /* synthetic */ int getPid();

    @NonNull
    public native /* synthetic */ String getProcessName();

    public native /* synthetic */ long getPss();

    public native /* synthetic */ int getReason();

    public native /* synthetic */ long getRss();

    public native /* synthetic */ long getTimestamp();

    @Nullable
    public native /* synthetic */ InputStream getTraceInputStream() throws IOException;

    public native /* synthetic */ String toString();
}
