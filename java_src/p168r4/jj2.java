package p168r4;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* renamed from: r4.jj2 */
/* loaded from: classes2.dex */
public final class jj2 implements ja1 {

    /* renamed from: b */
    public int f26040b;

    /* renamed from: c */
    public float f26041c = 1.0f;

    /* renamed from: d */
    public float f26042d = 1.0f;

    /* renamed from: e */
    public h81 f26043e;

    /* renamed from: f */
    public h81 f26044f;

    /* renamed from: g */
    public h81 f26045g;

    /* renamed from: h */
    public h81 f26046h;

    /* renamed from: i */
    public boolean f26047i;

    /* renamed from: j */
    public ii2 f26048j;

    /* renamed from: k */
    public ByteBuffer f26049k;

    /* renamed from: l */
    public ShortBuffer f26050l;

    /* renamed from: m */
    public ByteBuffer f26051m;

    /* renamed from: n */
    public long f26052n;

    /* renamed from: o */
    public long f26053o;

    /* renamed from: p */
    public boolean f26054p;

    @Override // p168r4.ja1
    /* renamed from: d */
    public final boolean mo10010d() {
        ii2 ii2Var;
        return this.f26054p && ((ii2Var = this.f26048j) == null || ii2Var.m10644f() == 0);
    }

    @Override // p168r4.ja1
    /* renamed from: e */
    public final void mo10155e() {
        ii2 ii2Var = this.f26048j;
        if (ii2Var != null) {
            ii2Var.m10646d();
        }
        this.f26054p = true;
    }

    /* renamed from: i */
    public final void m10266i(float f) {
        if (this.f26041c != f) {
            this.f26041c = f;
            this.f26047i = true;
        }
    }

    /* renamed from: j */
    public final void m10265j(float f) {
        if (this.f26042d != f) {
            this.f26042d = f;
            this.f26047i = true;
        }
    }

    /* renamed from: k */
    public final long m10264k(long j) {
        ii2 ii2Var;
        if (this.f26053o >= 1024) {
            long j2 = this.f26052n;
            this.f26048j.getClass();
            long m10649a = j2 - ii2Var.m10649a();
            int i = this.f26046h.f24507a;
            int i2 = this.f26045g.f24507a;
            if (i == i2) {
                return C5979lc.m9698h(j, m10649a, this.f26053o);
            }
            return C5979lc.m9698h(j, m10649a * i, this.f26053o * i2);
        }
        double d = this.f26041c;
        double d2 = j;
        Double.isNaN(d);
        Double.isNaN(d2);
        return (long) (d * d2);
    }

    @Override // p168r4.ja1
    /* renamed from: a */
    public final boolean mo10157a() {
        if (this.f26044f.f24507a == -1) {
            return false;
        }
        if (Math.abs(this.f26041c - 1.0f) < 1.0E-4f && Math.abs(this.f26042d - 1.0f) < 1.0E-4f && this.f26044f.f24507a == this.f26043e.f24507a) {
            return false;
        }
        return true;
    }

    @Override // p168r4.ja1
    /* renamed from: b */
    public final h81 mo10156b(h81 h81Var) {
        if (h81Var.f24509c == 2) {
            int i = this.f26040b;
            if (i == -1) {
                i = h81Var.f24507a;
            }
            this.f26043e = h81Var;
            h81 h81Var2 = new h81(i, h81Var.f24508b, 2);
            this.f26044f = h81Var2;
            this.f26047i = true;
            return h81Var2;
        }
        throw new i91(h81Var);
    }

    @Override // p168r4.ja1
    /* renamed from: c */
    public final ByteBuffer mo10011c() {
        int m10644f;
        ii2 ii2Var = this.f26048j;
        if (ii2Var != null && (m10644f = ii2Var.m10644f()) > 0) {
            if (this.f26049k.capacity() < m10644f) {
                ByteBuffer order = ByteBuffer.allocateDirect(m10644f).order(ByteOrder.nativeOrder());
                this.f26049k = order;
                this.f26050l = order.asShortBuffer();
            } else {
                this.f26049k.clear();
                this.f26050l.clear();
            }
            ii2Var.m10647c(this.f26050l);
            this.f26053o += m10644f;
            this.f26049k.limit(m10644f);
            this.f26051m = this.f26049k;
        }
        ByteBuffer byteBuffer = this.f26051m;
        this.f26051m = ja1.f25974a;
        return byteBuffer;
    }

    @Override // p168r4.ja1
    /* renamed from: f */
    public final void mo10154f() {
        this.f26041c = 1.0f;
        this.f26042d = 1.0f;
        h81 h81Var = h81.f24506e;
        this.f26043e = h81Var;
        this.f26044f = h81Var;
        this.f26045g = h81Var;
        this.f26046h = h81Var;
        ByteBuffer byteBuffer = ja1.f25974a;
        this.f26049k = byteBuffer;
        this.f26050l = byteBuffer.asShortBuffer();
        this.f26051m = byteBuffer;
        this.f26040b = -1;
        this.f26047i = false;
        this.f26048j = null;
        this.f26052n = 0L;
        this.f26053o = 0L;
        this.f26054p = false;
    }

    public jj2() {
        h81 h81Var = h81.f24506e;
        this.f26043e = h81Var;
        this.f26044f = h81Var;
        this.f26045g = h81Var;
        this.f26046h = h81Var;
        ByteBuffer byteBuffer = ja1.f25974a;
        this.f26049k = byteBuffer;
        this.f26050l = byteBuffer.asShortBuffer();
        this.f26051m = byteBuffer;
        this.f26040b = -1;
    }

    @Override // p168r4.ja1
    /* renamed from: g */
    public final void mo10153g() {
        if (mo10157a()) {
            h81 h81Var = this.f26043e;
            this.f26045g = h81Var;
            h81 h81Var2 = this.f26044f;
            this.f26046h = h81Var2;
            if (this.f26047i) {
                this.f26048j = new ii2(h81Var.f24507a, h81Var.f24508b, this.f26041c, this.f26042d, h81Var2.f24507a);
            } else {
                ii2 ii2Var = this.f26048j;
                if (ii2Var != null) {
                    ii2Var.m10645e();
                }
            }
        }
        this.f26051m = ja1.f25974a;
        this.f26052n = 0L;
        this.f26053o = 0L;
        this.f26054p = false;
    }

    @Override // p168r4.ja1
    /* renamed from: h */
    public final void mo9826h(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        ii2 ii2Var = this.f26048j;
        ii2Var.getClass();
        ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
        int remaining = byteBuffer.remaining();
        this.f26052n += remaining;
        ii2Var.m10648b(asShortBuffer);
        byteBuffer.position(byteBuffer.position() + remaining);
    }
}
