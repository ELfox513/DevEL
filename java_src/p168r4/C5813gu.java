package p168r4;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import p184t2.C6710g;
import p184t2.C6722s;
/* renamed from: r4.gu */
/* loaded from: classes2.dex */
public final class C5813gu {

    /* renamed from: a */
    public final C6710g[] f24236a;

    /* renamed from: b */
    public final String f24237b;

    /* renamed from: a */
    public final C6710g[] m11053a(boolean z) {
        if (z || this.f24236a.length == 1) {
            return this.f24236a;
        }
        throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
    }

    /* renamed from: b */
    public final String m11052b() {
        return this.f24237b;
    }

    /* renamed from: c */
    public static C6710g[] m11051c(String str) {
        String str2;
        String str3;
        String str4;
        int parseInt;
        int parseInt2;
        String[] split = str.split("\\s*,\\s*");
        int length = split.length;
        C6710g[] c6710gArr = new C6710g[length];
        for (int i = 0; i < split.length; i++) {
            String trim = split[i].trim();
            if (trim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] split2 = trim.split("[xX]");
                split2[0] = split2[0].trim();
                split2[1] = split2[1].trim();
                try {
                    if ("FULL_WIDTH".equals(split2[0])) {
                        parseInt = -1;
                    } else {
                        parseInt = Integer.parseInt(split2[0]);
                    }
                    if ("AUTO_HEIGHT".equals(split2[1])) {
                        parseInt2 = -2;
                    } else {
                        parseInt2 = Integer.parseInt(split2[1]);
                    }
                    c6710gArr[i] = new C6710g(parseInt, parseInt2);
                } catch (NumberFormatException unused) {
                    if (trim.length() != 0) {
                        str4 = "Could not parse XML attribute \"adSize\": ".concat(trim);
                    } else {
                        str4 = new String("Could not parse XML attribute \"adSize\": ");
                    }
                    throw new IllegalArgumentException(str4);
                }
            } else if ("BANNER".equals(trim)) {
                c6710gArr[i] = C6710g.f35334i;
            } else if ("LARGE_BANNER".equals(trim)) {
                c6710gArr[i] = C6710g.f35336k;
            } else if ("FULL_BANNER".equals(trim)) {
                c6710gArr[i] = C6710g.f35335j;
            } else if ("LEADERBOARD".equals(trim)) {
                c6710gArr[i] = C6710g.f35337l;
            } else if ("MEDIUM_RECTANGLE".equals(trim)) {
                c6710gArr[i] = C6710g.f35338m;
            } else if ("SMART_BANNER".equals(trim)) {
                c6710gArr[i] = C6710g.f35340o;
            } else if ("WIDE_SKYSCRAPER".equals(trim)) {
                c6710gArr[i] = C6710g.f35339n;
            } else if ("FLUID".equals(trim)) {
                c6710gArr[i] = C6710g.f35341p;
            } else if ("ICON".equals(trim)) {
                c6710gArr[i] = C6710g.f35344s;
            } else {
                if (trim.length() != 0) {
                    str3 = "Could not parse XML attribute \"adSize\": ".concat(trim);
                } else {
                    str3 = new String("Could not parse XML attribute \"adSize\": ");
                }
                throw new IllegalArgumentException(str3);
            }
        }
        if (length == 0) {
            if (str.length() != 0) {
                str2 = "Could not parse XML attribute \"adSize\": ".concat(str);
            } else {
                str2 = new String("Could not parse XML attribute \"adSize\": ");
            }
            throw new IllegalArgumentException(str2);
        }
        return c6710gArr;
    }

    public C5813gu(Context context, AttributeSet attributeSet) {
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C6722s.f35360a);
        String string = obtainAttributes.getString(C6722s.f35361b);
        String string2 = obtainAttributes.getString(C6722s.f35362c);
        boolean z = !TextUtils.isEmpty(string);
        boolean z2 = !TextUtils.isEmpty(string2);
        if (z && !z2) {
            this.f24236a = m11051c(string);
        } else if (!z && z2) {
            this.f24236a = m11051c(string2);
        } else if (z) {
            obtainAttributes.recycle();
            throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
        } else {
            obtainAttributes.recycle();
            throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
        }
        String string3 = obtainAttributes.getString(C6722s.f35363d);
        this.f24237b = string3;
        obtainAttributes.recycle();
        if (!TextUtils.isEmpty(string3)) {
            return;
        }
        throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
    }
}
