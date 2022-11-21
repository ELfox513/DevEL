package p168r4;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
/* renamed from: r4.te */
/* loaded from: classes2.dex */
public final class C6278te {

    /* renamed from: A */
    public Method f31769A;

    /* renamed from: B */
    public int f31770B;

    /* renamed from: C */
    public long f31771C;

    /* renamed from: D */
    public long f31772D;

    /* renamed from: E */
    public int f31773E;

    /* renamed from: F */
    public long f31774F;

    /* renamed from: G */
    public long f31775G;

    /* renamed from: H */
    public int f31776H;

    /* renamed from: I */
    public int f31777I;

    /* renamed from: J */
    public long f31778J;

    /* renamed from: K */
    public long f31779K;

    /* renamed from: L */
    public long f31780L;

    /* renamed from: M */
    public float f31781M;

    /* renamed from: N */
    public InterfaceC6462yd[] f31782N;

    /* renamed from: O */
    public ByteBuffer[] f31783O;

    /* renamed from: P */
    public ByteBuffer f31784P;

    /* renamed from: Q */
    public ByteBuffer f31785Q;

    /* renamed from: R */
    public byte[] f31786R;

    /* renamed from: S */
    public int f31787S;

    /* renamed from: T */
    public int f31788T;

    /* renamed from: U */
    public boolean f31789U;

    /* renamed from: V */
    public boolean f31790V;

    /* renamed from: W */
    public int f31791W;

    /* renamed from: X */
    public boolean f31792X;

    /* renamed from: Y */
    public long f31793Y;

    /* renamed from: a */
    public final C6315ue f31794a;

    /* renamed from: b */
    public final C5613bf f31795b;

    /* renamed from: c */
    public final InterfaceC6462yd[] f31796c;

    /* renamed from: d */
    public final InterfaceC6056ne f31797d;

    /* renamed from: e */
    public final ConditionVariable f31798e = new ConditionVariable(true);

    /* renamed from: f */
    public final long[] f31799f;

    /* renamed from: g */
    public final C5871ie f31800g;

    /* renamed from: h */
    public final LinkedList<C6130pe> f31801h;

    /* renamed from: i */
    public AudioTrack f31802i;

    /* renamed from: j */
    public int f31803j;

    /* renamed from: k */
    public int f31804k;

    /* renamed from: l */
    public int f31805l;

    /* renamed from: m */
    public int f31806m;

    /* renamed from: n */
    public boolean f31807n;

    /* renamed from: o */
    public int f31808o;

    /* renamed from: p */
    public long f31809p;

    /* renamed from: q */
    public C6017md f31810q;

    /* renamed from: r */
    public C6017md f31811r;

    /* renamed from: s */
    public long f31812s;

    /* renamed from: t */
    public long f31813t;

    /* renamed from: u */
    public int f31814u;

    /* renamed from: v */
    public int f31815v;

    /* renamed from: w */
    public long f31816w;

    /* renamed from: x */
    public long f31817x;

    /* renamed from: y */
    public boolean f31818y;

    /* renamed from: z */
    public long f31819z;

    /* renamed from: d */
    public final void m6864d() {
        this.f31790V = true;
        if (m6847u()) {
            this.f31779K = System.nanoTime() / 1000;
            this.f31802i.play();
        }
    }

    /* renamed from: e */
    public final void m6863e() {
        if (this.f31777I == 1) {
            this.f31777I = 2;
        }
    }

    /* renamed from: h */
    public final boolean m6860h() {
        return !m6847u() || (this.f31789U && !m6859i());
    }

    /* renamed from: k */
    public final C6017md m6857k() {
        return this.f31811r;
    }

    /* renamed from: l */
    public final void m6856l(float f) {
        if (this.f31781M != f) {
            this.f31781M = f;
            m6848t();
        }
    }

    /* renamed from: m */
    public final void m6855m() {
        this.f31790V = false;
        if (m6847u()) {
            m6843y();
            this.f31800g.m10667c();
        }
    }

    /* renamed from: u */
    public final boolean m6847u() {
        return this.f31802i != null;
    }

    /* renamed from: v */
    public final long m6846v(long j) {
        return (j * 1000000) / this.f31803j;
    }

