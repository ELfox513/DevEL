package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.zx2 */
/* loaded from: classes2.dex */
public final class zx2 extends C5861i4 {

    /* renamed from: h */
    public long f34773h;

    /* renamed from: i */
    public int f34774i;

    /* renamed from: j */
    public int f34775j;

    public zx2() {
        super(2, 0);
        this.f34775j = 32;
    }

    @Override // p168r4.C5861i4, p168r4.qb4
    /* renamed from: a */
    public final void mo4041a() {
        super.mo4041a();
        this.f34774i = 0;
    }

    /* renamed from: m */
    public final void m4040m(int i) {
        this.f34775j = i;
    }

    /* renamed from: n */
    public final long m4039n() {
        return this.f34773h;
    }

    /* renamed from: o */
    public final int m4038o() {
        return this.f34774i;
    }

    /* renamed from: p */
    public final boolean m4037p() {
        return this.f34774i > 0;
    }

    /* renamed from: q */
    public final boolean m4036q(C5861i4 c5861i4) {
        ByteBuffer byteBuffer;
        C5903ja.m10374a(!c5861i4.m7885h(1073741824));
        C5903ja.m10374a(!c5861i4.m7885h(268435456));
        C5903ja.m10374a(!c5861i4.m7885h(4));
        if (m4037p()) {
            if (this.f34774i < this.f34775j && c5861i4.m7885h(Integer.MIN_VALUE) == m7885h(Integer.MIN_VALUE)) {
                ByteBuffer byteBuffer2 = c5861i4.f24958c;
                if (byteBuffer2 != null && (byteBuffer = this.f24958c) != null && byteBuffer.position() + byteBuffer2.remaining() > 3072000) {
                    return false;
                }
            } else {
                return false;
            }
        }
        int i = this.f34774i;
        this.f34774i = i + 1;
        if (i == 0) {
            this.f24960e = c5861i4.f24960e;
            if (c5861i4.m7885h(1)) {
                m7887f(1);
            }
        }
        if (c5861i4.m7885h(Integer.MIN_VALUE)) {
            m7887f(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer3 = c5861i4.f24958c;
        if (byteBuffer3 != null) {
            m10728i(byteBuffer3.remaining());
            this.f24958c.put(byteBuffer3);
        }
        this.f34773h = c5861i4.f24960e;
        return true;
    }
}
