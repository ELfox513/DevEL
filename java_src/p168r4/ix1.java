package p168r4;

import android.media.AudioTrack;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
/* renamed from: r4.ix1 */
/* loaded from: classes2.dex */
public final class ix1 {

    /* renamed from: A */
    public long f25600A;

    /* renamed from: B */
    public long f25601B;

    /* renamed from: C */
    public long f25602C;

    /* renamed from: D */
    public boolean f25603D;

    /* renamed from: E */
    public long f25604E;

    /* renamed from: F */
    public long f25605F;

    /* renamed from: a */
    public final gw1 f25606a;

    /* renamed from: b */
    public final long[] f25607b;

    /* renamed from: c */
    public AudioTrack f25608c;

    /* renamed from: d */
    public int f25609d;

    /* renamed from: e */
    public int f25610e;

    /* renamed from: f */
    public fv1 f25611f;

    /* renamed from: g */
    public int f25612g;

    /* renamed from: h */
    public boolean f25613h;

    /* renamed from: i */
    public long f25614i;

    /* renamed from: j */
    public float f25615j;

    /* renamed from: k */
    public boolean f25616k;

    /* renamed from: l */
    public long f25617l;

    /* renamed from: m */
    public long f25618m;

    /* renamed from: n */
    public Method f25619n;

    /* renamed from: o */
    public long f25620o;

    /* renamed from: p */
    public boolean f25621p;

    /* renamed from: q */
    public boolean f25622q;

    /* renamed from: r */
    public long f25623r;

    /* renamed from: s */
    public long f25624s;

    /* renamed from: t */
    public long f25625t;

    /* renamed from: u */
    public long f25626u;

    /* renamed from: v */
    public int f25627v;

    /* renamed from: w */
    public int f25628w;

    /* renamed from: x */
    public long f25629x;

    /* renamed from: y */
    public long f25630y;

    /* renamed from: z */
    public long f25631z;

    /* renamed from: f */
    public final int m10474f(long j) {
        return this.f25610e - ((int) (j - (m10465o() * this.f25609d)));
    }

    /* renamed from: g */
    public final long m10473g(long j) {
        return C5711e3.m11872a(m10467m(-m10465o()));
    }

    /* renamed from: h */
    public final boolean m10472h(long j) {
        return this.f25630y != -9223372036854775807L && j > 0 && SystemClock.elapsedRealtime() - this.f25630y >= 200;
    }

    /* renamed from: l */
    public final void m10468l() {
        m10466n();
        this.f25608c = null;
        this.f25611f = null;
    }

    /* renamed from: m */
    public final long m10467m(long j) {
        return (j * 1000000) / this.f25612g;
    }

    /* renamed from: n */
    public final void m10466n() {
        this.f25617l = 0L;
        this.f25628w = 0;
        this.f25627v = 0;
        this.f25618m = 0L;
        this.f25602C = 0L;
        this.f25605F = 0L;
        this.f25616k = false;
    }

    /* renamed from: a */
    public final void m10479a(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        long j;
        this.f25608c = audioTrack;
        this.f25609d = i2;
        this.f25610e = i3;
        this.f25611f = new fv1(audioTrack);
        this.f25612g = audioTrack.getSampleRate();
        this.f25613h = false;
        boolean m9690p = C5979lc.m9690p(i);
        this.f25622q = m9690p;
        if (m9690p) {
            j = m10467m(i3 / i2);
        } else {
            j = -9223372036854775807L;
        }
        this.f25614i = j;
        this.f25624s = 0L;
        this.f25625t = 0L;
        this.f25626u = 0L;
        this.f25621p = false;
        this.f25629x = -9223372036854775807L;
        this.f25630y = -9223372036854775807L;
        this.f25623r = 0L;
        this.f25620o = 0L;
        this.f25615j = 1.0f;
    }

