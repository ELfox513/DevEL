package p168r4;

import android.util.Log;
/* renamed from: r4.i3 */
/* loaded from: classes2.dex */
public final class C5860i3 implements InterfaceC5825h5 {

    /* renamed from: a */
    public final qw3 f24937a;

    /* renamed from: b */
    public final long f24938b;

    /* renamed from: c */
    public final long f24939c;

    /* renamed from: d */
    public final long f24940d;

    /* renamed from: e */
    public final long f24941e;

    /* renamed from: f */
    public final long f24942f;

    /* renamed from: g */
    public int f24943g;

    /* renamed from: h */
    public boolean f24944h;

    /* renamed from: j */
    public static void m10734j(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        StringBuilder sb = new StringBuilder(str.length() + 21 + str2.length());
        sb.append(str);
        sb.append(" cannot be less than ");
        sb.append(str2);
        C5903ja.m10373b(z, sb.toString());
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: a */
    public final void mo10743a() {
        m10735i(true);
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: b */
    public final void mo10742b() {
        m10735i(true);
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: c */
    public final boolean mo10741c() {
        return false;
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: e */
    public final long mo10739e() {
        return this.f24942f;
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: f */
    public final qw3 mo10738f() {
        return this.f24937a;
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: h */
    public final void mo10736h(InterfaceC5790g7[] interfaceC5790g7Arr, j44 j44Var, hv3[] hv3VarArr) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = 13107200;
            if (i < 2) {
                if (hv3VarArr[i] != null) {
                    if (interfaceC5790g7Arr[i].mo10965G() != 1) {
                        i3 = 131072000;
                    }
                    i2 += i3;
                }
                i++;
            } else {
                int max = Math.max(13107200, i2);
                this.f24943g = max;
                this.f24937a.m7653b(max);
                return;
            }
        }
    }

    /* renamed from: i */
    public final void m10735i(boolean z) {
        this.f24943g = 13107200;
        this.f24944h = false;
        if (z) {
            this.f24937a.m7654a();
        }
    }

    @Override // p168r4.InterfaceC5825h5
    public final void zza() {
        m10735i(false);
    }

    public C5860i3() {
        qw3 qw3Var = new qw3(true, 65536);
        m10734j(2500, 0, "bufferForPlaybackMs", "0");
        m10734j(5000, 0, "bufferForPlaybackAfterRebufferMs", "0");
        m10734j(50000, 2500, "minBufferMs", "bufferForPlaybackMs");
        m10734j(50000, 5000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        m10734j(50000, 50000, "maxBufferMs", "minBufferMs");
        m10734j(0, 0, "backBufferDurationMs", "0");
        this.f24937a = qw3Var;
        this.f24938b = C5711e3.m11871b(50000L);
        this.f24939c = C5711e3.m11871b(50000L);
        this.f24940d = C5711e3.m11871b(2500L);
        this.f24941e = C5711e3.m11871b(5000L);
        this.f24943g = 13107200;
        this.f24942f = C5711e3.m11871b(0L);
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: g */
    public final boolean mo10737g(long j, long j2, float f) {
        int m7648g = this.f24937a.m7648g();
        int i = this.f24943g;
        long j3 = this.f24938b;
        if (f > 1.0f) {
            j3 = Math.min(C5979lc.m9696j(j3, f), this.f24939c);
        }
        boolean z = false;
        if (j2 < Math.max(j3, 500000L)) {
            if (m7648g < i) {
                z = true;
            }
            this.f24944h = z;
            if (!z && j2 < 500000) {
                Log.w("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= this.f24939c || m7648g >= i) {
            this.f24944h = false;
        }
        return this.f24944h;
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: d */
    public final boolean mo10740d(long j, float f, boolean z, long j2) {
        long j3;
        long m9695k = C5979lc.m9695k(j, f);
        if (z) {
            j3 = this.f24941e;
        } else {
            j3 = this.f24940d;
        }
        if (j2 != -9223372036854775807L) {
            j3 = Math.min(j2 / 2, j3);
        }
        if (j3 > 0 && m9695k < j3 && this.f24937a.m7648g() < this.f24943g) {
            return false;
        }
        return true;
    }
}
