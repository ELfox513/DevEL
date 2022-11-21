package p168r4;

import android.annotation.TargetApi;
import android.media.AudioTrack;
/* renamed from: r4.fv1 */
/* loaded from: classes2.dex */
public final class fv1 {

    /* renamed from: a */
    public final eu1 f23766a;

    /* renamed from: b */
    public int f23767b;

    /* renamed from: c */
    public long f23768c;

    /* renamed from: d */
    public long f23769d;

    /* renamed from: e */
    public long f23770e;

    /* renamed from: f */
    public long f23771f;

    /* renamed from: b */
    public final void m11361b() {
        m11355h(4);
    }

    /* renamed from: c */
    public final void m11360c() {
        if (this.f23767b == 4) {
            m11358e();
        }
    }

    /* renamed from: d */
    public final boolean m11359d() {
        return this.f23767b == 2;
    }

    /* renamed from: e */
    public final void m11358e() {
        if (this.f23766a != null) {
            m11355h(0);
        }
    }

    @TargetApi(19)
    /* renamed from: f */
    public final long m11357f() {
        eu1 eu1Var = this.f23766a;
        if (eu1Var != null) {
            return eu1Var.m11674b();
        }
        return -9223372036854775807L;
    }

    @TargetApi(19)
    /* renamed from: g */
    public final long m11356g() {
        eu1 eu1Var = this.f23766a;
        if (eu1Var != null) {
            return eu1Var.m11673c();
        }
        return -1L;
    }

    /* renamed from: h */
    public final void m11355h(int i) {
        this.f23767b = i;
        long j = 10000;
        if (i == 0) {
            this.f23770e = 0L;
            this.f23771f = -1L;
            this.f23768c = System.nanoTime() / 1000;
        } else if (i == 1) {
            this.f23769d = 10000L;
            return;
        } else {
            j = (i == 2 || i == 3) ? 10000000L : 500000L;
        }
        this.f23769d = j;
    }

    @TargetApi(19)
    /* renamed from: a */
    public final boolean m11362a(long j) {
        eu1 eu1Var = this.f23766a;
        if (eu1Var != null && j - this.f23770e >= this.f23769d) {
            this.f23770e = j;
            boolean m11675a = eu1Var.m11675a();
            int i = this.f23767b;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3 && m11675a) {
                            m11358e();
                            return true;
                        }
                    } else if (!m11675a) {
                        m11358e();
                        return false;
                    }
                } else if (m11675a) {
                    if (this.f23766a.m11673c() > this.f23771f) {
                        m11355h(2);
                        return true;
                    }
                } else {
                    m11358e();
                }
            } else if (m11675a) {
                if (this.f23766a.m11674b() < this.f23768c) {
                    return false;
                }
                this.f23771f = this.f23766a.m11673c();
                m11355h(1);
                return true;
            } else if (j - this.f23768c > 500000) {
                m11355h(3);
            }
            return m11675a;
        }
        return false;
    }

    public fv1(AudioTrack audioTrack) {
        if (C5979lc.f27164a >= 19) {
            this.f23766a = new eu1(audioTrack);
            m11358e();
            return;
        }
        this.f23766a = null;
        m11355h(3);
    }
}
