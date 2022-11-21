package p168r4;

import android.media.MediaCodec;
/* renamed from: r4.e1 */
/* loaded from: classes2.dex */
public final class C5709e1 {

    /* renamed from: a */
    public byte[] f22716a;

    /* renamed from: b */
    public byte[] f22717b;

    /* renamed from: c */
    public int[] f22718c;

    /* renamed from: d */
    public int[] f22719d;

    /* renamed from: e */
    public final MediaCodec.CryptoInfo f22720e;

    /* renamed from: f */
    public final C5671d0 f22721f;

    /* renamed from: b */
    public final MediaCodec.CryptoInfo m11883b() {
        return this.f22720e;
    }

    /* renamed from: a */
    public final void m11884a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.f22718c = iArr;
        this.f22719d = iArr2;
        this.f22717b = bArr;
        this.f22716a = bArr2;
        MediaCodec.CryptoInfo cryptoInfo = this.f22720e;
        cryptoInfo.numSubSamples = i;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i2;
        if (C5979lc.f27164a >= 24) {
            C5671d0 c5671d0 = this.f22721f;
            c5671d0.getClass();
            C5671d0.m12249a(c5671d0, i3, i4);
        }
    }

    /* renamed from: c */
    public final void m11882c(int i) {
        if (i == 0) {
            return;
        }
        if (this.f22718c == null) {
            int[] iArr = new int[1];
            this.f22718c = iArr;
            this.f22720e.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f22718c;
        iArr2[0] = iArr2[0] + i;
    }

    public C5709e1() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f22720e = cryptoInfo;
        this.f22721f = C5979lc.f27164a >= 24 ? new C5671d0(cryptoInfo, null) : null;
    }
}
