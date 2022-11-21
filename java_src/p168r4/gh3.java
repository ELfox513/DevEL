package p168r4;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* renamed from: r4.gh3 */
/* loaded from: classes2.dex */
public final class gh3 implements bf3 {

    /* renamed from: a */
    public final int f24096a;

    /* renamed from: b */
    public MediaCodecInfo[] f24097b;

    public gh3(boolean z, boolean z2) {
        int i = 1;
        if (!z && !z2) {
            i = 0;
        }
        this.f24096a = i;
    }

    @Override // p168r4.bf3
    /* renamed from: a */
    public final boolean mo11153a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        boolean isFeatureSupported;
        isFeatureSupported = codecCapabilities.isFeatureSupported(str);
        return isFeatureSupported;
    }

    @Override // p168r4.bf3
    /* renamed from: b */
    public final boolean mo11152b() {
        return true;
    }

    @Override // p168r4.bf3
    /* renamed from: c */
    public final boolean mo11151c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        boolean isFeatureRequired;
        isFeatureRequired = codecCapabilities.isFeatureRequired(str);
        return isFeatureRequired;
    }

    /* renamed from: d */
    public final void m11150d() {
        MediaCodecInfo[] codecInfos;
        if (this.f24097b == null) {
            codecInfos = new MediaCodecList(this.f24096a).getCodecInfos();
            this.f24097b = codecInfos;
        }
    }

    @Override // p168r4.bf3
    /* renamed from: x */
    public final MediaCodecInfo mo11149x(int i) {
        m11150d();
        return this.f24097b[i];
    }

    @Override // p168r4.bf3
    public final int zza() {
        m11150d();
        return this.f24097b.length;
    }
}
