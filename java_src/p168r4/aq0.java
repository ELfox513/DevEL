package p168r4;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* renamed from: r4.aq0 */
/* loaded from: classes2.dex */
public final class aq0 {

    /* renamed from: a */
    public long f20580a;

    /* renamed from: a */
    public final long m12972a(ByteBuffer byteBuffer) {
        ha4 ha4Var;
        ga4 ga4Var;
        long j = this.f20580a;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator<ea4> it = new ca4(new zp0(duplicate), cq0.f21651c).m11381f().iterator();
            while (true) {
                ha4Var = null;
                if (it.hasNext()) {
                    ea4 next = it.next();
                    if (next instanceof ga4) {
                        ga4Var = (ga4) next;
                        break;
                    }
                } else {
                    ga4Var = null;
                    break;
                }
            }
            Iterator<ea4> it2 = ga4Var.m11381f().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                ea4 next2 = it2.next();
                if (next2 instanceof ha4) {
                    ha4Var = (ha4) next2;
                    break;
                }
            }
            long m10953j = (ha4Var.m10953j() * 1000) / ha4Var.m10954i();
            this.f20580a = m10953j;
            return m10953j;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
