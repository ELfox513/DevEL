package p133n5;

import android.text.TextUtils;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import p160q5.InterfaceC5424a;
/* renamed from: n5.b */
/* loaded from: classes2.dex */
public class C4754b {

    /* renamed from: g */
    public static final String[] f19006g = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};

    /* renamed from: h */
    public static final DateFormat f19007h = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    /* renamed from: a */
    public final String f19008a;

    /* renamed from: b */
    public final String f19009b;

    /* renamed from: c */
    public final String f19010c;

    /* renamed from: d */
    public final Date f19011d;

    /* renamed from: e */
    public final long f19012e;

    /* renamed from: f */
    public final long f19013f;

    /* renamed from: b */
    public String m15478b() {
        return this.f19008a;
    }

    /* renamed from: c */
    public long m15477c() {
        return this.f19011d.getTime();
    }

    /* renamed from: a */
    public static C4754b m15479a(Map<String, String> map) {
        String str;
        m15475e(map);
        try {
            Date parse = f19007h.parse(map.get("experimentStartTime"));
            long parseLong = Long.parseLong(map.get("triggerTimeoutMillis"));
            long parseLong2 = Long.parseLong(map.get("timeToLiveMillis"));
            String str2 = map.get("experimentId");
            String str3 = map.get("variantId");
            if (map.containsKey("triggerEvent")) {
                str = map.get("triggerEvent");
            } else {
                str = "";
            }
            return new C4754b(str2, str3, str, parse, parseLong, parseLong2);
        } catch (NumberFormatException e) {
            throw new C4753a("Could not process experiment: one of the durations could not be converted into a long.", e);
        } catch (ParseException e2) {
            throw new C4753a("Could not process experiment: parsing experiment start time failed.", e2);
        }
    }

    /* renamed from: e */
    public static void m15475e(Map<String, String> map) {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        for (String str : f19006g) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        throw new C4753a(String.format("The following keys are missing from the experiment info map: %s", arrayList));
    }

    /* renamed from: d */
    public InterfaceC5424a.C5427c m15476d(String str) {
        String str2;
        InterfaceC5424a.C5427c c5427c = new InterfaceC5424a.C5427c();
        c5427c.f20105a = str;
        c5427c.f20117m = m15477c();
        c5427c.f20106b = this.f19008a;
        c5427c.f20107c = this.f19009b;
        if (TextUtils.isEmpty(this.f19010c)) {
            str2 = null;
        } else {
            str2 = this.f19010c;
        }
        c5427c.f20108d = str2;
        c5427c.f20109e = this.f19012e;
        c5427c.f20114j = this.f19013f;
        return c5427c;
    }

    public C4754b(String str, String str2, String str3, Date date, long j, long j2) {
        this.f19008a = str;
        this.f19009b = str2;
        this.f19010c = str3;
        this.f19011d = date;
        this.f19012e = j;
        this.f19013f = j2;
    }
}
