package p066g1;

import android.content.Context;
import android.os.PowerManager;
import java.util.HashMap;
import java.util.WeakHashMap;
import p209w0.AbstractC7114j;
/* renamed from: g1.l */
/* loaded from: classes.dex */
public class C3560l {

    /* renamed from: a */
    public static final String f16105a = AbstractC7114j.m2489f("WakeLocks");

    /* renamed from: b */
    public static final WeakHashMap<PowerManager.WakeLock, String> f16106b = new WeakHashMap<>();

    /* renamed from: a */
    public static void m18614a() {
        HashMap hashMap = new HashMap();
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f16106b;
        synchronized (weakHashMap) {
            hashMap.putAll(weakHashMap);
        }
        for (PowerManager.WakeLock wakeLock : hashMap.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                AbstractC7114j.m2491c().mo2484h(f16105a, String.format("WakeLock held for %s", hashMap.get(wakeLock)), new Throwable[0]);
            }
        }
    }

    /* renamed from: b */
    public static PowerManager.WakeLock m18613b(Context context, String str) {
        String str2 = "WorkManager: " + str;
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getApplicationContext().getSystemService("power")).newWakeLock(1, str2);
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f16106b;
        synchronized (weakHashMap) {
            weakHashMap.put(newWakeLock, str2);
        }
        return newWakeLock;
    }
}