    /* renamed from: w */
    public final long m6845w(long j) {
        return (j * this.f31803j) / 1000000;
    }

    /* renamed from: x */
    public final long m6844x() {
        return this.f31807n ? this.f31775G : this.f31774F / this.f31773E;
    }

    /* renamed from: y */
    public final void m6843y() {
        this.f31816w = 0L;
        this.f31815v = 0;
        this.f31814u = 0;
        this.f31817x = 0L;
        this.f31818y = false;
        this.f31819z = 0L;
    }

    /* renamed from: z */
    public final boolean m6842z() {
        int i;
        return C5988ll.f27242a < 23 && ((i = this.f31806m) == 5 || i == 6);
    }

    /* renamed from: b */
    public final long m6866b(boolean z) {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        C6017md c6017md;
        long j6;
        long j7;
        Method method;
        if (m6847u() && this.f31777I != 0) {
            if (this.f31802i.getPlayState() == 3) {
                long m10665e = this.f31800g.m10665e();
                if (m10665e != 0) {
                    long nanoTime = System.nanoTime() / 1000;
                    if (nanoTime - this.f31817x >= 30000) {
                        long[] jArr = this.f31799f;
                        int i = this.f31814u;
                        jArr[i] = m10665e - nanoTime;
                        this.f31814u = (i + 1) % 10;
                        int i2 = this.f31815v;
                        if (i2 < 10) {
                            this.f31815v = i2 + 1;
                        }
                        this.f31817x = nanoTime;
                        this.f31816w = 0L;
                        int i3 = 0;
                        while (true) {
                            int i4 = this.f31815v;
                            if (i3 >= i4) {
                                break;
                            }
                            this.f31816w += this.f31799f[i3] / i4;
                            i3++;
                        }
                    }
                    if (!m6842z() && nanoTime - this.f31819z >= 500000) {
                        boolean mo10057f = this.f31800g.mo10057f();
                        this.f31818y = mo10057f;
                        if (mo10057f) {
                            long mo10056g = this.f31800g.mo10056g() / 1000;
                            long mo10055h = this.f31800g.mo10055h();
                            if (mo10056g < this.f31779K) {
                                this.f31818y = false;
                            } else if (Math.abs(mo10056g - nanoTime) > 5000000) {
                                StringBuilder sb = new StringBuilder(136);
                                sb.append("Spurious audio timestamp (system clock mismatch): ");
                                sb.append(mo10055h);
                                sb.append(", ");
                                sb.append(mo10056g);
                                sb.append(", ");
                                sb.append(nanoTime);
                                sb.append(", ");
                                sb.append(m10665e);
                                Log.w("AudioTrack", sb.toString());
                                this.f31818y = false;
                            } else if (Math.abs(m6846v(mo10055h) - m10665e) > 5000000) {
                                StringBuilder sb2 = new StringBuilder(138);
                                sb2.append("Spurious audio timestamp (frame position mismatch): ");
                                sb2.append(mo10055h);
                                sb2.append(", ");
                                sb2.append(mo10056g);
                                sb2.append(", ");
                                sb2.append(nanoTime);
                                sb2.append(", ");
                                sb2.append(m10665e);
                                Log.w("AudioTrack", sb2.toString());
                                this.f31818y = false;
                            }
                        }
                        if (this.f31769A != null && !this.f31807n) {
                            try {
                                long intValue = (((Integer) method.invoke(this.f31802i, null)).intValue() * 1000) - this.f31809p;
                                this.f31780L = intValue;
                                long max = Math.max(intValue, 0L);
                                this.f31780L = max;
                                if (max > 5000000) {
                                    StringBuilder sb3 = new StringBuilder(61);
                                    sb3.append("Ignoring impossibly large audio latency: ");
                                    sb3.append(max);
                                    Log.w("AudioTrack", sb3.toString());
                                    this.f31780L = 0L;
                                }
                            } catch (Exception unused) {
                                this.f31769A = null;
                            }
                        }
                        this.f31819z = nanoTime;
                    }
                }
            }
            long nanoTime2 = System.nanoTime() / 1000;
            if (this.f31818y) {
                j = m6846v(this.f31800g.mo10055h() + m6845w(nanoTime2 - (this.f31800g.mo10056g() / 1000)));
            } else {
                if (this.f31815v == 0) {
                    j = this.f31800g.m10665e();
                } else {
                    j = nanoTime2 + this.f31816w;
                }
                if (!z) {
                    j -= this.f31780L;
                }
            }
            long j8 = this.f31778J;
            while (!this.f31801h.isEmpty()) {
                j5 = this.f31801h.getFirst().f29439c;
                if (j < j5) {
                    break;
                }
                C6130pe remove = this.f31801h.remove();
                c6017md = remove.f29437a;
                this.f31811r = c6017md;
                j6 = remove.f29439c;
                this.f31813t = j6;
                j7 = remove.f29438b;
                this.f31812s = j7 - this.f31778J;
            }
            if (this.f31811r.f27579a == 1.0f) {
                j4 = (j + this.f31812s) - this.f31813t;
            } else {
                if (this.f31801h.isEmpty() && this.f31795b.m12782n() >= 1024) {
                    j2 = this.f31812s;
                    j3 = C5988ll.m9644j(j - this.f31813t, this.f31795b.m12783m(), this.f31795b.m12782n());
                } else {
                    j2 = this.f31812s;
                    double d = this.f31811r.f27579a;
                    double d2 = j - this.f31813t;
                    Double.isNaN(d);
                    Double.isNaN(d2);
                    j3 = (long) (d * d2);
                }
                j4 = j3 + j2;
            }
            return j8 + j4;
        }
        return Long.MIN_VALUE;
    }

