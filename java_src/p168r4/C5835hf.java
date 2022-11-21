package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.hf */
/* loaded from: classes2.dex */
public final class C5835hf extends C5649cf {

    /* renamed from: b */
    public final C5761ff f24562b = new C5761ff();

    /* renamed from: c */
    public ByteBuffer f24563c;

    /* renamed from: d */
    public long f24564d;

    public C5835hf(int i) {
    }

    /* renamed from: i */
    public final boolean m10933i() {
        return m12477g(1073741824);
    }

    /* renamed from: h */
    public final void m10934h(int i) {
        ByteBuffer byteBuffer = this.f24563c;
        if (byteBuffer == null) {
            this.f24563c = m10932j(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.f24563c.position();
        int i2 = i + position;
        if (capacity >= i2) {
            return;
        }
        ByteBuffer m10932j = m10932j(i2);
        if (position > 0) {
            this.f24563c.position(0);
            this.f24563c.limit(position);
            m10932j.put(this.f24563c);
        }
        this.f24563c = m10932j;
    }

    /* renamed from: j */
    public final ByteBuffer m10932j(int i) {
        int capacity;
        ByteBuffer byteBuffer = this.f24563c;
        if (byteBuffer == null) {
            capacity = 0;
        } else {
            capacity = byteBuffer.capacity();
        }
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(capacity);
        sb.append(" < ");
        sb.append(i);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }

    @Override // p168r4.C5649cf
    /* renamed from: a */
    public final void mo10935a() {
        super.mo10935a();
        ByteBuffer byteBuffer = this.f24563c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }
}
