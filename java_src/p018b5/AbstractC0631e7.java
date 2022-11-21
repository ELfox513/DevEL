package p018b5;

import p018b5.AbstractC0631e7;
import p018b5.AbstractC0648f7;
/* renamed from: b5.e7 */
/* loaded from: classes2.dex */
public abstract class AbstractC0631e7<MessageType extends AbstractC0648f7<MessageType, BuilderType>, BuilderType extends AbstractC0631e7<MessageType, BuilderType>> implements InterfaceC0617da {
    @Override // p018b5.InterfaceC0617da
    /* renamed from: M */
    public final /* bridge */ /* synthetic */ InterfaceC0617da mo26025M(byte[] bArr) {
        return mo25104c(bArr, 0, bArr.length);
    }

    @Override // p018b5.InterfaceC0617da
    /* renamed from: N */
    public final /* bridge */ /* synthetic */ InterfaceC0617da mo26024N(byte[] bArr, C0734k8 c0734k8) {
        return mo25103f(bArr, 0, bArr.length, c0734k8);
    }

    /* renamed from: b */
    public abstract BuilderType mo25105b(MessageType messagetype);

    /* renamed from: c */
    public abstract BuilderType mo25104c(byte[] bArr, int i, int i2);

    /* renamed from: f */
    public abstract BuilderType mo25103f(byte[] bArr, int i, int i2, C0734k8 c0734k8);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p018b5.InterfaceC0617da
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ InterfaceC0617da mo26023y(InterfaceC0634ea interfaceC0634ea) {
        if (mo24987a().getClass().isInstance(interfaceC0634ea)) {
            return mo25105b((AbstractC0648f7) interfaceC0634ea);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
