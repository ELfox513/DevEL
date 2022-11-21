package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.nio.ByteBuffer;
import java.util.Date;
/* renamed from: r4.ha4 */
/* loaded from: classes2.dex */
public final class ha4 extends dr3 {

    /* renamed from: A */
    public double f24532A;

    /* renamed from: B */
    public float f24533B;

    /* renamed from: C */
    public nr3 f24534C;

    /* renamed from: D */
    public long f24535D;

    /* renamed from: w */
    public Date f24536w;

    /* renamed from: x */
    public Date f24537x;

    /* renamed from: y */
    public long f24538y;

    /* renamed from: z */
    public long f24539z;

    public ha4() {
        super("mvhd");
        this.f24532A = 1.0d;
        this.f24533B = 1.0f;
        this.f24534C = nr3.f28457j;
    }

    /* renamed from: i */
    public final long m10954i() {
        return this.f24538y;
    }

    /* renamed from: j */
    public final long m10953j() {
        return this.f24539z;
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.f24536w + ";modificationTime=" + this.f24537x + ";timescale=" + this.f24538y + ";duration=" + this.f24539z + ";rate=" + this.f24532A + ";volume=" + this.f24533B + ";matrix=" + this.f24534C + ";nextTrackId=" + this.f24535D + "]";
    }

    @Override // p168r4.br3
    /* renamed from: d */
    public final void mo10695d(ByteBuffer byteBuffer) {
        m11984h(byteBuffer);
        if (m11985g() == 1) {
            this.f24536w = ir3.m10553a(da4.m12181d(byteBuffer));
            this.f24537x = ir3.m10553a(da4.m12181d(byteBuffer));
            this.f24538y = da4.m12184a(byteBuffer);
            this.f24539z = da4.m12181d(byteBuffer);
        } else {
            this.f24536w = ir3.m10553a(da4.m12184a(byteBuffer));
            this.f24537x = ir3.m10553a(da4.m12184a(byteBuffer));
            this.f24538y = da4.m12184a(byteBuffer);
            this.f24539z = da4.m12184a(byteBuffer);
        }
        this.f24532A = da4.m12180e(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.f24533B = ((short) ((bArr[1] & DefaultClassResolver.NAME) | ((short) ((bArr[0] << 8) & 65280)))) / 256.0f;
        da4.m12183b(byteBuffer);
        da4.m12184a(byteBuffer);
        da4.m12184a(byteBuffer);
        this.f24534C = nr3.m9001a(byteBuffer);
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.f24535D = da4.m12184a(byteBuffer);
    }
}
