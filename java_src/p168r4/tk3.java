package p168r4;

import p168r4.tk3;
import p168r4.uk3;
/* renamed from: r4.tk3 */
/* loaded from: classes2.dex */
public abstract class tk3<MessageType extends uk3<MessageType, BuilderType>, BuilderType extends tk3<MessageType, BuilderType>> implements zn3 {
    /* renamed from: h */
    public abstract BuilderType mo6794h(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.zn3
    /* renamed from: q */
    public final /* bridge */ /* synthetic */ zn3 mo4159q(ao3 ao3Var) {
        if (mo8265f().getClass().isInstance(ao3Var)) {
            return mo6794h((uk3) ao3Var);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
