package p027c5;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.billingclient.api.C1087c;
import com.android.billingclient.api.C1099m;
import com.android.billingclient.api.Purchase;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import p093j1.C4272a;
import p093j1.C4279d;
import p093j1.C4282e;
/* renamed from: c5.a */
/* loaded from: classes2.dex */
public final class C1062a {

    /* renamed from: a */
    public static int f2962a = Runtime.getRuntime().availableProcessors();

    /* renamed from: a */
    public static int m24721a(Intent intent, String str) {
        return m24712j(intent, str).m24549a();
    }

    /* renamed from: b */
    public static int m24720b(Bundle bundle, String str) {
        String str2;
        if (bundle == null) {
            m24710l(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            m24713i(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            String name = obj.getClass().getName();
            if (name.length() != 0) {
                str2 = "Unexpected type for bundle response code: ".concat(name);
            } else {
                str2 = new String("Unexpected type for bundle response code: ");
            }
            m24710l(str, str2);
            return 6;
        }
    }

    /* renamed from: h */
    public static List<Purchase> m24714h(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList != null && stringArrayList2 != null) {
            for (int i = 0; i < stringArrayList.size() && i < stringArrayList2.size(); i++) {
                Purchase m24709m = m24709m(stringArrayList.get(i), stringArrayList2.get(i));
                if (m24709m != null) {
                    arrayList.add(m24709m);
                }
            }
        } else {
            m24710l("BillingHelper", "Couldn't find purchase lists, trying to find single data.");
            Purchase m24709m2 = m24709m(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (m24709m2 == null) {
                m24710l("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(m24709m2);
        }
        return arrayList;
    }

    /* renamed from: i */
    public static void m24713i(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            Log.v(str, str2);
        }
    }

    /* renamed from: l */
    public static void m24710l(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    /* renamed from: m */
    public static Purchase m24709m(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                return new Purchase(str, str2);
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(valueOf.length() + 47);
                sb.append("Got JSONException while parsing purchase data: ");
                sb.append(valueOf);
                m24710l("BillingHelper", sb.toString());
                return null;
            }
        }
        m24710l("BillingHelper", "Received a bad purchase data.");
        return null;
    }

    /* renamed from: c */
    public static Bundle m24719c(int i, boolean z, String str, String str2, ArrayList<C1099m> arrayList) {
        Bundle bundle = new Bundle();
        if (i >= 9) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        if (i >= 9 && z) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        if (i >= 13 && str2 != null) {
            bundle.putString("SKU_PACKAGE_NAME", str2);
        }
        if (i >= 14) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            int size = arrayList.size();
            int i2 = 0;
            boolean z2 = false;
            while (i2 < size) {
                C1099m c1099m = arrayList.get(i2);
                i2++;
                C1099m c1099m2 = c1099m;
                arrayList2.add(c1099m2.m24529b());
                z2 |= !TextUtils.isEmpty(c1099m2.m24529b());
            }
            if (z2) {
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
            }
        }
        return bundle;
    }

    /* renamed from: d */
    public static Bundle m24718d(C4272a c4272a, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        return bundle;
    }

    /* renamed from: e */
    public static Bundle m24717e(C4279d c4279d, boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (c4279d.m16872c() != 0) {
            bundle.putInt("prorationMode", c4279d.m16872c());
        }
        if (!TextUtils.isEmpty(c4279d.m16864k())) {
            bundle.putString("accountId", c4279d.m16864k());
        }
        if (!TextUtils.isEmpty(c4279d.m16859p())) {
            bundle.putString("obfuscatedProfileId", c4279d.m16859p());
        }
        if (c4279d.m16871d()) {
            bundle.putBoolean("vr", true);
        }
        if (!TextUtils.isEmpty(c4279d.m16874a())) {
            bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(c4279d.m16874a())));
        }
        if (!TextUtils.isEmpty(c4279d.m16873b())) {
            bundle.putString("oldSkuPurchaseToken", c4279d.m16873b());
        }
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    /* renamed from: f */
    public static Bundle m24716f(C4282e c4282e, boolean z, String str) {
        Bundle bundle = new Bundle();
        if (z) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        return bundle;
    }

    /* renamed from: g */
    public static Bundle m24715g(boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    /* renamed from: j */
    public static C1087c m24712j(Intent intent, String str) {
        if (intent == null) {
            m24710l("BillingHelper", "Got null intent!");
            return C1087c.m24548b().m24543c(6).m24544b("An internal error occurred.").m24545a();
        }
        return C1087c.m24548b().m24543c(m24720b(intent.getExtras(), str)).m24544b(m24711k(intent.getExtras(), str)).m24545a();
    }

    /* renamed from: k */
    public static String m24711k(Bundle bundle, String str) {
        String str2;
        if (bundle == null) {
            m24710l(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            m24713i(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        } else if (obj instanceof String) {
            return (String) obj;
        } else {
            String name = obj.getClass().getName();
            if (name.length() != 0) {
                str2 = "Unexpected type for debug message: ".concat(name);
            } else {
                str2 = new String("Unexpected type for debug message: ");
            }
            m24710l(str, str2);
            return "";
        }
    }
}
