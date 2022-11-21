package p092j0;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;
@Deprecated
/* renamed from: j0.a */
/* loaded from: classes.dex */
public abstract class AbstractC4271a extends BroadcastReceiver {

    /* renamed from: a */
    public static final SparseArray<PowerManager.WakeLock> f18111a = new SparseArray<>();

    /* renamed from: b */
    public static int f18112b = 1;

    /* renamed from: b */
    public static boolean m16881b(Intent intent) {
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return false;
        }
        SparseArray<PowerManager.WakeLock> sparseArray = f18111a;
        synchronized (sparseArray) {
            PowerManager.WakeLock wakeLock = sparseArray.get(intExtra);
            if (wakeLock != null) {
                wakeLock.release();
                sparseArray.remove(intExtra);
                return true;
            }
            Log.w("WakefulBroadcastReceiv.", "No active wake lock id #" + intExtra);
            return true;
        }
    }

    /* renamed from: c */
    public static ComponentName m16880c(Context context, Intent intent) {
        SparseArray<PowerManager.WakeLock> sparseArray = f18111a;
        synchronized (sparseArray) {
            int i = f18112b;
            int i2 = i + 1;
            f18112b = i2;
            if (i2 <= 0) {
                f18112b = 1;
            }
            intent.putExtra("androidx.contentpager.content.wakelockid", i);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + startService.flattenToShortString());
            newWakeLock.setReferenceCounted(false);
            newWakeLock.acquire(60000L);
            sparseArray.put(i, newWakeLock);
            return startService;
        }
    }
}
