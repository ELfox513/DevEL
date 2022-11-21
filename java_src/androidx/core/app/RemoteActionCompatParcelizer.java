package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import p200v0.AbstractC6966a;
/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static void write(RemoteActionCompat remoteActionCompat, AbstractC6966a abstractC6966a) {
        abstractC6966a.m2853x(false, false);
        abstractC6966a.m2868M(remoteActionCompat.f838a, 1);
        abstractC6966a.m2874D(remoteActionCompat.f839b, 2);
        abstractC6966a.m2874D(remoteActionCompat.f840c, 3);
        abstractC6966a.m2872H(remoteActionCompat.f841d, 4);
        abstractC6966a.m2852z(remoteActionCompat.f842e, 5);
        abstractC6966a.m2852z(remoteActionCompat.f843f, 6);
    }

    public static RemoteActionCompat read(AbstractC6966a abstractC6966a) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f838a = (IconCompat) abstractC6966a.m2854v(remoteActionCompat.f838a, 1);
        remoteActionCompat.f839b = abstractC6966a.m2860l(remoteActionCompat.f839b, 2);
        remoteActionCompat.f840c = abstractC6966a.m2860l(remoteActionCompat.f840c, 3);
        remoteActionCompat.f841d = (PendingIntent) abstractC6966a.m2857r(remoteActionCompat.f841d, 4);
        remoteActionCompat.f842e = abstractC6966a.m2862h(remoteActionCompat.f842e, 5);
        remoteActionCompat.f843f = abstractC6966a.m2862h(remoteActionCompat.f843f, 6);
        return remoteActionCompat;
    }
}
