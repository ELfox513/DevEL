package p168r4;

import java.io.IOException;
import p168r4.lm3;
import p168r4.pm3;
/* renamed from: r4.lm3 */
/* loaded from: classes2.dex */
public class lm3<MessageType extends pm3<MessageType, BuilderType>, BuilderType extends lm3<MessageType, BuilderType>> extends tk3<MessageType, BuilderType> {

    /* renamed from: a */
    public final MessageType f27266a;

    /* renamed from: b */
    public MessageType f27267b;

    /* renamed from: d */
    public boolean f27268d = false;

    public lm3(MessageType messagetype) {
        this.f27266a = messagetype;
        this.f27267b = (MessageType) messagetype.mo4087B(4, null, null);
    }

    @Override // p168r4.bo3
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ ao3 mo8265f() {
        return this.f27266a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.tk3
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ tk3 mo6794h(uk3 uk3Var) {
        m9613p((pm3) uk3Var);
        return this;
    }

    /* renamed from: j */
    public void m9617j() {
        MessageType messagetype = (MessageType) this.f27267b.mo4087B(4, null, null);
        m9618i(messagetype, this.f27267b);
        this.f27267b = messagetype;
    }

    /* renamed from: l */
    public final BuilderType clone() {
        BuilderType buildertype = (BuilderType) this.f27266a.mo4087B(5, null, null);
        buildertype.m9613p(mo4160H());
        return buildertype;
    }

    @Override // p168r4.zn3
    /* renamed from: n */
    public MessageType mo4160H() {
        if (this.f27268d) {
            return this.f27267b;
        }
        MessageType messagetype = this.f27267b;
        io3.m10585a().m10584b(messagetype.getClass()).mo7409e(messagetype);
        this.f27268d = true;
        return this.f27267b;
    }

    /* renamed from: p */
    public final BuilderType m9613p(MessageType messagetype) {
        if (this.f27268d) {
            m9617j();
            this.f27268d = false;
        }
        m9618i(this.f27267b, messagetype);
        return this;
    }

    /* renamed from: u */
    public final BuilderType m9612u(byte[] bArr, int i, int i2, bm3 bm3Var) {
        if (this.f27268d) {
            m9617j();
            this.f27268d = false;
        }
        try {
            io3.m10585a().m10584b(this.f27267b.getClass()).mo7406h(this.f27267b, bArr, 0, i2, new xk3(bm3Var));
            return this;
        } catch (IndexOutOfBoundsException unused) {
            throw bn3.m12740d();
        } catch (bn3 e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        }
    }

    /* renamed from: i */
    public static final void m9618i(MessageType messagetype, MessageType messagetype2) {
        io3.m10585a().m10584b(messagetype.getClass()).mo7407g(messagetype, messagetype2);
    }

    /* renamed from: o */
    public final MessageType m9614o() {
        MessageType mo4160H = mo4160H();
        if (mo4160H.m8251w()) {
            return mo4160H;
        }
        throw new gp3(mo4160H);
    }
}
