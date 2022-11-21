package p168r4;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
@TargetApi(21)
/* renamed from: r4.th */
/* loaded from: classes2.dex */
public final class C6281th implements InterfaceC6207rh {

    /* renamed from: a */
    public final int f31860a;

    /* renamed from: b */
    public MediaCodecInfo[] f31861b;

    public C6281th(boolean z) {
        this.f31860a = z ? 1 : 0;
    }

    @Override // p168r4.InterfaceC6207rh
    /* renamed from: a */
    public final boolean mo6812a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        boolean isFeatureSupported;
        isFeatureSupported = codecCapabilities.isFeatureSupported("secure-playback");
        return isFeatureSupported;
    }

    @Override // p168r4.InterfaceC6207rh
    /* renamed from: b */
    public final boolean mo6811b() {
        return true;
    }

    /* renamed from: c */
    public final void m6810c() {
        MediaCodecInfo[] codecInfos;
        if (this.f31861b == null) {
            codecInfos = new MediaCodecList(this.f31860a).getCodecInfos();
            this.f31861b = codecInfos;
        }
    }

    @Override // p168r4.InterfaceC6207rh
    /* renamed from: x */
    public final MediaCodecInfo mo6809x(int i) {
        m6810c();
        return this.f31861b[i];
    }

    @Override // p168r4.InterfaceC6207rh
    public final int zza() {
        m6810c();
        return this.f31861b.length;
    }
}
