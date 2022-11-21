package p168r4;

import java.util.regex.Pattern;
/* renamed from: r4.w93 */
/* loaded from: classes2.dex */
public final /* synthetic */ class w93 implements ij3 {

    /* renamed from: a */
    public static final ij3 f33143a = new w93();

    @Override // p168r4.ij3
    /* renamed from: a */
    public final int mo5428a(Object obj) {
        Pattern pattern = nk3.f28315a;
        String str = ((e33) obj).f22777a;
        if (!str.startsWith("OMX.google") && !str.startsWith("c2.android")) {
            if (C5979lc.f27164a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                return 0;
            }
            return -1;
        }
        return 1;
    }
}
