package p168r4;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
@TargetApi(19)
/* renamed from: r4.mh */
/* loaded from: classes2.dex */
public abstract class AbstractC6021mh extends AbstractC6202rc {

    /* renamed from: P */
    public static final byte[] f27690P = C5988ll.m9641m("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");

    /* renamed from: A */
    public ByteBuffer[] f27691A;

    /* renamed from: B */
    public ByteBuffer[] f27692B;

    /* renamed from: C */
    public long f27693C;

    /* renamed from: D */
    public int f27694D;

    /* renamed from: E */
    public int f27695E;

    /* renamed from: F */
    public boolean f27696F;

    /* renamed from: G */
    public boolean f27697G;

    /* renamed from: H */
    public int f27698H;

    /* renamed from: I */
    public int f27699I;

    /* renamed from: J */
    public boolean f27700J;

    /* renamed from: K */
    public boolean f27701K;

    /* renamed from: L */
    public boolean f27702L;

    /* renamed from: M */
    public boolean f27703M;

    /* renamed from: N */
    public boolean f27704N;

    /* renamed from: O */
    public C5798gf f27705O;

    /* renamed from: i */
    public final InterfaceC6096oh f27706i;

    /* renamed from: j */
    public final C5835hf f27707j;

    /* renamed from: k */
    public final C5835hf f27708k;

    /* renamed from: l */
    public final C5906jd f27709l;

    /* renamed from: m */
    public final List<Long> f27710m;

    /* renamed from: n */
    public final MediaCodec.BufferInfo f27711n;

    /* renamed from: o */
    public C5870id f27712o;

    /* renamed from: p */
    public MediaCodec f27713p;

    /* renamed from: q */
    public C5947kh f27714q;

    /* renamed from: r */
    public boolean f27715r;

    /* renamed from: s */
    public boolean f27716s;

    /* renamed from: t */
    public boolean f27717t;

    /* renamed from: u */
    public boolean f27718u;

    /* renamed from: v */
    public boolean f27719v;

    /* renamed from: w */
    public boolean f27720w;

    /* renamed from: x */
    public boolean f27721x;

    /* renamed from: y */
    public boolean f27722y;

    /* renamed from: z */
    public boolean f27723z;

