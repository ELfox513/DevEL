package p168r4;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* renamed from: r4.eg3 */
/* loaded from: classes2.dex */
public final class eg3 implements bf3 {
    public /* synthetic */ eg3(hi3 hi3Var) {
    }

    @Override // p168r4.bf3
    /* renamed from: b */
    public final boolean mo11152b() {
        return false;
    }

    @Override // p168r4.bf3
    /* renamed from: c */
    public final boolean mo11151c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }

    @Override // p168r4.bf3
    /* renamed from: x */
    public final MediaCodecInfo mo11149x(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // p168r4.bf3
    public final int zza() {
        return MediaCodecList.getCodecCount();
    }

    @Override // p168r4.bf3
    /* renamed from: a */
    public final boolean mo11153a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if ("secure-playback".equals(str) && "video/avc".equals(str2)) {
            return true;
        }
        return false;
    }
}
