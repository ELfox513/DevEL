package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.ia4 */
/* loaded from: classes2.dex */
public final class ia4 extends br3 {

    /* renamed from: v */
    public ByteBuffer f25023v;

    public ia4(String str) {
        super(str);
    }

    @Override // p168r4.br3
    /* renamed from: d */
    public final void mo10695d(ByteBuffer byteBuffer) {
        this.f25023v = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
