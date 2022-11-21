package p081h7;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import java.util.List;
import p029c7.C1078a;
import p099j7.C4385k;
import p099j7.EnumC4375g;
/* renamed from: h7.f */
/* loaded from: classes2.dex */
public class C4065f {

    /* renamed from: f */
    public static final C1078a f17608f = C1078a.m24639e();

    /* renamed from: a */
    public final Runtime f17609a;

    /* renamed from: b */
    public final ActivityManager f17610b;

    /* renamed from: c */
    public final ActivityManager.MemoryInfo f17611c;

    /* renamed from: d */
    public final String f17612d;

    /* renamed from: e */
    public final Context f17613e;

    public C4065f(Context context) {
        this(Runtime.getRuntime(), context);
    }

    /* renamed from: b */
    public int m17462b() {
        return C4385k.m16722c(EnumC4375g.f18290q.m16734c(this.f17611c.totalMem));
    }

    /* renamed from: c */
    public int m17461c() {
        return C4385k.m16722c(EnumC4375g.f18290q.m16734c(this.f17609a.maxMemory()));
    }

    /* renamed from: e */
    public String m17459e() {
        return this.f17612d;
    }

    public C4065f(Runtime runtime, Context context) {
        this.f17609a = runtime;
        this.f17613e = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f17610b = activityManager;
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.f17611c = memoryInfo;
        activityManager.getMemoryInfo(memoryInfo);
        this.f17612d = m17463a();
    }

    /* renamed from: d */
    public int m17460d() {
        return C4385k.m16722c(EnumC4375g.f18288k.m16734c(this.f17610b.getMemoryClass()));
    }

    /* renamed from: a */
    public final String m17463a() {
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = this.f17610b.getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return this.f17613e.getPackageName();
    }
}
