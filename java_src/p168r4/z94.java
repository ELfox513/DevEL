package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.z94 */
/* loaded from: classes2.dex */
public final class z94 extends ThreadLocal<ByteBuffer> {
    public z94(aa4 aa4Var) {
    }

    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ ByteBuffer initialValue() {
        return ByteBuffer.allocate(32);
    }
}
