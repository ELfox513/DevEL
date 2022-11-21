package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.kk2 */
/* loaded from: classes2.dex */
public final class kk2 extends jy1 {

    /* renamed from: i */
    public int f26467i;

    /* renamed from: j */
    public int f26468j;

    /* renamed from: k */
    public boolean f26469k;

    /* renamed from: l */
    public int f26470l;

    /* renamed from: m */
    public byte[] f26471m = C5979lc.f27169f;

    /* renamed from: n */
    public int f26472n;

    /* renamed from: o */
    public long f26473o;

    @Override // p168r4.jy1, p168r4.ja1
    /* renamed from: d */
    public final boolean mo10010d() {
        return super.mo10010d() && this.f26472n == 0;
    }

    @Override // p168r4.jy1
    /* renamed from: l */
    public final void mo10009l() {
        int i;
        if (this.f26469k) {
            if (this.f26472n > 0) {
                this.f26473o += i / this.f26176b.f24510d;
            }
            this.f26472n = 0;
        }
    }

    @Override // p168r4.jy1
    /* renamed from: m */
    public final void mo9824m() {
        if (this.f26469k) {
            this.f26469k = false;
            int i = this.f26468j;
            int i2 = this.f26176b.f24510d;
            this.f26471m = new byte[i * i2];
            this.f26470l = this.f26467i * i2;
        }
        this.f26472n = 0;
    }

    @Override // p168r4.jy1
    /* renamed from: n */
    public final void mo9823n() {
        this.f26471m = C5979lc.f27169f;
    }

    /* renamed from: o */
    public final void m10008o(int i, int i2) {
        this.f26467i = i;
        this.f26468j = i2;
    }

    /* renamed from: p */
    public final void m10007p() {
        this.f26473o = 0L;
    }

    /* renamed from: q */
    public final long m10006q() {
        return this.f26473o;
    }

    @Override // p168r4.jy1
    /* renamed from: k */
    public final h81 mo9825k(h81 h81Var) {
        if (h81Var.f24509c == 2) {
            this.f26469k = true;
            if (this.f26467i == 0 && this.f26468j == 0) {
                return h81.f24506e;
            }
            return h81Var;
        }
        throw new i91(h81Var);
    }

    @Override // p168r4.jy1, p168r4.ja1
    /* renamed from: c */
    public final ByteBuffer mo10011c() {
        int i;
        if (super.mo10010d() && (i = this.f26472n) > 0) {
            m10152i(i).put(this.f26471m, 0, this.f26472n).flip();
            this.f26472n = 0;
        }
        return super.mo10011c();
    }

    @Override // p168r4.ja1
    /* renamed from: h */
    public final void mo9826h(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i == 0) {
            return;
        }
        int min = Math.min(i, this.f26470l);
        this.f26473o += min / this.f26176b.f24510d;
        this.f26470l -= min;
        byteBuffer.position(position + min);
        if (this.f26470l > 0) {
            return;
        }
        int i2 = i - min;
        int length = (this.f26472n + i2) - this.f26471m.length;
        ByteBuffer m10152i = m10152i(length);
        int m9705c0 = C5979lc.m9705c0(length, 0, this.f26472n);
        m10152i.put(this.f26471m, 0, m9705c0);
        int m9705c02 = C5979lc.m9705c0(length - m9705c0, 0, i2);
        byteBuffer.limit(byteBuffer.position() + m9705c02);
        m10152i.put(byteBuffer);
        byteBuffer.limit(limit);
        int i3 = i2 - m9705c02;
        int i4 = this.f26472n - m9705c0;
        this.f26472n = i4;
        byte[] bArr = this.f26471m;
        System.arraycopy(bArr, m9705c0, bArr, 0, i4);
        byteBuffer.get(this.f26471m, this.f26472n, i3);
        this.f26472n += i3;
        m10152i.flip();
    }
}
