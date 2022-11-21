package p168r4;

import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
/* renamed from: r4.fr2 */
/* loaded from: classes2.dex */
public final class fr2 implements er2 {

    /* renamed from: a */
    public final Object[] f23651a;

    @Override // p168r4.er2
    public final int hashCode() {
        return Arrays.hashCode(this.f23651a);
    }

    /* renamed from: a */
    public static String m11382a(Bundle bundle) {
        String obj;
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj2 = bundle.get((String) it.next());
            if (obj2 == null) {
                obj = "null";
            } else if (obj2 instanceof Bundle) {
                obj = m11382a((Bundle) obj2);
            } else {
                obj = obj2.toString();
            }
            sb.append(obj);
        }
        return sb.toString();
    }

    @Override // p168r4.er2
    public final boolean equals(Object obj) {
        if (!(obj instanceof fr2)) {
            return false;
        }
        return Arrays.equals(this.f23651a, ((fr2) obj).f23651a);
    }

    public final String toString() {
        int hashCode = Arrays.hashCode(this.f23651a);
        String arrays = Arrays.toString(this.f23651a);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 22);
        sb.append("[PoolKey#");
        sb.append(hashCode);
        sb.append(" ");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }

    public fr2(C6293tt c6293tt, String str, int i, String str2, C5739eu c5739eu) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(c6293tt.f31995b));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(m11382a(c6293tt.f31996d));
        } else if (hashSet.contains("npa")) {
            arrayList.add(c6293tt.f31996d.getString("npa"));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(c6293tt.f31997k));
        }
        if (hashSet.contains("keywords")) {
            List<String> list = c6293tt.f31998p;
            if (list != null) {
                arrayList.add(list.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(c6293tt.f31999q));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(c6293tt.f32000r));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(c6293tt.f32001s));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(c6293tt.f32002t);
        }
        if (hashSet.contains("location")) {
            Location location = c6293tt.f32004v;
            if (location != null) {
                arrayList.add(location.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(c6293tt.f32005w);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(m11382a(c6293tt.f32006x));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(m11382a(c6293tt.f32007y));
        }
        if (hashSet.contains("categoryExclusions")) {
            List<String> list2 = c6293tt.f32008z;
            if (list2 != null) {
                arrayList.add(list2.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(c6293tt.f31985A);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(c6293tt.f31986B);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(c6293tt.f31987C));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(c6293tt.f31989E));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(c6293tt.f31990F);
        }
        if (hashSet.contains("orientation")) {
            if (c5739eu != null) {
                arrayList.add(Integer.valueOf(c5739eu.f23140a));
            } else {
                arrayList.add(null);
            }
        }
        this.f23651a = arrayList.toArray();
    }
}