    /* renamed from: b */
    public final long m10478b(boolean z) {
        long j;
        aq1 aq1Var;
        aq1 aq1Var2;
        vl1 vl1Var;
        Method method;
        AudioTrack audioTrack;
        long m12825I;
        long m12824J;
        long m12825I2;
        long m12824J2;
        ix1 ix1Var = this;
        AudioTrack audioTrack2 = ix1Var.f25608c;
        audioTrack2.getClass();
        if (audioTrack2.getPlayState() == 3) {
            long m10467m = ix1Var.m10467m(m10465o());
            if (m10467m != 0) {
                long nanoTime = System.nanoTime() / 1000;
                if (nanoTime - ix1Var.f25618m >= 30000) {
                    long[] jArr = ix1Var.f25607b;
                    int i = ix1Var.f25627v;
                    jArr[i] = m10467m - nanoTime;
                    ix1Var.f25627v = (i + 1) % 10;
                    int i2 = ix1Var.f25628w;
                    if (i2 < 10) {
                        ix1Var.f25628w = i2 + 1;
                    }
                    ix1Var.f25618m = nanoTime;
                    ix1Var.f25617l = 0L;
                    int i3 = 0;
                    while (true) {
                        int i4 = ix1Var.f25628w;
                        if (i3 >= i4) {
                            break;
                        }
                        ix1Var.f25617l += ix1Var.f25607b[i3] / i4;
                        i3++;
                    }
                }
                if (!ix1Var.f25613h) {
                    fv1 fv1Var = ix1Var.f25611f;
                    fv1Var.getClass();
                    if (fv1Var.m11362a(nanoTime)) {
                        long m11357f = fv1Var.m11357f();
                        long m11356g = fv1Var.m11356g();
                        if (Math.abs(m11357f - nanoTime) > 5000000) {
                            s62 s62Var = (s62) ix1Var.f25606a;
                            m12825I2 = s62Var.f31272a.m12825I();
                            m12824J2 = s62Var.f31272a.m12824J();
                            StringBuilder sb = new StringBuilder(180);
                            sb.append("Spurious audio timestamp (system clock mismatch): ");
                            sb.append(m11356g);
                            sb.append(", ");
                            sb.append(m11357f);
                            sb.append(", ");
                            sb.append(nanoTime);
                            sb.append(", ");
                            sb.append(m10467m);
                            sb.append(", ");
                            sb.append(m12825I2);
                            sb.append(", ");
                            sb.append(m12824J2);
                            Log.w("DefaultAudioSink", sb.toString());
                            fv1Var.m11361b();
                        } else if (Math.abs(ix1Var.m10467m(m11356g) - m10467m) > 5000000) {
                            s62 s62Var2 = (s62) ix1Var.f25606a;
                            m12825I = s62Var2.f31272a.m12825I();
                            m12824J = s62Var2.f31272a.m12824J();
                            StringBuilder sb2 = new StringBuilder(182);
                            sb2.append("Spurious audio timestamp (frame position mismatch): ");
                            sb2.append(m11356g);
                            sb2.append(", ");
                            sb2.append(m11357f);
                            sb2.append(", ");
                            sb2.append(nanoTime);
                            sb2.append(", ");
                            sb2.append(m10467m);
                            sb2.append(", ");
                            sb2.append(m12825I);
                            sb2.append(", ");
                            sb2.append(m12824J);
                            Log.w("DefaultAudioSink", sb2.toString());
                            fv1Var.m11361b();
                        } else {
                            fv1Var.m11360c();
                        }
                        ix1Var = this;
                    }
                    if (ix1Var.f25622q && (method = ix1Var.f25619n) != null && nanoTime - ix1Var.f25623r >= 500000) {
                        try {
                            ix1Var.f25608c.getClass();
                            int i5 = C5979lc.f27164a;
                            long intValue = (((Integer) method.invoke(audioTrack, new Object[0])).intValue() * 1000) - ix1Var.f25614i;
                            ix1Var.f25620o = intValue;
                            long max = Math.max(intValue, 0L);
                            ix1Var.f25620o = max;
                            if (max > 5000000) {
                                StringBuilder sb3 = new StringBuilder(61);
                                sb3.append("Ignoring impossibly large audio latency: ");
                                sb3.append(max);
                                Log.w("DefaultAudioSink", sb3.toString());
                                ix1Var.f25620o = 0L;
                            }
                        } catch (Exception unused) {
                            ix1Var.f25619n = null;
                        }
                        ix1Var.f25623r = nanoTime;
                    }
                }
            }
        }
        long nanoTime2 = System.nanoTime() / 1000;
        fv1 fv1Var2 = ix1Var.f25611f;
        fv1Var2.getClass();
        boolean m11359d = fv1Var2.m11359d();
        if (m11359d) {
            j = ix1Var.m10467m(fv1Var2.m11356g()) + C5979lc.m9696j(nanoTime2 - fv1Var2.m11357f(), ix1Var.f25615j);
        } else {
            if (ix1Var.f25628w == 0) {
                j = ix1Var.m10467m(m10465o());
            } else {
                j = ix1Var.f25617l + nanoTime2;
            }
            if (!z) {
                j = Math.max(0L, j - ix1Var.f25620o);
            }
        }
        if (ix1Var.f25603D != m11359d) {
            ix1Var.f25605F = ix1Var.f25602C;
            ix1Var.f25604E = ix1Var.f25601B;
        }
        long j2 = nanoTime2 - ix1Var.f25605F;
        if (j2 < 1000000) {
            long j3 = (j2 * 1000) / 1000000;
            j = ((j * j3) + ((1000 - j3) * (ix1Var.f25604E + C5979lc.m9696j(j2, ix1Var.f25615j)))) / 1000;
        }
        if (!ix1Var.f25616k) {
            long j4 = ix1Var.f25601B;
            if (j > j4) {
                ix1Var.f25616k = true;
                long currentTimeMillis = System.currentTimeMillis() - C5711e3.m11872a(C5979lc.m9695k(C5711e3.m11872a(j - j4), ix1Var.f25615j));
                s62 s62Var3 = (s62) ix1Var.f25606a;
                aq1Var = s62Var3.f31272a.f20959k;
                if (aq1Var != null) {
                    aq1Var2 = s62Var3.f31272a.f20959k;
                    vl1Var = ((dd2) aq1Var2).f22229a.f23476N0;
                    vl1Var.m6105d(currentTimeMillis);
                }
            }
        }
        ix1Var.f25602C = nanoTime2;
        ix1Var.f25601B = j;
        ix1Var.f25603D = m11359d;
        return j;
    }

