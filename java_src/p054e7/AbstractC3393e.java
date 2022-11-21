package p054e7;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import net.bytebuddy.utility.JavaConstant;
import p029c7.C1078a;
import p099j7.EnumC4369b;
import p099j7.EnumC4370c;
import p108k7.C4510i;
/* renamed from: e7.e */
/* loaded from: classes2.dex */
public abstract class AbstractC3393e {
    /* renamed from: c */
    public abstract boolean mo18978c();

    /* renamed from: a */
    public static List<AbstractC3393e> m18980a(C4510i c4510i, Context context) {
        ArrayList arrayList = new ArrayList();
        if (c4510i.mo16139i()) {
            arrayList.add(new C3392d(c4510i.mo16138j()));
        }
        if (c4510i.mo16137n()) {
            arrayList.add(new C3391c(c4510i.mo16136o(), context));
        }
        if (c4510i.m16150W()) {
            arrayList.add(new C3389a(c4510i.m16151V()));
        }
        if (c4510i.mo16140b()) {
            arrayList.add(new C3390b(c4510i.mo16135t()));
        }
        return arrayList;
    }

    /* renamed from: e */
    public static String m18976e(String str) {
        if (str == null) {
            return "Metric name must not be null";
        }
        if (str.length() > 100) {
            return String.format(Locale.US, "Metric name must not exceed %d characters", 100);
        }
        if (!str.startsWith(JavaConstant.Dynamic.DEFAULT_NAME)) {
            return null;
        }
        for (EnumC4369b enumC4369b : EnumC4369b.values()) {
            if (enumC4369b.toString().equals(str)) {
                return null;
            }
        }
        return "Metric name must not start with '_'";
    }

    /* renamed from: f */
    public static String m18975f(String str) {
        if (str == null) {
            return "Trace name must not be null";
        }
        if (str.length() > 100) {
            return String.format(Locale.US, "Trace name must not exceed %d characters", 100);
        }
        if (!str.startsWith(JavaConstant.Dynamic.DEFAULT_NAME)) {
            return null;
        }
        for (EnumC4370c enumC4370c : EnumC4370c.values()) {
            if (enumC4370c.toString().equals(str)) {
                return null;
            }
        }
        if (str.startsWith("_st_")) {
            return null;
        }
        return "Trace name must not start with '_'";
    }

    /* renamed from: b */
    public static boolean m18979b(C4510i c4510i, Context context) {
        List<AbstractC3393e> m18980a = m18980a(c4510i, context);
        if (m18980a.isEmpty()) {
            C1078a.m24639e().m24643a("No validators found for PerfMetric.");
            return false;
        }
        for (AbstractC3393e abstractC3393e : m18980a) {
            if (!abstractC3393e.mo18978c()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public static String m18977d(Map.Entry<String, String> entry) {
        String key = entry.getKey();
        String value = entry.getValue();
        if (key == null) {
            return "Attribute key must not be null";
        }
        if (value == null) {
            return "Attribute value must not be null";
        }
        if (key.length() > 40) {
            return String.format(Locale.US, "Attribute key length must not exceed %d characters", 40);
        }
        if (value.length() > 100) {
            return String.format(Locale.US, "Attribute value length must not exceed %d characters", 100);
        }
        if (!key.matches("^(?!(firebase_|google_|ga_))[A-Za-z][A-Za-z_0-9]*")) {
            return "Attribute key must start with letter, must only contain alphanumeric characters and underscore and must not start with \"firebase_\", \"google_\" and \"ga_";
        }
        return null;
    }
}
