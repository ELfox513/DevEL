package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.hh2 */
/* loaded from: classes2.dex */
public final class hh2 extends jy1 {

    /* renamed from: i */
    public int f24635i;

    /* renamed from: j */
    public boolean f24636j;

    /* renamed from: k */
    public byte[] f24637k;

    /* renamed from: l */
    public byte[] f24638l;

    /* renamed from: m */
    public int f24639m;

    /* renamed from: n */
    public int f24640n;

    /* renamed from: o */
    public int f24641o;

    /* renamed from: p */
    public boolean f24642p;

    /* renamed from: q */
    public long f24643q;

    @Override // p168r4.jy1, p168r4.ja1
    /* renamed from: a */
    public final boolean mo10157a() {
        return this.f24636j;
    }

    @Override // p168r4.jy1
    /* renamed from: n */
    public final void mo9823n() {
        this.f24636j = false;
        this.f24641o = 0;
        byte[] bArr = C5979lc.f27169f;
        this.f24637k = bArr;
        this.f24638l = bArr;
    }

    /* renamed from: o */
    public final void m10913o(boolean z) {
        this.f24636j = z;
    }

    /* renamed from: p */
    public final long m10912p() {
        return this.f24643q;
    }

    /* renamed from: q */
    public final void m10911q(byte[] bArr, int i) {
        m10152i(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.f24642p = true;
        }
    }

    /* renamed from: s */
    public final int m10909s(long j) {
        return (int) ((j * this.f26176b.f24507a) / 1000000);
    }

    @Override // p168r4.jy1
    /* renamed from: k */
    public final h81 mo9825k(h81 h81Var) {
        if (h81Var.f24509c == 2) {
            if (this.f24636j) {
                return h81Var;
            }
            return h81.f24506e;
        }
        throw new i91(h81Var);
    }

    @Override // p168r4.jy1
    /* renamed from: l */
    public final void mo10009l() {
        int i = this.f24640n;
        if (i > 0) {
            m10911q(this.f24637k, i);
        }
        if (!this.f24642p) {
            this.f24643q += this.f24641o / this.f24635i;
        }
    }

    @Override // p168r4.jy1
    /* renamed from: m */
    public final void mo9824m() {
        if (this.f24636j) {
            this.f24635i = this.f26176b.f24510d;
            int m10909s = m10909s(150000L) * this.f24635i;
            if (this.f24637k.length != m10909s) {
                this.f24637k = new byte[m10909s];
            }
            int m10909s2 = m10909s(20000L) * this.f24635i;
            this.f24641o = m10909s2;
            if (this.f24638l.length != m10909s2) {
                this.f24638l = new byte[m10909s2];
            }
        }
        this.f24639m = 0;
        this.f24643q = 0L;
        this.f24640n = 0;
        this.f24642p = false;
    }

    public hh2() {
        byte[] bArr = C5979lc.f27169f;
        this.f24637k = bArr;
        this.f24638l = bArr;
    }

    @Override // p168r4.ja1
    /* renamed from: h */
    public final void mo9826h(ByteBuffer byteBuffer) {
        int position;
        while (byteBuffer.hasRemaining() && !m10151j()) {
            int i = this.f24639m;
            if (i != 0) {
                if (i != 1) {
                    int limit = byteBuffer.limit();
                    int m10908t = m10908t(byteBuffer);
                    byteBuffer.limit(m10908t);
                    this.f24643q += byteBuffer.remaining() / this.f24635i;
                    m10910r(byteBuffer, this.f24638l, this.f24641o);
                    if (m10908t < limit) {
                        m10911q(this.f24638l, this.f24641o);
                        this.f24639m = 0;
                        byteBuffer.limit(limit);
                    }
                } else {
                    int limit2 = byteBuffer.limit();
                    int m10908t2 = m10908t(byteBuffer);
                    int position2 = m10908t2 - byteBuffer.position();
                    byte[] bArr = this.f24637k;
                    int length = bArr.length;
                    int i2 = this.f24640n;
                    int i3 = length - i2;
                    if (m10908t2 < limit2 && position2 < i3) {
                        m10911q(bArr, i2);
                        this.f24640n = 0;
                        this.f24639m = 0;
                    } else {
                        int min = Math.min(position2, i3);
                        byteBuffer.limit(byteBuffer.position() + min);
                        byteBuffer.get(this.f24637k, this.f24640n, min);
                        int i4 = this.f24640n + min;
                        this.f24640n = i4;
                        byte[] bArr2 = this.f24637k;
                        if (i4 == bArr2.length) {
                            if (this.f24642p) {
                                m10911q(bArr2, this.f24641o);
                                long j = this.f24643q;
                                int i5 = this.f24640n;
                                int i6 = this.f24641o;
                                this.f24643q = j + ((i5 - (i6 + i6)) / this.f24635i);
                                i4 = i5;
                            } else {
                                this.f24643q += (i4 - this.f24641o) / this.f24635i;
                            }
                            m10910r(byteBuffer, this.f24637k, i4);
                            this.f24640n = 0;
                            this.f24639m = 2;
                        }
                        byteBuffer.limit(limit2);
                    }
                }
            } else {
                int limit3 = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit3, byteBuffer.position() + this.f24637k.length));
                int limit4 = byteBuffer.limit();
                while (true) {
                    limit4 -= 2;
                    if (limit4 >= byteBuffer.position()) {
                        if (Math.abs((int) byteBuffer.getShort(limit4)) > 1024) {
                            int i7 = this.f24635i;
                            position = ((limit4 / i7) * i7) + i7;
                            break;
                        }
                    } else {
                        position = byteBuffer.position();
                        break;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.f24639m = 1;
                } else {
                    byteBuffer.limit(position);
                    int remaining = byteBuffer.remaining();
                    m10152i(remaining).put(byteBuffer).flip();
                    if (remaining > 0) {
                        this.f24642p = true;
                    }
                }
                byteBuffer.limit(limit3);
            }
        }
    }

    /* renamed from: r */
    public final void m10910r(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.f24641o);
        int i2 = this.f24641o - min;
        System.arraycopy(bArr, i - i2, this.f24638l, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f24638l, i2, min);
    }

    /* renamed from: t */
    public final int m10908t(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position(); position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.getShort(position)) > 1024) {
                int i = this.f24635i;
                return i * (position / i);
            }
        }
        return byteBuffer.limit();
    }
}
