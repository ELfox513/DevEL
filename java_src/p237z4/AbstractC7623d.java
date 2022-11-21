package p237z4;

import p237z4.AbstractC7618c;
import p237z4.AbstractC7623d;
/* renamed from: z4.d */
/* loaded from: classes2.dex */
public abstract class AbstractC7623d<MessageType extends AbstractC7618c<MessageType, BuilderType>, BuilderType extends AbstractC7623d<MessageType, BuilderType>> implements InterfaceC7708s1 {
    /* renamed from: j */
    public abstract BuilderType mo654j(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p237z4.InterfaceC7708s1
    /* renamed from: e */
    public final /* synthetic */ InterfaceC7708s1 mo598e(InterfaceC7703r1 interfaceC7703r1) {
        if (mo590f().getClass().isInstance(interfaceC7703r1)) {
            return mo654j((AbstractC7618c) interfaceC7703r1);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
