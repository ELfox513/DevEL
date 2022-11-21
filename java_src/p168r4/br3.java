package p168r4;

import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: r4.br3 */
/* loaded from: classes2.dex */
public abstract class br3 implements ea4 {

    /* renamed from: u */
    public static final mr3 f21191u = mr3.m9276b(br3.class);

    /* renamed from: a */
    public final String f21192a;

    /* renamed from: b */
    public fa4 f21193b;

    /* renamed from: p */
    public ByteBuffer f21196p;

    /* renamed from: q */
    public long f21197q;

    /* renamed from: s */
    public gr3 f21199s;

    /* renamed from: r */
    public long f21198r = -1;

    /* renamed from: t */
    public ByteBuffer f21200t = null;

    /* renamed from: k */
    public boolean f21195k = true;

    /* renamed from: d */
    public boolean f21194d = true;

    public br3(String str) {
        this.f21192a = str;
    }

    @Override // p168r4.ea4
    /* renamed from: a */
    public final String mo11836a() {
        return this.f21192a;
    }

    /* renamed from: b */
    public final synchronized void m12708b() {
        String str;
        if (!this.f21195k) {
            try {
                mr3 mr3Var = f21191u;
                String str2 = this.f21192a;
                if (str2.length() != 0) {
                    str = "mem mapping ".concat(str2);
                } else {
                    str = new String("mem mapping ");
                }
                mr3Var.mo9277a(str);
                this.f21196p = this.f21199s.mo4148l(this.f21197q, this.f21198r);
                this.f21195k = true;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override // p168r4.ea4
    /* renamed from: c */
    public final void mo11835c(fa4 fa4Var) {
        this.f21193b = fa4Var;
    }

    /* renamed from: d */
    public abstract void mo10695d(ByteBuffer byteBuffer);

    /* renamed from: f */
    public final synchronized void m12707f() {
        String str;
        m12708b();
        mr3 mr3Var = f21191u;
        String str2 = this.f21192a;
        if (str2.length() != 0) {
            str = "parsing details of ".concat(str2);
        } else {
            str = new String("parsing details of ");
        }
        mr3Var.mo9277a(str);
        ByteBuffer byteBuffer = this.f21196p;
        if (byteBuffer != null) {
            this.f21194d = true;
            byteBuffer.rewind();
            mo10695d(byteBuffer);
            if (byteBuffer.remaining() > 0) {
                this.f21200t = byteBuffer.slice();
            }
            this.f21196p = null;
        }
    }

    @Override // p168r4.ea4
    /* renamed from: e */
    public final void mo11834e(gr3 gr3Var, ByteBuffer byteBuffer, long j, ba4 ba4Var) {
        this.f21197q = gr3Var.mo4149b();
        byteBuffer.remaining();
        this.f21198r = j;
        this.f21199s = gr3Var;
        gr3Var.mo4147x(gr3Var.mo4149b() + j);
        this.f21195k = false;
        this.f21194d = false;
        m12707f();
    }
}