    /* renamed from: c */
    public final void m10477c() {
        fv1 fv1Var = this.f25611f;
        fv1Var.getClass();
        fv1Var.m11358e();
    }

    /* renamed from: d */
    public final boolean m10476d() {
        AudioTrack audioTrack = this.f25608c;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 3) {
            return true;
        }
        return false;
    }

    /* renamed from: e */
    public final boolean m10475e(long j) {
        aq1 aq1Var;
        long j2;
        aq1 aq1Var2;
        vl1 vl1Var;
        AudioTrack audioTrack = this.f25608c;
        audioTrack.getClass();
        int playState = audioTrack.getPlayState();
        if (this.f25613h) {
            if (playState == 2) {
                this.f25621p = false;
                return false;
            } else if (playState == 1) {
                if (m10465o() == 0) {
                    return false;
                }
                playState = 1;
            }
        }
        boolean z = this.f25621p;
        boolean m10470j = m10470j(j);
        this.f25621p = m10470j;
        if (z && !m10470j && playState != 1) {
            gw1 gw1Var = this.f25606a;
            int i = this.f25610e;
            long m11872a = C5711e3.m11872a(this.f25614i);
            s62 s62Var = (s62) gw1Var;
            aq1Var = s62Var.f31272a.f20959k;
            if (aq1Var != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                j2 = s62Var.f31272a.f20945M;
                aq1Var2 = s62Var.f31272a.f20959k;
                vl1Var = ((dd2) aq1Var2).f22229a.f23476N0;
                vl1Var.m6104e(i, m11872a, elapsedRealtime - j2);
            }
        }
        return true;
    }

    /* renamed from: o */
    public final long m10465o() {
        AudioTrack audioTrack = this.f25608c;
        audioTrack.getClass();
        if (this.f25629x != -9223372036854775807L) {
            return Math.min(this.f25600A, this.f25631z + ((((SystemClock.elapsedRealtime() * 1000) - this.f25629x) * this.f25612g) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & 4294967295L;
        if (this.f25613h) {
            if (playState == 2) {
                if (playbackHeadPosition == 0) {
                    this.f25626u = this.f25624s;
                }
                playState = 2;
            }
            playbackHeadPosition += this.f25626u;
        }
        if (C5979lc.f27164a <= 29) {
            if (playbackHeadPosition == 0 && this.f25624s > 0 && playState == 3) {
                if (this.f25630y == -9223372036854775807L) {
                    this.f25630y = SystemClock.elapsedRealtime();
                }
                return this.f25624s;
            }
            this.f25630y = -9223372036854775807L;
        }
        if (this.f25624s > playbackHeadPosition) {
            this.f25625t++;
        }
        this.f25624s = playbackHeadPosition;
        return playbackHeadPosition + (this.f25625t << 32);
    }

    public ix1(gw1 gw1Var) {
        this.f25606a = gw1Var;
        if (C5979lc.f27164a >= 18) {
            try {
                this.f25619n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.f25607b = new long[10];
    }

    /* renamed from: i */
    public final void m10471i(long j) {
        this.f25631z = m10465o();
        this.f25629x = SystemClock.elapsedRealtime() * 1000;
        this.f25600A = j;
    }

    /* renamed from: j */
    public final boolean m10470j(long j) {
        if (j <= m10465o()) {
            if (this.f25613h) {
                AudioTrack audioTrack = this.f25608c;
                audioTrack.getClass();
                if (audioTrack.getPlayState() != 2 || m10465o() != 0) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    /* renamed from: k */
    public final boolean m10469k() {
        m10466n();
        if (this.f25629x == -9223372036854775807L) {
            fv1 fv1Var = this.f25611f;
            fv1Var.getClass();
            fv1Var.m11358e();
            return true;
        }
        return false;
    }
}
