package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.i4 */
/* loaded from: classes2.dex */
public class C5861i4 extends qb4 {

    /* renamed from: b */
    public final C5709e1 f24957b = new C5709e1();

    /* renamed from: c */
    public ByteBuffer f24958c;

    /* renamed from: d */
    public boolean f24959d;

    /* renamed from: e */
    public long f24960e;

    /* renamed from: f */
    public ByteBuffer f24961f;

    /* renamed from: g */
    public final int f24962g;

    public C5861i4(int i, int i2) {
        this.f24962g = i;
    }

    /* renamed from: j */
    public final boolean m10727j() {
        return m7885h(1073741824);
    }

    /* renamed from: i */
    public final void m10728i(int i) {
        ByteBuffer byteBuffer = this.f24958c;
        if (byteBuffer == null) {
            this.f24958c = m10725l(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i2 = i + position;
        if (capacity >= i2) {
            this.f24958c = byteBuffer;
            return;
        }
        ByteBuffer m10725l = m10725l(i2);
        m10725l.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            m10725l.put(byteBuffer);
        }
        this.f24958c = m10725l;
    }

    /* renamed from: k */
    public final void m10726k() {
        ByteBuffer byteBuffer = this.f24958c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f24961f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    /* renamed from: l */
    public final ByteBuffer m10725l(int i) {
        int capacity;
        int i2 = this.f24962g;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f24958c;
        if (byteBuffer == null) {
            capacity = 0;
        } else {
            capacity = byteBuffer.capacity();
        }
        throw new C5823h3(capacity, i);
    }

    @Override // p168r4.qb4
    /* renamed from: a */
    public void mo4041a() {
        super.mo4041a();
        ByteBuffer byteBuffer = this.f24958c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f24961f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f24959d = false;
    }
}
