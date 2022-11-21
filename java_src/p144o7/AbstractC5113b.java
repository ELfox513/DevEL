package p144o7;

import p144o7.InterfaceC5210s0;
/* renamed from: o7.b */
/* loaded from: classes2.dex */
public abstract class AbstractC5113b<MessageType extends InterfaceC5210s0> implements InterfaceC5112a1<MessageType> {

    /* renamed from: a */
    public static final C5196p f19368a = C5196p.m14163b();

    @Override // p144o7.InterfaceC5112a1
    /* renamed from: e */
    public MessageType mo14646a(AbstractC5137h abstractC5137h, C5196p c5196p) {
        return m14645c(m14642f(abstractC5137h, c5196p));
    }

    /* renamed from: c */
    public final MessageType m14645c(MessageType messagetype) {
        if (messagetype != null && !messagetype.mo13798a()) {
            throw m14644d(messagetype).m14180a().m14630i(messagetype);
        }
        return messagetype;
    }

    /* renamed from: d */
    public final C5192n1 m14644d(MessageType messagetype) {
        if (messagetype instanceof AbstractC5100a) {
            return ((AbstractC5100a) messagetype).m14665m();
        }
        return new C5192n1(messagetype);
    }

    /* renamed from: f */
    public MessageType m14642f(AbstractC5137h abstractC5137h, C5196p c5196p) {
        try {
            AbstractC5151i mo14533t = abstractC5137h.mo14533t();
            MessageType messagetype = (MessageType) mo13778b(mo14533t, c5196p);
            try {
                mo14533t.mo14508a(0);
                return messagetype;
            } catch (C5117c0 e) {
                throw e.m14630i(messagetype);
            }
        } catch (C5117c0 e2) {
            throw e2;
        }
    }
}
