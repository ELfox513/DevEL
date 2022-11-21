package p168r4;

import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.rq0 */
/* loaded from: classes2.dex */
public final class rq0 implements u50<po0> {
    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(po0 po0Var, Map map) {
        qq0 qq0Var;
        String str;
        hq0 m10562e;
        po0 po0Var2 = po0Var;
        if (cm0.m12433j(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            cm0.m12442a("Precache GMSG: ".concat(jSONObject.toString()));
        }
        iq0 m917z = C7601t.m917z();
        if (map.containsKey("abort")) {
            if (!m917z.m10563d(po0Var2)) {
                cm0.m12437f("Precache abort but no precache task running.");
                return;
            }
            return;
        }
        String str2 = (String) map.get("src");
        Integer m7363b = m7363b(map, "periodicReportIntervalMs");
        Integer m7363b2 = m7363b(map, "exoPlayerRenderingIntervalMs");
        Integer m7363b3 = m7363b(map, "exoPlayerIdleIntervalMs");
        oo0 oo0Var = new oo0((String) map.get("flags"));
        boolean z = oo0Var.f29098n;
        if (str2 != null) {
            String[] strArr = {str2};
            String str3 = (String) map.get("demuxed");
            if (str3 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str3);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i = 0; i < jSONArray.length(); i++) {
                        strArr2[i] = jSONArray.getString(i);
                    }
                    strArr = strArr2;
                } catch (JSONException unused) {
                    if (str3.length() != 0) {
                        str = "Malformed demuxed URL list for precache: ".concat(str3);
                    } else {
                        str = new String("Malformed demuxed URL list for precache: ");
                    }
                    cm0.m12437f(str);
                    strArr = null;
                }
            }
            if (strArr == null) {
                strArr = new String[]{str2};
            }
            if (z) {
                Iterator<hq0> it = m917z.iterator();
                while (true) {
                    if (it.hasNext()) {
                        hq0 next = it.next();
                        if (next.f24794c == po0Var2 && str2.equals(next.m10832d())) {
                            m10562e = next;
                            break;
                        }
                    } else {
                        m10562e = null;
                        break;
                    }
                }
            } else {
                m10562e = m917z.m10562e(po0Var2);
            }
            if (m10562e != null) {
                cm0.m12437f("Precache task is already running.");
                return;
            } else if (po0Var2.mo5075i() == null) {
                cm0.m12437f("Precache requires a dependency provider.");
                return;
            } else {
                Integer m7363b4 = m7363b(map, "player");
                if (m7363b4 == null) {
                    m7363b4 = 0;
                }
                if (m7363b != null) {
                    po0Var2.mo5105T0(m7363b.intValue());
                }
                if (m7363b2 != null) {
                    po0Var2.mo5108S(m7363b2.intValue());
                }
                if (m7363b3 != null) {
                    po0Var2.mo5093b0(m7363b3.intValue());
                }
                int intValue = m7363b4.intValue();
                bq0 bq0Var = po0Var2.mo5075i().f37537c;
                if (intValue > 0) {
                    int m11457Q = fo0.m11457Q();
                    if (m11457Q < oo0Var.f29092h) {
                        qq0Var = new zq0(po0Var2, oo0Var);
                    } else if (m11457Q < oo0Var.f29086b) {
                        qq0Var = new wq0(po0Var2, oo0Var);
                    } else {
                        qq0Var = new uq0(po0Var2);
                    }
                } else {
                    qq0Var = new tq0(po0Var2);
                }
                new hq0(po0Var2, qq0Var, str2, strArr).mo10833c();
            }
        } else {
            hq0 m10562e2 = m917z.m10562e(po0Var2);
            if (m10562e2 != null) {
                qq0Var = m10562e2.f24795d;
            } else {
                cm0.m12437f("Precache must specify a source.");
                return;
            }
        }
        Integer m7363b5 = m7363b(map, "minBufferMs");
        if (m7363b5 != null) {
            qq0Var.mo4108i(m7363b5.intValue());
        }
        Integer m7363b6 = m7363b(map, "maxBufferMs");
        if (m7363b6 != null) {
            qq0Var.mo4109h(m7363b6.intValue());
        }
        Integer m7363b7 = m7363b(map, "bufferForPlaybackMs");
        if (m7363b7 != null) {
            qq0Var.mo4107j(m7363b7.intValue());
        }
        Integer m7363b8 = m7363b(map, "bufferForPlaybackAfterRebufferMs");
        if (m7363b8 != null) {
            qq0Var.mo4106k(m7363b8.intValue());
        }
    }

    /* renamed from: b */
    public static final Integer m7363b(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException unused) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(str.length() + 39 + String.valueOf(str2).length());
            sb.append("Precache invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            cm0.m12437f(sb.toString());
            return null;
        }
    }
}
