package com.android.billingclient.api;

import android.os.Bundle;
import java.util.ArrayList;
import p027c5.C1062a;
/* renamed from: com.android.billingclient.api.l */
/* loaded from: classes.dex */
public final class C1098l {
    /* renamed from: a */
    public static C1087c m24531a(Bundle bundle, String str, String str2) {
        C1087c c1087c = C1097k.f3057l;
        if (bundle == null) {
            C1062a.m24710l(str, String.format("%s got null owned items list", str2));
            return c1087c;
        }
        int m24720b = C1062a.m24720b(bundle, str);
        C1087c m24545a = C1087c.m24548b().m24543c(m24720b).m24544b(C1062a.m24711k(bundle, str)).m24545a();
        if (m24720b != 0) {
            C1062a.m24710l(str, String.format("%s failed. Response code: %s", str2, Integer.valueOf(m24720b)));
            return m24545a;
        } else if (bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") && bundle.containsKey("INAPP_PURCHASE_DATA_LIST") && bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            if (stringArrayList == null) {
                C1062a.m24710l(str, String.format("Bundle returned from %s contains null SKUs list.", str2));
                return c1087c;
            } else if (stringArrayList2 == null) {
                C1062a.m24710l(str, String.format("Bundle returned from %s contains null purchases list.", str2));
                return c1087c;
            } else if (stringArrayList3 == null) {
                C1062a.m24710l(str, String.format("Bundle returned from %s contains null signatures list.", str2));
                return c1087c;
            } else {
                return C1097k.f3061p;
            }
        } else {
            C1062a.m24710l(str, String.format("Bundle returned from %s doesn't contain required fields.", str2));
            return c1087c;
        }
    }
}
