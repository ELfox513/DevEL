package p168r4;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import java.nio.ByteBuffer;
@TargetApi(16)
/* renamed from: r4.xe */
/* loaded from: classes2.dex */
public final class C6426xe extends AbstractC6021mh implements InterfaceC6506zk {

    /* renamed from: Q */
    public final C5760fe f33568Q;

    /* renamed from: R */
    public final C6278te f33569R;

    /* renamed from: S */
    public boolean f33570S;

    /* renamed from: T */
    public int f33571T;

    /* renamed from: U */
    public int f33572U;

    /* renamed from: V */
    public long f33573V;

    /* renamed from: W */
    public boolean f33574W;

    public C6426xe(InterfaceC6096oh interfaceC6096oh, InterfaceC6019mf interfaceC6019mf, boolean z, Handler handler, InterfaceC5797ge interfaceC5797ge) {
        super(1, interfaceC6096oh, null, true);
        this.f33569R = new C6278te(null, new InterfaceC6462yd[0], new C6352ve(this, null));
        this.f33568Q = new C5760fe(handler, interfaceC5797ge);
    }

    @Override // p168r4.AbstractC6202rc
    /* renamed from: A */
    public final void mo5354A() {
        this.f33569R.m6855m();
    }

    @Override // p168r4.AbstractC6021mh, p168r4.InterfaceC6055nd
    /* renamed from: G */
    public final boolean mo5352G() {
        return super.mo5352G() && this.f33569R.m6860h();
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: J */
    public final C5947kh mo5350J(InterfaceC6096oh interfaceC6096oh, C5870id c5870id, boolean z) {
        return super.mo5350J(interfaceC6096oh, c5870id, false);
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: L */
    public final void mo5348L(String str, long j, long j2) {
        this.f33568Q.m11562c(str, j, j2);
    }

    @Override // p168r4.AbstractC6021mh, p168r4.InterfaceC6055nd
    /* renamed from: N */
    public final boolean mo5346N() {
        return this.f33569R.m6859i() || super.mo5346N();
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: P */
    public final boolean mo5344P(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.f27705O.f24010e++;
            this.f33569R.m6863e();
            return true;
        }
        try {
            if (this.f33569R.m6862f(byteBuffer, j3)) {
                mediaCodec.releaseOutputBuffer(i, false);
                this.f27705O.f24009d++;
                return true;
            }
            return false;
        } catch (C6018me | C6167qe e) {
            throw C6276tc.m6885a(e, m7546E());
        }
    }

    @Override // p168r4.AbstractC6202rc, p168r4.InterfaceC6055nd
    /* renamed from: e */
    public final InterfaceC6506zk mo5340e() {
        return this;
    }

    @Override // p168r4.InterfaceC6387wc
    /* renamed from: f */
    public final void mo5339f(int i, Object obj) {
        if (i != 2) {
            return;
        }
        this.f33569R.m6856l(((Float) obj).floatValue());
    }

    @Override // p168r4.InterfaceC6506zk
    /* renamed from: o0 */
    public final C6017md mo4195o0() {
        return this.f33569R.m6857k();
    }

    @Override // p168r4.InterfaceC6506zk
    /* renamed from: p0 */
    public final C6017md mo4194p0(C6017md c6017md) {
        return this.f33569R.m6858j(c6017md);
    }

    @Override // p168r4.AbstractC6202rc
    /* renamed from: z */
    public final void mo5336z() {
        this.f33569R.m6864d();
    }

    @Override // p168r4.AbstractC6021mh, p168r4.AbstractC6202rc
    /* renamed from: B */
    public final void mo5353B() {
        try {
            this.f33569R.m6853o();
            try {
                super.mo5353B();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo5353B();
                throw th;
            } finally {
            }
        }
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: I */
    public final int mo5351I(InterfaceC6096oh interfaceC6096oh, C5870id c5870id) {
        int i;
        int i2;
        int i3;
        String str = c5870id.f25060q;
        if (!C5582al.m13004a(str)) {
            return 0;
        }
        int i4 = C5988ll.f27242a;
        if (i4 >= 21) {
            i = 16;
        } else {
            i = 0;
        }
        C5947kh m6155a = C6355vh.m6155a(str, false);
        if (m6155a == null) {
            return 1;
        }
        int i5 = 2;
        if (i4 < 21 || (((i2 = c5870id.f25046D) == -1 || m6155a.m10031f(i2)) && ((i3 = c5870id.f25045C) == -1 || m6155a.m10030g(i3)))) {
            i5 = 3;
        }
        return i | 4 | i5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
        if (r4.startsWith("heroqlte") == false) goto L16;
     */
    @Override // p168r4.AbstractC6021mh
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo5349K(p168r4.C5947kh r4, android.media.MediaCodec r5, p168r4.C5870id r6, android.media.MediaCrypto r7) {
        /*
            r3 = this;
            java.lang.String r4 = r4.f26412a
            int r7 = p168r4.C5988ll.f27242a
            r0 = 1
            r1 = 0
            r2 = 24
            if (r7 >= r2) goto L37
            java.lang.String r7 = "OMX.SEC.aac.dec"
            boolean r4 = r7.equals(r4)
            if (r4 == 0) goto L37
            java.lang.String r4 = p168r4.C5988ll.f27244c
            java.lang.String r7 = "samsung"
            boolean r4 = r7.equals(r4)
            if (r4 == 0) goto L37
            java.lang.String r4 = p168r4.C5988ll.f27243b
            java.lang.String r7 = "zeroflte"
            boolean r7 = r4.startsWith(r7)
            if (r7 != 0) goto L38
            java.lang.String r7 = "herolte"
            boolean r7 = r4.startsWith(r7)
            if (r7 != 0) goto L38
            java.lang.String r7 = "heroqlte"
            boolean r4 = r4.startsWith(r7)
            if (r4 == 0) goto L37
            goto L38
        L37:
            r0 = 0
        L38:
            r3.f33570S = r0
            android.media.MediaFormat r4 = r6.m10687B()
            r6 = 0
            r5.configure(r4, r6, r6, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6426xe.mo5349K(r4.kh, android.media.MediaCodec, r4.id, android.media.MediaCrypto):void");
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: O */
    public final void mo5345O(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int i;
        int[] iArr;
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (this.f33570S && integer == 6) {
            int i2 = this.f33572U;
            if (i2 < 6) {
                int[] iArr2 = new int[i2];
                for (int i3 = 0; i3 < this.f33572U; i3++) {
                    iArr2[i3] = i3;
                }
                iArr = iArr2;
            } else {
                iArr = null;
            }
            i = 6;
        } else {
            i = integer;
            iArr = null;
        }
        try {
            this.f33569R.m6865c("audio/raw", i, integer2, this.f33571T, 0, iArr);
        } catch (C5981le e) {
            throw C6276tc.m6885a(e, m7546E());
        }
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: Q */
    public final void mo5343Q() {
        try {
            this.f33569R.m6861g();
        } catch (C6167qe e) {
            throw C6276tc.m6885a(e, m7546E());
        }
    }

    @Override // p168r4.InterfaceC6506zk
    /* renamed from: r */
    public final long mo4193r() {
        long m6866b = this.f33569R.m6866b(mo5352G());
        if (m6866b != Long.MIN_VALUE) {
            if (!this.f33574W) {
                m6866b = Math.max(this.f33573V, m6866b);
            }
            this.f33573V = m6866b;
            this.f33574W = false;
        }
        return this.f33573V;
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: M */
    public final void mo5347M(C5870id c5870id) {
        int i;
        super.mo5347M(c5870id);
        this.f33568Q.m11561d(c5870id);
        if ("audio/raw".equals(c5870id.f25060q)) {
            i = c5870id.f25047E;
        } else {
            i = 2;
        }
        this.f33571T = i;
        this.f33572U = c5870id.f25045C;
    }

    @Override // p168r4.AbstractC6021mh, p168r4.AbstractC6202rc
    /* renamed from: w */
    public final void mo5338w(boolean z) {
        super.mo5338w(z);
        this.f33568Q.m11563b(this.f27705O);
        int i = m7548C().f29429a;
    }

    @Override // p168r4.AbstractC6021mh, p168r4.AbstractC6202rc
    /* renamed from: y */
    public final void mo5337y(long j, boolean z) {
        super.mo5337y(j, z);
        this.f33569R.m6854n();
        this.f33573V = j;
        this.f33574W = true;
    }
}
