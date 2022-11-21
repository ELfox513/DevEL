package p168r4;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: r4.jy1 */
/* loaded from: classes2.dex */
public abstract class jy1 implements ja1 {

    /* renamed from: b */
    public h81 f26176b;

    /* renamed from: c */
    public h81 f26177c;

    /* renamed from: d */
    public h81 f26178d;

    /* renamed from: e */
    public h81 f26179e;

    /* renamed from: f */
    public ByteBuffer f26180f;

    /* renamed from: g */
    public ByteBuffer f26181g;

    /* renamed from: h */
    public boolean f26182h;

    public jy1() {
        ByteBuffer byteBuffer = ja1.f25974a;
        this.f26180f = byteBuffer;
        this.f26181g = byteBuffer;
        h81 h81Var = h81.f24506e;
        this.f26178d = h81Var;
        this.f26179e = h81Var;
        this.f26176b = h81Var;
        this.f26177c = h81Var;
    }

    @Override // p168r4.ja1
    /* renamed from: a */
    public boolean mo10157a() {
        return this.f26179e != h81.f24506e;
    }

    @Override // p168r4.ja1
    /* renamed from: c */
    public ByteBuffer mo10011c() {
        ByteBuffer byteBuffer = this.f26181g;
        this.f26181g = ja1.f25974a;
        return byteBuffer;
    }

    @Override // p168r4.ja1
    /* renamed from: d */
    public boolean mo10010d() {
        return this.f26182h && this.f26181g == ja1.f25974a;
    }

    @Override // p168r4.ja1
    /* renamed from: e */
    public final void mo10155e() {
        this.f26182h = true;
        mo10009l();
    }

    @Override // p168r4.ja1
    /* renamed from: g */
    public final void mo10153g() {
        this.f26181g = ja1.f25974a;
        this.f26182h = false;
        this.f26176b = this.f26178d;
        this.f26177c = this.f26179e;
        mo9824m();
    }

    /* renamed from: j */
    public final boolean m10151j() {
        return this.f26181g.hasRemaining();
    }

    /* renamed from: k */
    public abstract h81 mo9825k(h81 h81Var);

    /* renamed from: l */
    public void mo10009l() {
    }

    /* renamed from: m */
    public void mo9824m() {
    }

    /* renamed from: n */
    public void mo9823n() {
    }

    @Override // p168r4.ja1
    /* renamed from: b */
    public final h81 mo10156b(h81 h81Var) {
        this.f26178d = h81Var;
        this.f26179e = mo9825k(h81Var);
        if (mo10157a()) {
            return this.f26179e;
        }
        return h81.f24506e;
    }

    /* renamed from: i */
    public final ByteBuffer m10152i(int i) {
        if (this.f26180f.capacity() < i) {
            this.f26180f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f26180f.clear();
        }
        ByteBuffer byteBuffer = this.f26180f;
        this.f26181g = byteBuffer;
        return byteBuffer;
    }

    @Override // p168r4.ja1
    /* renamed from: f */
    public final void mo10154f() {
        mo10153g();
        this.f26180f = ja1.f25974a;
        h81 h81Var = h81.f24506e;
        this.f26178d = h81Var;
        this.f26179e = h81Var;
        this.f26176b = h81Var;
        this.f26177c = h81Var;
        mo9823n();
    }
}
