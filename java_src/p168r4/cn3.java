package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* renamed from: r4.cn3 */
/* loaded from: classes2.dex */
public final class cn3 extends InputStream {

    /* renamed from: a */
    public Iterator<ByteBuffer> f21614a;

    /* renamed from: b */
    public ByteBuffer f21615b;

    /* renamed from: d */
    public int f21616d = 0;

    /* renamed from: k */
    public int f21617k;

    /* renamed from: p */
    public int f21618p;

    /* renamed from: q */
    public boolean f21619q;

    /* renamed from: r */
    public byte[] f21620r;

    /* renamed from: s */
    public int f21621s;

    /* renamed from: t */
    public long f21622t;

    @Override // java.io.InputStream
    public final int read() {
        byte m7364z;
        if (this.f21617k == this.f21616d) {
            return -1;
        }
        if (this.f21619q) {
            m7364z = this.f21620r[this.f21618p + this.f21621s];
            m12406d(1);
        } else {
            m7364z = rp3.m7364z(this.f21618p + this.f21622t);
            m12406d(1);
        }
        return m7364z & DefaultClassResolver.NAME;
    }

    /* renamed from: c */
    public final boolean m12407c() {
        this.f21617k++;
        if (!this.f21614a.hasNext()) {
            return false;
        }
        ByteBuffer next = this.f21614a.next();
        this.f21615b = next;
        this.f21618p = next.position();
        if (this.f21615b.hasArray()) {
            this.f21619q = true;
            this.f21620r = this.f21615b.array();
            this.f21621s = this.f21615b.arrayOffset();
        } else {
            this.f21619q = false;
            this.f21622t = rp3.m7397A(this.f21615b);
            this.f21620r = null;
        }
        return true;
    }

    /* renamed from: d */
    public final void m12406d(int i) {
        int i2 = this.f21618p + i;
        this.f21618p = i2;
        if (i2 == this.f21615b.limit()) {
            m12407c();
        }
    }

    public cn3(Iterable<ByteBuffer> iterable) {
        this.f21614a = iterable.iterator();
        for (ByteBuffer byteBuffer : iterable) {
            this.f21616d++;
        }
        this.f21617k = -1;
        if (!m12407c()) {
            this.f21615b = zm3.f34683d;
            this.f21617k = 0;
            this.f21618p = 0;
            this.f21622t = 0L;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.f21617k == this.f21616d) {
            return -1;
        }
        int limit = this.f21615b.limit();
        int i3 = this.f21618p;
        int i4 = limit - i3;
        if (i2 > i4) {
            i2 = i4;
        }
        if (this.f21619q) {
            System.arraycopy(this.f21620r, i3 + this.f21621s, bArr, i, i2);
            m12406d(i2);
        } else {
            int position = this.f21615b.position();
            ByteBuffer byteBuffer = (ByteBuffer) this.f21615b.position(this.f21618p);
            this.f21615b.get(bArr, i, i2);
            ByteBuffer byteBuffer2 = (ByteBuffer) this.f21615b.position(position);
            m12406d(i2);
        }
        return i2;
    }
}
