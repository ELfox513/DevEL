package p168r4;

import android.annotation.TargetApi;
import android.media.MediaCodec;
/* renamed from: r4.ff */
/* loaded from: classes2.dex */
public final class C5761ff {

    /* renamed from: a */
    public byte[] f23466a;

    /* renamed from: b */
    public byte[] f23467b;

    /* renamed from: c */
    public int f23468c;

    /* renamed from: d */
    public int[] f23469d;

    /* renamed from: e */
    public int[] f23470e;

    /* renamed from: f */
    public int f23471f;

    /* renamed from: g */
    public final MediaCodec.CryptoInfo f23472g;

    /* renamed from: h */
    public final C5724ef f23473h;

    @TargetApi(16)
    /* renamed from: b */
    public final MediaCodec.CryptoInfo m11548b() {
        return this.f23472g;
    }

    /* renamed from: a */
    public final void m11549a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.f23471f = i;
        this.f23469d = iArr;
        this.f23470e = iArr2;
        this.f23467b = bArr;
        this.f23466a = bArr2;
        this.f23468c = 1;
        int i3 = C5988ll.f27242a;
        if (i3 >= 16) {
            MediaCodec.CryptoInfo cryptoInfo = this.f23472g;
            cryptoInfo.numSubSamples = i;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr;
            cryptoInfo.iv = bArr2;
            cryptoInfo.mode = 1;
            if (i3 >= 24) {
                C5724ef.m11799a(this.f23473h, 0, 0);
            }
        }
    }

    public C5761ff() {
        MediaCodec.CryptoInfo cryptoInfo;
        int i = C5988ll.f27242a;
        if (i >= 16) {
            cryptoInfo = new MediaCodec.CryptoInfo();
        } else {
            cryptoInfo = null;
        }
        this.f23472g = cryptoInfo;
        this.f23473h = i >= 24 ? new C5724ef(cryptoInfo, null) : null;
    }
}
