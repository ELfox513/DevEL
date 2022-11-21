package p168r4;

import android.text.TextUtils;
import com.prineside.tdi2.Config;
import java.util.Map;
import p235z2.C7601t;
/* renamed from: r4.eq0 */
/* loaded from: classes2.dex */
public final class eq0 implements u50<po0> {
    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(po0 po0Var, Map map) {
        float parseFloat;
        po0 po0Var2 = po0Var;
        at0 mo5084f = po0Var2.mo5084f();
        if (mo5084f == null) {
            try {
                at0 at0Var = new at0(po0Var2, Float.parseFloat((String) map.get("duration")), Config.SITE_API_VERSION.equals(map.get("customControlsAllowed")), Config.SITE_API_VERSION.equals(map.get("clickToExpandAllowed")));
                po0Var2.mo5121K(at0Var);
                mo5084f = at0Var;
            } catch (NullPointerException e) {
                e = e;
                cm0.m12439d("Unable to parse videoMeta message.", e);
                C7601t.m935h().m9056k(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            } catch (NumberFormatException e2) {
                e = e2;
                cm0.m12439d("Unable to parse videoMeta message.", e);
                C7601t.m935h().m9056k(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float parseFloat2 = Float.parseFloat((String) map.get("duration"));
        boolean equals = Config.SITE_API_VERSION.equals(map.get("muted"));
        float parseFloat3 = Float.parseFloat((String) map.get("currentTime"));
        int parseInt = Integer.parseInt((String) map.get("playbackState"));
        int i = 0;
        if (parseInt >= 0 && parseInt <= 3) {
            i = parseInt;
        }
        String str = (String) map.get("aspectRatio");
        if (TextUtils.isEmpty(str)) {
            parseFloat = 0.0f;
        } else {
            parseFloat = Float.parseFloat(str);
        }
        if (cm0.m12433j(3)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 140);
            sb.append("Video Meta GMSG: currentTime : ");
            sb.append(parseFloat3);
            sb.append(" , duration : ");
            sb.append(parseFloat2);
            sb.append(" , isMuted : ");
            sb.append(equals);
            sb.append(" , playbackState : ");
            sb.append(i);
            sb.append(" , aspectRatio : ");
            sb.append(str);
            cm0.m12442a(sb.toString());
        }
        mo5084f.m12946i7(parseFloat3, parseFloat2, i, equals, parseFloat);
    }
}
