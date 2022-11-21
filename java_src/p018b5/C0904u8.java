package p018b5;

import java.io.IOException;
import p018b5.AbstractC0955x8;
import p018b5.C0904u8;
/* renamed from: b5.u8 */
/* loaded from: classes2.dex */
public class C0904u8<MessageType extends AbstractC0955x8<MessageType, BuilderType>, BuilderType extends C0904u8<MessageType, BuilderType>> extends AbstractC0631e7<MessageType, BuilderType> {

    /* renamed from: a */
    public final MessageType f2336a;

    /* renamed from: b */
    public MessageType f2337b;

    /* renamed from: d */
    public boolean f2338d = false;

    public C0904u8(MessageType messagetype) {
        this.f2336a = messagetype;
        this.f2337b = (MessageType) messagetype.mo24877r(4, null, null);
    }

    @Override // p018b5.InterfaceC0651fa
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ InterfaceC0634ea mo24987a() {
        return this.f2336a;
    }

    @Override // p018b5.AbstractC0631e7
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC0631e7 mo25104c(byte[] bArr, int i, int i2) {
        m25095p(bArr, 0, i2, C0734k8.m25701a());
        return this;
    }

    @Override // p018b5.AbstractC0631e7
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ AbstractC0631e7 mo25103f(byte[] bArr, int i, int i2, C0734k8 c0734k8) {
        m25095p(bArr, 0, i2, c0734k8);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p018b5.AbstractC0631e7
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ AbstractC0631e7 mo25105b(AbstractC0648f7 abstractC0648f7) {
        m25096o((AbstractC0955x8) abstractC0648f7);
        return this;
    }

    @Override // p018b5.InterfaceC0617da
    /* renamed from: j */
    public MessageType mo25098m() {
        if (this.f2338d) {
            return this.f2337b;
        }
        MessageType messagetype = this.f2337b;
        C0770ma.m25655a().m25654b(messagetype.getClass()).mo25493d(messagetype);
        this.f2338d = true;
        return this.f2337b;
    }

    /* renamed from: l */
    public void m25099l() {
        MessageType messagetype = (MessageType) this.f2337b.mo24877r(4, null, null);
        m25102h(messagetype, this.f2337b);
        this.f2337b = messagetype;
    }

    /* renamed from: n */
    public final BuilderType clone() {
        BuilderType buildertype = (BuilderType) this.f2336a.mo24877r(5, null, null);
        buildertype.m25096o(mo25098m());
        return buildertype;
    }

    /* renamed from: o */
    public final BuilderType m25096o(MessageType messagetype) {
        if (this.f2338d) {
            m25099l();
            this.f2338d = false;
        }
        m25102h(this.f2337b, messagetype);
        return this;
    }

    /* renamed from: p */
    public final BuilderType m25095p(byte[] bArr, int i, int i2, C0734k8 c0734k8) {
        if (this.f2338d) {
            m25099l();
            this.f2338d = false;
        }
        try {
            C0770ma.m25655a().m25654b(this.f2337b.getClass()).mo25490g(this.f2337b, bArr, 0, i2, new C0699i7(c0734k8));
            return this;
        } catch (C0684h9 e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException unused) {
            throw C0684h9.m25860f();
        }
    }

    /* renamed from: h */
    public static final void m25102h(MessageType messagetype, MessageType messagetype2) {
        C0770ma.m25655a().m25654b(messagetype.getClass()).mo25491f(messagetype, messagetype2);
    }

    /* renamed from: i */
    public final MessageType m25101i() {
        Object obj;
        MessageType mo25098m = mo25098m();
        boolean z = true;
        byte byteValue = ((Byte) mo25098m.mo24877r(1, null, null)).byteValue();
        if (byteValue != 1) {
            if (byteValue == 0) {
                z = false;
            } else {
                boolean mo25492e = C0770ma.m25655a().m25654b(mo25098m.getClass()).mo25492e(mo25098m);
                if (true != mo25492e) {
                    obj = null;
                } else {
                    obj = mo25098m;
                }
                mo25098m.mo24877r(2, obj, null);
                z = mo25492e;
            }
        }
        if (z) {
            return mo25098m;
        }
        throw new C0669gb(mo25098m);
    }
}