    @Override // p168r4.AbstractC6202rc
    /* renamed from: B */
    public void mo5353B() {
        this.f27712o = null;
        mo5697V();
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: G */
    public boolean mo5352G() {
        return this.f27703M;
    }

    /* renamed from: I */
    public abstract int mo5351I(InterfaceC6096oh interfaceC6096oh, C5870id c5870id);

    /* renamed from: J */
    public C5947kh mo5350J(InterfaceC6096oh interfaceC6096oh, C5870id c5870id, boolean z) {
        return C6355vh.m6155a(c5870id.f25060q, false);
    }

    /* renamed from: K */
    public abstract void mo5349K(C5947kh c5947kh, MediaCodec mediaCodec, C5870id c5870id, MediaCrypto mediaCrypto);

    /* renamed from: L */
    public abstract void mo5348L(String str, long j, long j2);

    /* renamed from: O */
    public abstract void mo5345O(MediaCodec mediaCodec, MediaFormat mediaFormat);

    /* renamed from: P */
    public abstract boolean mo5344P(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z);

    /* renamed from: Q */
    public void mo5343Q() {
    }

    /* renamed from: S */
    public boolean mo5698S(C5947kh c5947kh) {
        return true;
    }

    /* renamed from: T */
    public final MediaCodec m9389T() {
        return this.f27713p;
    }

    /* renamed from: U */
    public final C5947kh m9388U() {
        return this.f27714q;
    }

    /* renamed from: W */
    public void mo5696W(C5835hf c5835hf) {
    }

    /* renamed from: X */
    public boolean mo5695X(MediaCodec mediaCodec, boolean z, C5870id c5870id, C5870id c5870id2) {
        return false;
    }

    @Override // p168r4.InterfaceC6092od
    /* renamed from: m */
    public final int mo8830m() {
        return 4;
    }

    @Override // p168r4.AbstractC6202rc
    /* renamed from: w */
    public void mo5338w(boolean z) {
        this.f27705O = new C5798gf();
    }

    @Override // p168r4.AbstractC6202rc
    /* renamed from: y */
    public void mo5337y(long j, boolean z) {
        this.f27702L = false;
        this.f27703M = false;
        if (this.f27713p != null) {
            this.f27693C = -9223372036854775807L;
            this.f27694D = -1;
            this.f27695E = -1;
            this.f27704N = true;
            this.f27696F = false;
            this.f27710m.clear();
            this.f27722y = false;
            this.f27723z = false;
            if (!this.f27716s && (!this.f27719v || !this.f27701K)) {
                if (this.f27699I != 0) {
                    mo5697V();
                    m9390R();
                } else {
                    this.f27713p.flush();
                    this.f27700J = false;
                }
            } else {
                mo5697V();
                m9390R();
            }
            if (this.f27697G && this.f27712o != null) {
                this.f27698H = 1;
            }
        }
    }

    /* renamed from: F */
    public final boolean m9392F() {
        MediaCodec mediaCodec = this.f27713p;
        if (mediaCodec == null || this.f27699I == 2 || this.f27702L) {
            return false;
        }
        if (this.f27694D < 0) {
            int dequeueInputBuffer = mediaCodec.dequeueInputBuffer(0L);
            this.f27694D = dequeueInputBuffer;
            if (dequeueInputBuffer < 0) {
                return false;
            }
            C5835hf c5835hf = this.f27707j;
            c5835hf.f24563c = this.f27691A[dequeueInputBuffer];
            c5835hf.mo10935a();
        }
        if (this.f27699I == 1) {
            if (!this.f27718u) {
                this.f27701K = true;
                this.f27713p.queueInputBuffer(this.f27694D, 0, 0, 0L, 4);
                this.f27694D = -1;
            }
            this.f27699I = 2;
            return false;
        } else if (this.f27722y) {
            this.f27722y = false;
            ByteBuffer byteBuffer = this.f27707j.f24563c;
            byte[] bArr = f27690P;
            byteBuffer.put(bArr);
            MediaCodec mediaCodec2 = this.f27713p;
            int i = this.f27694D;
            int length = bArr.length;
            mediaCodec2.queueInputBuffer(i, 0, 38, 0L, 0);
            this.f27694D = -1;
            this.f27700J = true;
            return true;
        } else {
            if (this.f27698H == 1) {
                for (int i2 = 0; i2 < this.f27712o.f25062s.size(); i2++) {
                    this.f27707j.f24563c.put(this.f27712o.f25062s.get(i2));
                }
                this.f27698H = 2;
            }
            int position = this.f27707j.f24563c.position();
            int m7532t = m7532t(this.f27709l, this.f27707j, false);
            if (m7532t == -3) {
                return false;
            }
            if (m7532t == -5) {
                if (this.f27698H == 2) {
                    this.f27707j.mo10935a();
                    this.f27698H = 1;
                }
                mo5347M(this.f27709l.f26005a);
                return true;
            } else if (this.f27707j.m12481c()) {
                if (this.f27698H == 2) {
                    this.f27707j.mo10935a();
                    this.f27698H = 1;
                }
                this.f27702L = true;
                if (!this.f27700J) {
                    m9391H();
                    return false;
                }
                try {
                    if (!this.f27718u) {
                        this.f27701K = true;
                        this.f27713p.queueInputBuffer(this.f27694D, 0, 0, 0L, 4);
                        this.f27694D = -1;
                    }
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw C6276tc.m6885a(e, m7546E());
                }
            } else if (this.f27704N && !this.f27707j.m12480d()) {
                this.f27707j.mo10935a();
                if (this.f27698H == 2) {
                    this.f27698H = 1;
                }
                return true;
            } else {
                this.f27704N = false;
                boolean m10933i = this.f27707j.m10933i();
                if (this.f27715r && !m10933i) {
                    ByteBuffer byteBuffer2 = this.f27707j.f24563c;
                    byte[] bArr2 = C5619bl.f21092a;
                    int position2 = byteBuffer2.position();
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        int i5 = i3 + 1;
                        if (i5 < position2) {
                            int i6 = byteBuffer2.get(i3) & DefaultClassResolver.NAME;
                            if (i4 == 3) {
                                if (i6 == 1) {
                                    if ((byteBuffer2.get(i5) & 31) == 7) {
                                        ByteBuffer duplicate = byteBuffer2.duplicate();
                                        duplicate.position(i3 - 3);
                                        duplicate.limit(position2);
                                        byteBuffer2.position(0);
                                        byteBuffer2.put(duplicate);
                                        break;
                                    }
                                    i6 = 1;
                                }
                            } else if (i6 == 0) {
                                i4++;
                            }
                            if (i6 != 0) {
                                i4 = 0;
                            }
                            i3 = i5;
                        } else {
                            byteBuffer2.clear();
                            break;
                        }
                    }
                    if (this.f27707j.f24563c.position() == 0) {
                        return true;
                    }
                    this.f27715r = false;
                }
                try {
                    C5835hf c5835hf2 = this.f27707j;
                    long j = c5835hf2.f24564d;
                    if (c5835hf2.m12482b()) {
                        this.f27710m.add(Long.valueOf(j));
                    }
                    this.f27707j.f24563c.flip();
                    mo5696W(this.f27707j);
                    if (m10933i) {
                        MediaCodec.CryptoInfo m11548b = this.f27707j.f24562b.m11548b();
                        if (position != 0) {
                            if (m11548b.numBytesOfClearData == null) {
                                m11548b.numBytesOfClearData = new int[1];
                            }
                            int[] iArr = m11548b.numBytesOfClearData;
                            iArr[0] = iArr[0] + position;
                        }
                        this.f27713p.queueSecureInputBuffer(this.f27694D, 0, m11548b, j, 0);
                    } else {
                        this.f27713p.queueInputBuffer(this.f27694D, 0, this.f27707j.f24563c.limit(), j, 0);
                    }
                    this.f27694D = -1;
                    this.f27700J = true;
                    this.f27698H = 0;
                    this.f27705O.f24008c++;
                    return true;
                } catch (MediaCodec.CryptoException e2) {
                    throw C6276tc.m6885a(e2, m7546E());
                }
            }
        }
    }

