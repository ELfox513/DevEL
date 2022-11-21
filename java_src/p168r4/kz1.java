package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.kz1 */
/* loaded from: classes2.dex */
public final class kz1 extends jy1 {

    /* renamed from: i */
    public int[] f26996i;

    /* renamed from: j */
    public int[] f26997j;

    @Override // p168r4.jy1
    /* renamed from: m */
    public final void mo9824m() {
        this.f26997j = this.f26996i;
    }

    @Override // p168r4.jy1
    /* renamed from: n */
    public final void mo9823n() {
        this.f26997j = null;
        this.f26996i = null;
    }

    /* renamed from: o */
    public final void m9822o(int[] iArr) {
        this.f26996i = iArr;
    }

    @Override // p168r4.ja1
    /* renamed from: h */
    public final void mo9826h(ByteBuffer byteBuffer) {
        int[] iArr = this.f26997j;
        iArr.getClass();
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer m10152i = m10152i(((limit - position) / this.f26176b.f24510d) * this.f26177c.f24510d);
        while (position < limit) {
            for (int i : iArr) {
                m10152i.putShort(byteBuffer.getShort(i + i + position));
            }
            position += this.f26176b.f24510d;
        }
        byteBuffer.position(limit);
        m10152i.flip();
    }

    @Override // p168r4.jy1
    /* renamed from: k */
    public final h81 mo9825k(h81 h81Var) {
        boolean z;
        boolean z2;
        int[] iArr = this.f26996i;
        if (iArr == null) {
            return h81.f24506e;
        }
        if (h81Var.f24509c == 2) {
            if (h81Var.f24508b != iArr.length) {
                z = true;
            } else {
                z = false;
            }
            int i = 0;
            while (true) {
                int length = iArr.length;
                if (i < length) {
                    int i2 = iArr[i];
                    if (i2 < h81Var.f24508b) {
                        if (i2 != i) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        z |= z2;
                        i++;
                    } else {
                        throw new i91(h81Var);
                    }
                } else if (z) {
                    return new h81(h81Var.f24507a, length, 2);
                } else {
                    return h81.f24506e;
                }
            }
        } else {
            throw new i91(h81Var);
        }
    }
}
