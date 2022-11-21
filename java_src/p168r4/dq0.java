package p168r4;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0532t1;
import p016b3.C0543w1;
/* renamed from: r4.dq0 */
/* loaded from: classes2.dex */
public final class dq0 implements u50<po0> {

    /* renamed from: a */
    public boolean f22406a;

    /* renamed from: c */
    public static void m11997c(co0 co0Var, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                co0Var.m12400F(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                cm0.m12437f(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            co0Var.m12399G(Integer.parseInt(str2));
        }
        if (str3 != null) {
            co0Var.m12398H(Integer.parseInt(str3));
        }
        if (str4 != null) {
            co0Var.m12397I(Integer.parseInt(str4));
        }
        if (str5 != null) {
            co0Var.m12396k(Integer.parseInt(str5));
        }
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(po0 po0Var, Map map) {
        int min;
        int min2;
        int i;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String[] split;
        po0 po0Var2 = po0Var;
        String str6 = (String) map.get("action");
        if (str6 == null) {
            cm0.m12437f("Action missing from video GMSG.");
            return;
        }
        if (cm0.m12433j(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            StringBuilder sb = new StringBuilder(str6.length() + 13 + String.valueOf(jSONObject2).length());
            sb.append("Video GMSG: ");
            sb.append(str6);
            sb.append(" ");
            sb.append(jSONObject2);
            cm0.m12442a(sb.toString());
        }
        if ("background".equals(str6)) {
            String str7 = (String) map.get("color");
            if (TextUtils.isEmpty(str7)) {
                cm0.m12437f("Color parameter missing from background video GMSG.");
                return;
            }
            try {
                po0Var2.setBackgroundColor(Color.parseColor(str7));
            } catch (IllegalArgumentException unused) {
                cm0.m12437f("Invalid color parameter in background video GMSG.");
            }
        } else if ("playerBackground".equals(str6)) {
            String str8 = (String) map.get("color");
            if (TextUtils.isEmpty(str8)) {
                cm0.m12437f("Color parameter missing from playerBackground video GMSG.");
                return;
            }
            try {
                po0Var2.mo5086e0(Color.parseColor(str8));
            } catch (IllegalArgumentException unused2) {
                cm0.m12437f("Invalid color parameter in playerBackground video GMSG.");
            }
        } else {
            if ("decoderProps".equals(str6)) {
                String str9 = (String) map.get("mimeTypes");
                if (str9 == null) {
                    cm0.m12437f("No MIME types specified for decoder properties inspection.");
                    HashMap hashMap = new HashMap();
                    hashMap.put("event", "decoderProps");
                    hashMap.put("error", "missingMimeTypes");
                    po0Var2.mo5125H0("onVideoEvent", hashMap);
                    return;
                }
                HashMap hashMap2 = new HashMap();
                for (String str10 : str9.split(",")) {
                    hashMap2.put(str10, C0532t1.m26266a(str10.trim()));
                }
                HashMap hashMap3 = new HashMap();
                hashMap3.put("event", "decoderProps");
                hashMap3.put("mimeTypes", hashMap2);
                po0Var2.mo5125H0("onVideoEvent", hashMap3);
                return;
            }
            do0 mo5088d = po0Var2.mo5088d();
            if (mo5088d == null) {
                cm0.m12437f("Could not get underlay container for a video GMSG.");
                return;
            }
            boolean equals = "new".equals(str6);
            boolean equals2 = "position".equals(str6);
            if (!equals && !equals2) {
                at0 mo5084f = po0Var2.mo5084f();
                if (mo5084f != null) {
                    if ("timeupdate".equals(str6)) {
                        String str11 = (String) map.get("currentTime");
                        if (str11 == null) {
                            cm0.m12437f("currentTime parameter missing from timeupdate video GMSG.");
                            return;
                        }
                        try {
                            mo5084f.m12947h7(Float.parseFloat(str11));
                            return;
                        } catch (NumberFormatException unused3) {
                            if (str11.length() != 0) {
                                str5 = "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(str11);
                            } else {
                                str5 = new String("Could not parse currentTime parameter from timeupdate video GMSG: ");
                            }
                            cm0.m12437f(str5);
                            return;
                        }
                    } else if ("skip".equals(str6)) {
                        mo5084f.m12940w();
                        return;
                    }
                }
                co0 m12072c = mo5088d.m12072c();
                if (m12072c == null) {
                    HashMap hashMap4 = new HashMap();
                    hashMap4.put("event", "no_video_view");
                    po0Var2.mo5125H0("onVideoEvent", hashMap4);
                    return;
                } else if ("click".equals(str6)) {
                    Context context = po0Var2.getContext();
                    int m11998b = m11998b(context, map, "x", 0);
                    int m11998b2 = m11998b(context, map, "y", 0);
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, m11998b, m11998b2, 0);
                    m12072c.m12395l(obtain);
                    obtain.recycle();
                    return;
                } else if ("currentTime".equals(str6)) {
                    String str12 = (String) map.get("time");
                    if (str12 == null) {
                        cm0.m12437f("Time parameter missing from currentTime video GMSG.");
                        return;
                    }
                    try {
                        m12072c.m12404B((int) (Float.parseFloat(str12) * 1000.0f));
                        return;
                    } catch (NumberFormatException unused4) {
                        if (str12.length() != 0) {
                            str4 = "Could not parse time parameter from currentTime video GMSG: ".concat(str12);
                        } else {
                            str4 = new String("Could not parse time parameter from currentTime video GMSG: ");
                        }
                        cm0.m12437f(str4);
                        return;
                    }
                } else if ("hide".equals(str6)) {
                    m12072c.setVisibility(4);
                    return;
                } else if ("load".equals(str6)) {
                    m12072c.m12382y();
                    return;
                } else if ("loadControl".equals(str6)) {
                    m11997c(m12072c, map);
                    return;
                } else if ("muted".equals(str6)) {
                    if (Boolean.parseBoolean((String) map.get("muted"))) {
                        m12072c.m12403C();
                        return;
                    } else {
                        m12072c.m12402D();
                        return;
                    }
                } else if ("pause".equals(str6)) {
                    m12072c.m12381z();
                    return;
                } else if ("play".equals(str6)) {
                    m12072c.m12405A();
                    return;
                } else if ("show".equals(str6)) {
                    m12072c.setVisibility(0);
                    return;
                } else if ("src".equals(str6)) {
                    String str13 = (String) map.get("src");
                    Integer num = null;
                    if (map.containsKey("periodicReportIntervalMs")) {
                        try {
                            num = Integer.valueOf(Integer.parseInt((String) map.get("periodicReportIntervalMs")));
                        } catch (NumberFormatException unused5) {
                            cm0.m12437f("Video gmsg invalid numeric parameter 'periodicReportIntervalMs': ".concat(String.valueOf((String) map.get("periodicReportIntervalMs"))));
                        }
                    }
                    String[] strArr = {str13};
                    String str14 = (String) map.get("demuxed");
                    if (str14 != null) {
                        try {
                            JSONArray jSONArray = new JSONArray(str14);
                            String[] strArr2 = new String[jSONArray.length()];
                            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                strArr2[i2] = jSONArray.getString(i2);
                            }
                            strArr = strArr2;
                        } catch (JSONException unused6) {
                            if (str14.length() != 0) {
                                str3 = "Malformed demuxed URL list for playback: ".concat(str14);
                            } else {
                                str3 = new String("Malformed demuxed URL list for playback: ");
                            }
                            cm0.m12437f(str3);
                            strArr = new String[]{str13};
                        }
                    }
                    if (num != null) {
                        po0Var2.mo5105T0(num.intValue());
                    }
                    m12072c.m12384w(str13, strArr);
                    return;
                } else if ("touchMove".equals(str6)) {
                    Context context2 = po0Var2.getContext();
                    m12072c.m12383x(m11998b(context2, map, "dx", 0), m11998b(context2, map, "dy", 0));
                    if (!this.f22406a) {
                        po0Var2.mo5070k();
                        this.f22406a = true;
                        return;
                    }
                    return;
                } else if ("volume".equals(str6)) {
                    String str15 = (String) map.get("volume");
                    if (str15 == null) {
                        cm0.m12437f("Level parameter missing from volume video GMSG.");
                        return;
                    }
                    try {
                        m12072c.m12401E(Float.parseFloat(str15));
                        return;
                    } catch (NumberFormatException unused7) {
                        if (str15.length() != 0) {
                            str2 = "Could not parse volume parameter from volume video GMSG: ".concat(str15);
                        } else {
                            str2 = new String("Could not parse volume parameter from volume video GMSG: ");
                        }
                        cm0.m12437f(str2);
                        return;
                    }
                } else if ("watermark".equals(str6)) {
                    m12072c.m12394m();
                    return;
                } else {
                    if (str6.length() != 0) {
                        str = "Unknown video action: ".concat(str6);
                    } else {
                        str = new String("Unknown video action: ");
                    }
                    cm0.m12437f(str);
                    return;
                }
            }
            Context context3 = po0Var2.getContext();
            int m11998b3 = m11998b(context3, map, "x", 0);
            int m11998b4 = m11998b(context3, map, "y", 0);
            int m11998b5 = m11998b(context3, map, "w", -1);
            AbstractC5928jz<Boolean> abstractC5928jz = C6225rz.f31092p2;
            if (((Boolean) C5592av.m12935c().m8098c(abstractC5928jz)).booleanValue()) {
                if (m11998b5 == -1) {
                    min = po0Var2.mo5041v();
                } else {
                    min = Math.min(m11998b5, po0Var2.mo5041v());
                }
            } else {
                if (C0543w1.m26249m()) {
                    int mo5041v = po0Var2.mo5041v();
                    StringBuilder sb2 = new StringBuilder(110);
                    sb2.append("Calculate width with original width ");
                    sb2.append(m11998b5);
                    sb2.append(", videoHost.getVideoBoundingWidth() ");
                    sb2.append(mo5041v);
                    sb2.append(", x ");
                    sb2.append(m11998b3);
                    sb2.append(".");
                    C0543w1.m26251k(sb2.toString());
                }
                min = Math.min(m11998b5, po0Var2.mo5041v() - m11998b3);
            }
            int m11998b6 = m11998b(context3, map, "h", -1);
            if (((Boolean) C5592av.m12935c().m8098c(abstractC5928jz)).booleanValue()) {
                if (m11998b6 == -1) {
                    min2 = po0Var2.mo5136B();
                } else {
                    min2 = Math.min(m11998b6, po0Var2.mo5136B());
                }
            } else {
                if (C0543w1.m26249m()) {
                    int mo5136B = po0Var2.mo5136B();
                    StringBuilder sb3 = new StringBuilder(113);
                    sb3.append("Calculate height with original height ");
                    sb3.append(m11998b6);
                    sb3.append(", videoHost.getVideoBoundingHeight() ");
                    sb3.append(mo5136B);
                    sb3.append(", y ");
                    sb3.append(m11998b4);
                    sb3.append(".");
                    C0543w1.m26251k(sb3.toString());
                }
                min2 = Math.min(m11998b6, po0Var2.mo5136B() - m11998b4);
            }
            int i3 = min2;
            try {
                i = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException unused8) {
                i = 0;
            }
            boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
            if (equals && mo5088d.m12072c() == null) {
                mo5088d.m12073b(m11998b3, m11998b4, min, i3, i, parseBoolean, new oo0((String) map.get("flags")));
                co0 m12072c2 = mo5088d.m12072c();
                if (m12072c2 != null) {
                    m11997c(m12072c2, map);
                    return;
                }
                return;
            }
            mo5088d.m12074a(m11998b3, m11998b4, min, i3);
        }
    }

    /* renamed from: b */
    public static int m11998b(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        if (str2 != null) {
            try {
                C6479yu.m4568a();
                i = vl0.m6111q(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                StringBuilder sb = new StringBuilder(str.length() + 34 + str2.length());
                sb.append("Could not parse ");
                sb.append(str);
                sb.append(" in a video GMSG: ");
                sb.append(str2);
                cm0.m12437f(sb.toString());
            }
        }
        if (C0543w1.m26249m()) {
            StringBuilder sb2 = new StringBuilder(str.length() + 48 + String.valueOf(str2).length());
            sb2.append("Parse pixels for ");
            sb2.append(str);
            sb2.append(", got string ");
            sb2.append(str2);
            sb2.append(", int ");
            sb2.append(i);
            sb2.append(".");
            C0543w1.m26251k(sb2.toString());
        }
        return i;
    }
}
