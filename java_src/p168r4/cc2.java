package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.nio.ByteBuffer;
/* renamed from: r4.cc2 */
/* loaded from: classes2.dex */
public final class cc2 extends jy1 {

    /* renamed from: i */
    public static final int f21475i = Float.floatToIntBits(Float.NaN);

    /* renamed from: o */
    public static void m12493o(int i, ByteBuffer byteBuffer) {
        double d = i;
        Double.isNaN(d);
        int floatToIntBits = Float.floatToIntBits((float) (d * 4.656612875245797E-10d));
        if (floatToIntBits == f21475i) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // p168r4.jy1
    /* renamed from: k */
    public final h81 mo9825k(h81 h81Var) {
        int i = h81Var.f24509c;
        if (C5979lc.m9689q(i)) {
            if (i != 4) {
                return new h81(h81Var.f24507a, h81Var.f24508b, 4);
            }
            return h81.f24506e;
        }
        throw new i91(h81Var);
    }

    @Override // p168r4.ja1
    /* renamed from: h */
    public final void mo9826h(ByteBuffer byteBuffer) {
        ByteBuffer m10152i;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        int i2 = this.f26176b.f24509c;
        if (i2 != 536870912) {
            if (i2 == 805306368) {
                m10152i = m10152i(i);
                while (position < limit) {
                    m12493o((byteBuffer.get(position) & DefaultClassResolver.NAME) | ((byteBuffer.get(position + 1) & DefaultClassResolver.NAME) << 8) | ((byteBuffer.get(position + 2) & DefaultClassResolver.NAME) << 16) | ((byteBuffer.get(position + 3) & DefaultClassResolver.NAME) << 24), m10152i);
                    position += 4;
                }
            } else {
                throw new IllegalStateException();
            }
        } else {
            m10152i = m10152i((i / 3) * 4);
            while (position < limit) {
                m12493o(((byteBuffer.get(position) & DefaultClassResolver.NAME) << 8) | ((byteBuffer.get(position + 1) & DefaultClassResolver.NAME) << 16) | ((byteBuffer.get(position + 2) & DefaultClassResolver.NAME) << 24), m10152i);
                position += 3;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        m10152i.flip();
    }
}
