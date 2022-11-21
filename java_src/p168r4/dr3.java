package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.dr3 */
/* loaded from: classes2.dex */
public abstract class dr3 extends br3 {

    /* renamed from: v */
    public int f22414v;

    public dr3(String str) {
        super("mvhd");
    }

    /* renamed from: g */
    public final int m11985g() {
        if (!this.f21194d) {
            m12707f();
        }
        return this.f22414v;
    }

    /* renamed from: h */
    public final long m11984h(ByteBuffer byteBuffer) {
        this.f22414v = da4.m12182c(byteBuffer.get());
        da4.m12183b(byteBuffer);
        byteBuffer.get();
        return 4L;
    }
}