    /* renamed from: f */
    public final boolean m6862f(ByteBuffer byteBuffer, long j) {
        boolean z;
        long j2;
        int i;
        C5760fe c5760fe;
        C5760fe c5760fe2;
        ByteBuffer byteBuffer2 = this.f31784P;
        if (byteBuffer2 != null && byteBuffer != byteBuffer2) {
            z = false;
        } else {
            z = true;
        }
        C6358vk.m6140a(z);
        if (!m6847u()) {
            this.f31798e.block();
            int i2 = this.f31791W;
            if (i2 == 0) {
                this.f31802i = new AudioTrack(3, this.f31803j, this.f31804k, this.f31806m, this.f31808o, 1);
            } else {
                this.f31802i = new AudioTrack(3, this.f31803j, this.f31804k, this.f31806m, this.f31808o, 1, i2);
            }
            int state = this.f31802i.getState();
            if (state == 1) {
                int audioSessionId = this.f31802i.getAudioSessionId();
                if (this.f31791W != audioSessionId) {
                    this.f31791W = audioSessionId;
                    c5760fe2 = ((C6352ve) this.f31797d).f32698a.f33568Q;
                    c5760fe2.m11558g(audioSessionId);
                }
                this.f31800g.mo10058a(this.f31802i, m6842z());
                m6848t();
                this.f31792X = false;
                if (this.f31790V) {
                    m6864d();
                }
            } else {
                try {
                    this.f31802i.release();
                } catch (Exception unused) {
                } finally {
                    this.f31802i = null;
                }
                throw new C6018me(state, this.f31803j, this.f31804k, this.f31808o);
            }
        }
        if (m6842z()) {
            if (this.f31802i.getPlayState() == 2) {
                this.f31792X = false;
                return false;
            } else if (this.f31802i.getPlayState() == 1 && this.f31800g.m10666d() != 0) {
                return false;
            }
        }
        boolean z2 = this.f31792X;
        boolean m6859i = m6859i();
        this.f31792X = m6859i;
        if (z2 && !m6859i && this.f31802i.getPlayState() != 1) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j3 = this.f31793Y;
            InterfaceC6056ne interfaceC6056ne = this.f31797d;
            int i3 = this.f31808o;
            long m7180a = C6239sc.m7180a(this.f31809p);
            c5760fe = ((C6352ve) interfaceC6056ne).f32698a.f33568Q;
            c5760fe.m11560e(i3, m7180a, elapsedRealtime - j3);
        }
        if (this.f31784P == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.f31807n && this.f31776H == 0) {
                int i4 = this.f31806m;
                if (i4 != 7 && i4 != 8) {
                    if (i4 == 5) {
                        int[] iArr = C6314ud.f32244a;
                        i = 1536;
                    } else if (i4 == 6) {
                        i = C6314ud.m6546c(byteBuffer);
                    } else {
                        StringBuilder sb = new StringBuilder(38);
                        sb.append("Unexpected audio encoding: ");
                        sb.append(i4);
                        throw new IllegalStateException(sb.toString());
                    }
                } else {
                    int position = byteBuffer.position();
                    i = ((((byteBuffer.get(position + 5) & 252) >> 2) | ((byteBuffer.get(position + 4) & 1) << 6)) + 1) * 32;
                }
                this.f31776H = i;
            }
            if (this.f31810q != null) {
                if (!m6849s()) {
                    return false;
                }
                this.f31801h.add(new C6130pe(this.f31810q, Math.max(0L, j), m6846v(m6844x()), null));
                this.f31810q = null;
                m6852p();
            }
            if (this.f31777I == 0) {
                this.f31778J = Math.max(0L, j);
                this.f31777I = 1;
            } else {
                long j4 = this.f31778J;
                if (this.f31807n) {
                    j2 = this.f31772D;
                } else {
                    j2 = this.f31771C / this.f31770B;
                }
                long m6846v = j4 + m6846v(j2);
                if (this.f31777I == 1 && Math.abs(m6846v - j) > 200000) {
                    StringBuilder sb2 = new StringBuilder(80);
                    sb2.append("Discontinuity detected [expected ");
                    sb2.append(m6846v);
                    sb2.append(", got ");
                    sb2.append(j);
                    sb2.append("]");
                    Log.e("AudioTrack", sb2.toString());
                    this.f31777I = 2;
                }
                if (this.f31777I == 2) {
                    this.f31778J += j - m6846v;
                    this.f31777I = 1;
                    ((C6352ve) this.f31797d).f32698a.f33574W = true;
                }
            }
            if (this.f31807n) {
                this.f31772D += this.f31776H;
            } else {
                this.f31771C += byteBuffer.remaining();
            }
            this.f31784P = byteBuffer;
        }
        if (this.f31807n) {
            m6850r(this.f31784P, j);
        } else {
            m6851q(j);
        }
        if (this.f31784P.hasRemaining()) {
            return false;
        }
        this.f31784P = null;
        return true;
    }

    /* renamed from: g */
    public final void m6861g() {
        if (!this.f31789U && m6847u() && m6849s()) {
            this.f31800g.m10668b(m6844x());
            this.f31789U = true;
        }
    }

    /* renamed from: j */
    public final C6017md m6858j(C6017md c6017md) {
        if (this.f31807n) {
            C6017md c6017md2 = C6017md.f27578d;
            this.f31811r = c6017md2;
            return c6017md2;
        }
        float m12785k = this.f31795b.m12785k(c6017md.f27579a);
        this.f31795b.m12784l(1.0f);
        C6017md c6017md3 = new C6017md(m12785k, 1.0f);
        C6017md c6017md4 = this.f31810q;
        if (c6017md4 == null) {
            if (!this.f31801h.isEmpty()) {
                c6017md4 = this.f31801h.getLast().f29437a;
            } else {
                c6017md4 = this.f31811r;
            }
        }
        if (!c6017md3.equals(c6017md4)) {
            if (m6847u()) {
                this.f31810q = c6017md3;
            } else {
                this.f31811r = c6017md3;
            }
        }
        return this.f31811r;
    }

    /* renamed from: p */
    public final void m6852p() {
        ArrayList arrayList = new ArrayList();
        InterfaceC6462yd[] interfaceC6462ydArr = this.f31796c;
        for (int i = 0; i < 3; i++) {
            InterfaceC6462yd interfaceC6462yd = interfaceC6462ydArr[i];
            if (interfaceC6462yd.mo4755a()) {
                arrayList.add(interfaceC6462yd);
            } else {
                interfaceC6462yd.mo4746j();
            }
        }
        int size = arrayList.size();
        this.f31782N = (InterfaceC6462yd[]) arrayList.toArray(new InterfaceC6462yd[size]);
        this.f31783O = new ByteBuffer[size];
        for (int i2 = 0; i2 < size; i2++) {
            InterfaceC6462yd interfaceC6462yd2 = this.f31782N[i2];
            interfaceC6462yd2.mo4746j();
            this.f31783O[i2] = interfaceC6462yd2.mo4749g();
        }
    }

    /* renamed from: q */
    public final void m6851q(long j) {
        ByteBuffer byteBuffer;
        int length = this.f31782N.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f31783O[i - 1];
            } else {
                byteBuffer = this.f31784P;
                if (byteBuffer == null) {
                    byteBuffer = InterfaceC6462yd.f34027a;
                }
            }
            if (i == length) {
                m6850r(byteBuffer, j);
            } else {
                InterfaceC6462yd interfaceC6462yd = this.f31782N[i];
                interfaceC6462yd.mo4753c(byteBuffer);
                ByteBuffer mo4749g = interfaceC6462yd.mo4749g();
                this.f31783O[i] = mo4749g;
                if (mo4749g.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0032 -> B:9:0x0012). Please submit an issue!!! */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6849s() {
        /*
            r9 = this;
            int r0 = r9.f31788T
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto L14
            boolean r0 = r9.f31807n
            if (r0 == 0) goto Lf
            r4.yd[] r0 = r9.f31782N
            int r0 = r0.length
            goto L10
        Lf:
            r0 = 0
        L10:
            r9.f31788T = r0
        L12:
            r0 = 1
            goto L15
        L14:
            r0 = 0
        L15:
            int r4 = r9.f31788T
            r4.yd[] r5 = r9.f31782N
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L38
            r4 = r5[r4]
            if (r0 == 0) goto L28
            r4.mo4752d()
        L28:
            r9.m6851q(r7)
            boolean r0 = r4.mo4750f()
            if (r0 != 0) goto L32
            return r3
        L32:
            int r0 = r9.f31788T
            int r0 = r0 + r2
            r9.f31788T = r0
            goto L12
        L38:
            java.nio.ByteBuffer r0 = r9.f31785Q
            if (r0 == 0) goto L44
            r9.m6850r(r0, r7)
            java.nio.ByteBuffer r0 = r9.f31785Q
            if (r0 == 0) goto L44
            return r3
        L44:
            r9.f31788T = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6278te.m6849s():boolean");
    }

    public C6278te(C6351vd c6351vd, InterfaceC6462yd[] interfaceC6462ydArr, InterfaceC6056ne interfaceC6056ne) {
        this.f31797d = interfaceC6056ne;
        if (C5988ll.f27242a >= 18) {
            try {
                this.f31769A = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        if (C5988ll.f27242a >= 19) {
            this.f31800g = new C5944ke();
        } else {
            this.f31800g = new C5871ie(null);
        }
        C6315ue c6315ue = new C6315ue();
        this.f31794a = c6315ue;
        C5613bf c5613bf = new C5613bf();
        this.f31795b = c5613bf;
        this.f31796c = r1;
        System.arraycopy(interfaceC6462ydArr, 0, r1, 2, 0);
        InterfaceC6462yd[] interfaceC6462ydArr2 = {new C6463ye(), c6315ue, c5613bf};
        this.f31799f = new long[10];
        this.f31781M = 1.0f;
        this.f31777I = 0;
        this.f31791W = 0;
        this.f31811r = C6017md.f27578d;
        this.f31788T = -1;
        this.f31782N = new InterfaceC6462yd[0];
        this.f31783O = new ByteBuffer[0];
        this.f31801h = new LinkedList<>();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f9  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6865c(java.lang.String r7, int r8, int r9, int r10, int r11, int[] r12) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6278te.m6865c(java.lang.String, int, int, int, int, int[]):void");
    }

    /* renamed from: i */
    public final boolean m6859i() {
        if (m6847u()) {
            if (m6844x() > this.f31800g.m10666d()) {
                return true;
            }
            if (m6842z() && this.f31802i.getPlayState() == 2 && this.f31802i.getPlaybackHeadPosition() == 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: n */
    public final void m6854n() {
        C6017md c6017md;
        if (m6847u()) {
            this.f31771C = 0L;
            this.f31772D = 0L;
            this.f31774F = 0L;
            this.f31775G = 0L;
            this.f31776H = 0;
            C6017md c6017md2 = this.f31810q;
            if (c6017md2 != null) {
                this.f31811r = c6017md2;
                this.f31810q = null;
            } else if (!this.f31801h.isEmpty()) {
                c6017md = this.f31801h.getLast().f29437a;
                this.f31811r = c6017md;
            }
            this.f31801h.clear();
            this.f31812s = 0L;
            this.f31813t = 0L;
            this.f31784P = null;
            this.f31785Q = null;
            int i = 0;
            while (true) {
                InterfaceC6462yd[] interfaceC6462ydArr = this.f31782N;
                if (i >= interfaceC6462ydArr.length) {
                    break;
                }
                InterfaceC6462yd interfaceC6462yd = interfaceC6462ydArr[i];
                interfaceC6462yd.mo4746j();
                this.f31783O[i] = interfaceC6462yd.mo4749g();
                i++;
            }
            this.f31789U = false;
            this.f31788T = -1;
            this.f31777I = 0;
            this.f31780L = 0L;
            m6843y();
            if (this.f31802i.getPlayState() == 3) {
                this.f31802i.pause();
            }
            AudioTrack audioTrack = this.f31802i;
            this.f31802i = null;
            this.f31800g.mo10058a(null, false);
            this.f31798e.close();
            new C5834he(this, audioTrack).start();
        }
    }

    /* renamed from: o */
    public final void m6853o() {
        m6854n();
        InterfaceC6462yd[] interfaceC6462ydArr = this.f31796c;
        for (int i = 0; i < 3; i++) {
            interfaceC6462ydArr[i].mo4748h();
        }
        this.f31791W = 0;
        this.f31790V = false;
    }

    /* renamed from: r */
    public final boolean m6850r(ByteBuffer byteBuffer, long j) {
        int write;
        boolean z;
        if (!byteBuffer.hasRemaining()) {
            return true;
        }
        ByteBuffer byteBuffer2 = this.f31785Q;
        if (byteBuffer2 != null) {
            if (byteBuffer2 == byteBuffer) {
                z = true;
            } else {
                z = false;
            }
            C6358vk.m6140a(z);
        } else {
            this.f31785Q = byteBuffer;
            if (C5988ll.f27242a < 21) {
                int remaining = byteBuffer.remaining();
                byte[] bArr = this.f31786R;
                if (bArr == null || bArr.length < remaining) {
                    this.f31786R = new byte[remaining];
                }
                int position = byteBuffer.position();
                byteBuffer.get(this.f31786R, 0, remaining);
                byteBuffer.position(position);
                this.f31787S = 0;
            }
        }
        int remaining2 = byteBuffer.remaining();
        if (C5988ll.f27242a < 21) {
            int m10666d = this.f31808o - ((int) (this.f31774F - (this.f31800g.m10666d() * this.f31773E)));
            if (m10666d > 0) {
                write = this.f31802i.write(this.f31786R, this.f31787S, Math.min(remaining2, m10666d));
                if (write > 0) {
                    this.f31787S += write;
                    byteBuffer.position(byteBuffer.position() + write);
                }
            } else {
                write = 0;
            }
        } else {
            write = this.f31802i.write(byteBuffer, remaining2, 1);
        }
        this.f31793Y = SystemClock.elapsedRealtime();
        if (write >= 0) {
            boolean z2 = this.f31807n;
            if (!z2) {
                this.f31774F += write;
            }
            if (write != remaining2) {
                return false;
            }
            if (z2) {
                this.f31775G += this.f31776H;
            }
            this.f31785Q = null;
            return true;
        }
        throw new C6167qe(write);
    }

    /* renamed from: t */
    public final void m6848t() {
        if (!m6847u()) {
            return;
        }
        if (C5988ll.f27242a >= 21) {
            this.f31802i.setVolume(this.f31781M);
            return;
        }
        AudioTrack audioTrack = this.f31802i;
        float f = this.f31781M;
        audioTrack.setStereoVolume(f, f);
    }
}