    /* renamed from: H */
    public final void m9391H() {
        if (this.f27699I == 2) {
            mo5697V();
            m9390R();
            return;
        }
        this.f27703M = true;
        mo5343Q();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
        if (r6.f25065v == r0.f25065v) goto L21;
     */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo5347M(p168r4.C5870id r6) {
        /*
            r5 = this;
            r4.id r0 = r5.f27712o
            r5.f27712o = r6
            r4.lf r6 = r6.f25063t
            if (r0 != 0) goto La
            r1 = 0
            goto Lc
        La:
            r4.lf r1 = r0.f25063t
        Lc:
            boolean r6 = p168r4.C5988ll.m9653a(r6, r1)
            if (r6 != 0) goto L29
            r4.id r6 = r5.f27712o
            r4.lf r6 = r6.f25063t
            if (r6 != 0) goto L19
            goto L29
        L19:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Media requires a DrmSessionManager"
            r6.<init>(r0)
            int r0 = r5.m7546E()
            r4.tc r6 = p168r4.C6276tc.m6885a(r6, r0)
            throw r6
        L29:
            android.media.MediaCodec r6 = r5.f27713p
            r1 = 1
            if (r6 == 0) goto L56
            r4.kh r2 = r5.f27714q
            boolean r2 = r2.f26413b
            r4.id r3 = r5.f27712o
            boolean r6 = r5.mo5695X(r6, r2, r0, r3)
            if (r6 == 0) goto L56
            r5.f27697G = r1
            r5.f27698H = r1
            boolean r6 = r5.f27717t
            r2 = 0
            if (r6 == 0) goto L52
            r4.id r6 = r5.f27712o
            int r3 = r6.f25064u
            int r4 = r0.f25064u
            if (r3 != r4) goto L52
            int r6 = r6.f25065v
            int r0 = r0.f25065v
            if (r6 != r0) goto L52
            goto L53
        L52:
            r1 = 0
        L53:
            r5.f27722y = r1
            return
        L56:
            boolean r6 = r5.f27700J
            if (r6 == 0) goto L5d
            r5.f27699I = r1
            return
        L5d:
            r5.mo5697V()
            r5.m9390R()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.AbstractC6021mh.mo5347M(r4.id):void");
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: N */
    public boolean mo5346N() {
        if (this.f27712o != null) {
            if (m7530v() || this.f27695E >= 0) {
                return true;
            }
            if (this.f27693C != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f27693C) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x015c A[Catch: Exception -> 0x01d1, TryCatch #1 {Exception -> 0x01d1, blocks: (B:99:0x014c, B:101:0x015c, B:103:0x0167, B:102:0x0161), top: B:116:0x014c }] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0161 A[Catch: Exception -> 0x01d1, TryCatch #1 {Exception -> 0x01d1, blocks: (B:99:0x014c, B:101:0x015c, B:103:0x0167, B:102:0x0161), top: B:116:0x014c }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01bb  */
    /* renamed from: R */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9390R() {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.AbstractC6021mh.m9390R():void");
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: n */
    public final void mo9122n(long j, long j2) {
        boolean mo5344P;
        int dequeueOutputBuffer;
        boolean z;
        if (this.f27703M) {
            mo5343Q();
            return;
        }
        if (this.f27712o == null) {
            this.f27708k.mo10935a();
            int m7532t = m7532t(this.f27709l, this.f27708k, true);
            if (m7532t == -5) {
                mo5347M(this.f27709l.f26005a);
            } else if (m7532t == -4) {
                C6358vk.m6137d(this.f27708k.m12481c());
                this.f27702L = true;
                m9391H();
                return;
            } else {
                return;
            }
        }
        m9390R();
        if (this.f27713p != null) {
            C5914jl.m10254a("drainAndFeed");
            while (true) {
                if (this.f27695E < 0) {
                    if (this.f27720w && this.f27701K) {
                        try {
                            dequeueOutputBuffer = this.f27713p.dequeueOutputBuffer(this.f27711n, 0L);
                            this.f27695E = dequeueOutputBuffer;
                        } catch (IllegalStateException unused) {
                            m9391H();
                            if (this.f27703M) {
                                mo5697V();
                            }
                        }
                    } else {
                        dequeueOutputBuffer = this.f27713p.dequeueOutputBuffer(this.f27711n, 0L);
                        this.f27695E = dequeueOutputBuffer;
                    }
                    if (dequeueOutputBuffer >= 0) {
                        if (this.f27723z) {
                            this.f27723z = false;
                            this.f27713p.releaseOutputBuffer(dequeueOutputBuffer, false);
                            this.f27695E = -1;
                        } else {
                            MediaCodec.BufferInfo bufferInfo = this.f27711n;
                            if ((bufferInfo.flags & 4) != 0) {
                                m9391H();
                                this.f27695E = -1;
                                break;
                            }
                            ByteBuffer byteBuffer = this.f27692B[this.f27695E];
                            if (byteBuffer != null) {
                                byteBuffer.position(bufferInfo.offset);
                                MediaCodec.BufferInfo bufferInfo2 = this.f27711n;
                                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                            }
                            long j3 = this.f27711n.presentationTimeUs;
                            int size = this.f27710m.size();
                            int i = 0;
                            while (true) {
                                if (i < size) {
                                    if (this.f27710m.get(i).longValue() == j3) {
                                        this.f27710m.remove(i);
                                        z = true;
                                        break;
                                    }
                                    i++;
                                } else {
                                    z = false;
                                    break;
                                }
                            }
                            this.f27696F = z;
                        }
                    } else if (dequeueOutputBuffer == -2) {
                        MediaFormat outputFormat = this.f27713p.getOutputFormat();
                        if (this.f27717t && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                            this.f27723z = true;
                        } else {
                            if (this.f27721x) {
                                outputFormat.setInteger("channel-count", 1);
                            }
                            mo5345O(this.f27713p, outputFormat);
                        }
                    } else if (dequeueOutputBuffer == -3) {
                        this.f27692B = this.f27713p.getOutputBuffers();
                    } else if (this.f27718u && (this.f27702L || this.f27699I == 2)) {
                        m9391H();
                    }
                }
                if (this.f27720w && this.f27701K) {
                    try {
                        MediaCodec mediaCodec = this.f27713p;
                        ByteBuffer[] byteBufferArr = this.f27692B;
                        int i2 = this.f27695E;
                        ByteBuffer byteBuffer2 = byteBufferArr[i2];
                        MediaCodec.BufferInfo bufferInfo3 = this.f27711n;
                        mo5344P = mo5344P(j, j2, mediaCodec, byteBuffer2, i2, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.f27696F);
                    } catch (IllegalStateException unused2) {
                        m9391H();
                        if (this.f27703M) {
                            mo5697V();
                        }
                    }
                } else {
                    MediaCodec mediaCodec2 = this.f27713p;
                    ByteBuffer[] byteBufferArr2 = this.f27692B;
                    int i3 = this.f27695E;
                    ByteBuffer byteBuffer3 = byteBufferArr2[i3];
                    MediaCodec.BufferInfo bufferInfo4 = this.f27711n;
                    mo5344P = mo5344P(j, j2, mediaCodec2, byteBuffer3, i3, bufferInfo4.flags, bufferInfo4.presentationTimeUs, this.f27696F);
                }
                if (!mo5344P) {
                    break;
                }
                long j4 = this.f27711n.presentationTimeUs;
                this.f27695E = -1;
            }
            do {
            } while (m9392F());
            C5914jl.m10253b();
        } else {
            m7531u(j);
            this.f27708k.mo10935a();
            int m7532t2 = m7532t(this.f27709l, this.f27708k, false);
            if (m7532t2 == -5) {
                mo5347M(this.f27709l.f26005a);
            } else if (m7532t2 == -4) {
                C6358vk.m6137d(this.f27708k.m12481c());
                this.f27702L = true;
                m9391H();
            }
        }
        this.f27705O.m11185a();
    }

    @Override // p168r4.InterfaceC6092od
    /* renamed from: p */
    public final int mo8829p(C5870id c5870id) {
        try {
            return mo5351I(this.f27706i, c5870id);
        } catch (C6170qh e) {
            throw C6276tc.m6885a(e, m7546E());
        }
    }

    public AbstractC6021mh(int i, InterfaceC6096oh interfaceC6096oh, InterfaceC6019mf interfaceC6019mf, boolean z) {
        super(i);
        boolean z2;
        if (C5988ll.f27242a >= 16) {
            z2 = true;
        } else {
            z2 = false;
        }
        C6358vk.m6137d(z2);
        this.f27706i = interfaceC6096oh;
        this.f27707j = new C5835hf(0);
        this.f27708k = new C5835hf(0);
        this.f27709l = new C5906jd();
        this.f27710m = new ArrayList();
        this.f27711n = new MediaCodec.BufferInfo();
        this.f27698H = 0;
        this.f27699I = 0;
    }

    /* renamed from: V */
    public void mo5697V() {
        this.f27693C = -9223372036854775807L;
        this.f27694D = -1;
        this.f27695E = -1;
        this.f27696F = false;
        this.f27710m.clear();
        this.f27691A = null;
        this.f27692B = null;
        this.f27714q = null;
        this.f27697G = false;
        this.f27700J = false;
        this.f27715r = false;
        this.f27716s = false;
        this.f27717t = false;
        this.f27718u = false;
        this.f27719v = false;
        this.f27721x = false;
        this.f27722y = false;
        this.f27723z = false;
        this.f27701K = false;
        this.f27698H = 0;
        this.f27699I = 0;
        this.f27707j.f24563c = null;
        MediaCodec mediaCodec = this.f27713p;
        if (mediaCodec != null) {
            this.f27705O.f24007b++;
            try {
                mediaCodec.stop();
                try {
                    this.f27713p.release();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    this.f27713p.release();
                    throw th;
                } finally {
                }
            }
        }
    }
}
