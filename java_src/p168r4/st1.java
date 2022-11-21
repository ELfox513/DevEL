package p168r4;

import android.net.Uri;
import android.os.Bundle;
import android.util.JsonReader;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import p184t2.C6723t;
/* renamed from: r4.st1 */
/* loaded from: classes2.dex */
public final class st1 extends p60 {

    /* renamed from: a */
    public final vt1 f31506a;

    /* renamed from: b */
    public final qt1 f31507b;

    /* renamed from: d */
    public final Map<Long, lt1> f31508d = new HashMap();

    @Override // p168r4.q60
    /* renamed from: d */
    public final void mo6997d() {
        this.f31508d.clear();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: f7 */
    public static C6293tt m6996f7(Map<String, String> map) {
        char c;
        C6330ut c6330ut = new C6330ut();
        String str = map.get("ad_request");
        if (str == null) {
            return c6330ut.m6381a();
        }
        JsonReader jsonReader = new JsonReader(new StringReader(Uri.decode(str)));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                switch (nextName.hashCode()) {
                    case -1289032093:
                        if (nextName.equals("extras")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -839117230:
                        if (nextName.equals("isTestDevice")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case -733436947:
                        if (nextName.equals("tagForUnderAgeOfConsent")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case -99890337:
                        if (nextName.equals("httpTimeoutMillis")) {
                            c = 6;
                            break;
                        }
                        c = 65535;
                        break;
                    case 523149226:
                        if (nextName.equals("keywords")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case 597632527:
                        if (nextName.equals("maxAdContentRating")) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1411582723:
                        if (nextName.equals("tagForChildDirectedTreatment")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                        jsonReader.beginObject();
                        Bundle bundle = new Bundle();
                        while (jsonReader.hasNext()) {
                            bundle.putString(jsonReader.nextName(), jsonReader.nextString());
                        }
                        jsonReader.endObject();
                        c6330ut.m6380b(bundle);
                        break;
                    case 1:
                        jsonReader.beginArray();
                        ArrayList arrayList = new ArrayList();
                        while (jsonReader.hasNext()) {
                            arrayList.add(jsonReader.nextString());
                        }
                        jsonReader.endArray();
                        c6330ut.m6379c(arrayList);
                        break;
                    case 2:
                        c6330ut.m6378d(jsonReader.nextBoolean());
                        break;
                    case 3:
                        if (jsonReader.nextBoolean()) {
                            c6330ut.m6377e(1);
                            break;
                        } else {
                            c6330ut.m6377e(0);
                            break;
                        }
                    case 4:
                        if (jsonReader.nextBoolean()) {
                            c6330ut.m6376f(1);
                            break;
                        } else {
                            c6330ut.m6376f(0);
                            break;
                        }
                    case 5:
                        String nextString = jsonReader.nextString();
                        if (!C6723t.f35364e.contains(nextString)) {
                            break;
                        } else {
                            c6330ut.m6375g(nextString);
                            break;
                        }
                    case 6:
                        c6330ut.m6374h(jsonReader.nextInt());
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
        } catch (IOException unused) {
            cm0.m12442a("Ad Request json was malformed, parsing ended early.");
        }
        C6293tt m6381a = c6330ut.m6381a();
        Bundle bundle2 = m6381a.f32006x.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle2 == null) {
            bundle2 = m6381a.f31996d;
            m6381a.f32006x.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle2);
        }
        return new C6293tt(m6381a.f31994a, m6381a.f31995b, bundle2, m6381a.f31997k, m6381a.f31998p, m6381a.f31999q, m6381a.f32000r, m6381a.f32001s, m6381a.f32002t, m6381a.f32003u, m6381a.f32004v, m6381a.f32005w, m6381a.f32006x, m6381a.f32007y, m6381a.f32008z, m6381a.f31985A, m6381a.f31986B, m6381a.f31987C, m6381a.f31988D, m6381a.f31989E, m6381a.f31990F, m6381a.f31991G, m6381a.f31992H, m6381a.f31993I);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b1, code lost:
        if (r0.equals("create_interstitial_ad") != false) goto L29;
     */
    @Override // p168r4.q60
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo6998H(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.st1.mo6998H(java.lang.String):void");
    }

    public st1(vt1 vt1Var, qt1 qt1Var) {
        this.f31506a = vt1Var;
        this.f31507b = qt1Var;
    }
}
