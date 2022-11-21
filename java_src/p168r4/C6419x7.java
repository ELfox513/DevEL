package p168r4;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: r4.x7 */
/* loaded from: classes2.dex */
public final class C6419x7 {

    /* renamed from: a */
    public final Context f33497a;

    /* renamed from: b */
    public final Handler f33498b;

    /* renamed from: c */
    public final InterfaceC6197r7 f33499c;

    /* renamed from: d */
    public final AudioManager f33500d;

    /* renamed from: e */
    public C6308u7 f33501e;

    /* renamed from: f */
    public int f33502f;

    /* renamed from: g */
    public int f33503g;

    /* renamed from: h */
    public boolean f33504h;

    /* renamed from: f */
    public static /* synthetic */ void m5455f(C6419x7 c6419x7) {
        c6419x7.m5454g();
    }

    /* renamed from: c */
    public final int m5458c() {
        int streamMinVolume;
        if (C5979lc.f27164a >= 28) {
            streamMinVolume = this.f33500d.getStreamMinVolume(this.f33502f);
            return streamMinVolume;
        }
        return 0;
    }

    /* renamed from: d */
    public final int m5457d() {
        return this.f33500d.getStreamMaxVolume(this.f33502f);
    }

    /* renamed from: i */
    public static boolean m5452i(AudioManager audioManager, int i) {
        boolean isStreamMute;
        if (C5979lc.f27164a >= 23) {
            isStreamMute = audioManager.isStreamMute(i);
            return isStreamMute;
        } else if (m5453h(audioManager, i) == 0) {
            return true;
        } else {
            return false;
        }
    }

    /* renamed from: b */
    public final void m5459b(int i) {
        C6419x7 c6419x7;
        C6007m3 m7994T;
        C6007m3 c6007m3;
        CopyOnWriteArraySet copyOnWriteArraySet;
        if (this.f33502f == 3) {
            return;
        }
        this.f33502f = 3;
        m5454g();
        SurfaceHolder$CallbackC6049n7 surfaceHolder$CallbackC6049n7 = (SurfaceHolder$CallbackC6049n7) this.f33499c;
        c6419x7 = surfaceHolder$CallbackC6049n7.f28187a.f30013l;
        m7994T = C6160q7.m7994T(c6419x7);
        c6007m3 = surfaceHolder$CallbackC6049n7.f28187a.f30001F;
        if (!m7994T.equals(c6007m3)) {
            surfaceHolder$CallbackC6049n7.f28187a.f30001F = m7994T;
            copyOnWriteArraySet = surfaceHolder$CallbackC6049n7.f28187a.f30009h;
            Iterator it = copyOnWriteArraySet.iterator();
            while (it.hasNext()) {
                ((InterfaceC6381w6) it.next()).mo5828t(m7994T);
            }
        }
    }

    /* renamed from: e */
    public final void m5456e() {
        C6308u7 c6308u7 = this.f33501e;
        if (c6308u7 != null) {
            try {
                this.f33497a.unregisterReceiver(c6308u7);
            } catch (RuntimeException e) {
                C5720eb.m11833a("StreamVolumeManager", "Error unregistering stream volume receiver", e);
            }
            this.f33501e = null;
        }
    }

    /* renamed from: g */
    public final void m5454g() {
        CopyOnWriteArraySet copyOnWriteArraySet;
        int m5453h = m5453h(this.f33500d, this.f33502f);
        boolean m5452i = m5452i(this.f33500d, this.f33502f);
        if (this.f33503g != m5453h || this.f33504h != m5452i) {
            this.f33503g = m5453h;
            this.f33504h = m5452i;
            copyOnWriteArraySet = ((SurfaceHolder$CallbackC6049n7) this.f33499c).f28187a.f30009h;
            Iterator it = copyOnWriteArraySet.iterator();
            while (it.hasNext()) {
                ((InterfaceC6381w6) it.next()).mo5831B(m5453h, m5452i);
            }
        }
    }

    public C6419x7(Context context, Handler handler, InterfaceC6197r7 interfaceC6197r7) {
        Context applicationContext = context.getApplicationContext();
        this.f33497a = applicationContext;
        this.f33498b = handler;
        this.f33499c = interfaceC6197r7;
        AudioManager audioManager = (AudioManager) applicationContext.getSystemService("audio");
        C5903ja.m10370e(audioManager);
        this.f33500d = audioManager;
        this.f33502f = 3;
        this.f33503g = m5453h(audioManager, 3);
        this.f33504h = m5452i(audioManager, this.f33502f);
        C6308u7 c6308u7 = new C6308u7(this, null);
        try {
            applicationContext.registerReceiver(c6308u7, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f33501e = c6308u7;
        } catch (RuntimeException e) {
            C5720eb.m11833a("StreamVolumeManager", "Error registering stream volume receiver", e);
        }
    }

    /* renamed from: h */
    public static int m5453h(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e) {
            StringBuilder sb = new StringBuilder(60);
            sb.append("Could not retrieve stream volume for stream type ");
            sb.append(i);
            C5720eb.m11833a("StreamVolumeManager", sb.toString(), e);
            return audioManager.getStreamMaxVolume(i);
        }
    }
}
