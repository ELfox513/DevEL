package p168r4;

import android.util.Log;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.nio.ByteBuffer;
/* renamed from: r4.az2 */
/* loaded from: classes2.dex */
public final class az2 {

    /* renamed from: a */
    public long f20780a;

    /* renamed from: b */
    public long f20781b;

    /* renamed from: c */
    public boolean f20782c;

    /* renamed from: a */
    public final void m12900a() {
        this.f20780a = 0L;
        this.f20781b = 0L;
        this.f20782c = false;
    }

    /* renamed from: c */
    public final long m12898c(C5713e5 c5713e5) {
        return m12897d(c5713e5.f22828z);
    }

    /* renamed from: b */
    public final long m12899b(C5713e5 c5713e5, C5861i4 c5861i4) {
        if (this.f20781b == 0) {
            this.f20780a = c5861i4.f24960e;
        }
        if (this.f20782c) {
            return c5861i4.f24960e;
        }
        ByteBuffer byteBuffer = c5861i4.f24958c;
        byteBuffer.getClass();
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get(i2) & DefaultClassResolver.NAME);
        }
        int m6659i = u04.m6659i(i);
        if (m6659i == -1) {
            this.f20782c = true;
            this.f20781b = 0L;
            this.f20780a = c5861i4.f24960e;
            Log.w("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
            return c5861i4.f24960e;
        }
        long m12897d = m12897d(c5713e5.f22828z);
        this.f20781b += m6659i;
        return m12897d;
    }

    /* renamed from: d */
    public final long m12897d(long j) {
        return this.f20780a + Math.max(0L, ((this.f20781b - 529) * 1000000) / j);
    }
}
