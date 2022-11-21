package p232z;

import android.os.Build;
import android.p010os.LocaleList;
import java.util.Locale;
import net.bytebuddy.utility.JavaConstant;
/* renamed from: z.d */
/* loaded from: classes.dex */
public final class C7523d {

    /* renamed from: b */
    public static final C7523d f37380b = m1304a(new Locale[0]);

    /* renamed from: a */
    public InterfaceC7525f f37381a;

    /* renamed from: d */
    public static C7523d m1301d(LocaleList localeList) {
        return new C7523d(new C7526g(localeList));
    }

    /* renamed from: c */
    public Locale m1302c(int i) {
        return this.f37381a.get(i);
    }

    public boolean equals(Object obj) {
        return (obj instanceof C7523d) && this.f37381a.equals(((C7523d) obj).f37381a);
    }

    public int hashCode() {
        return this.f37381a.hashCode();
    }

    public String toString() {
        return this.f37381a.toString();
    }

    /* renamed from: a */
    public static C7523d m1304a(Locale... localeArr) {
        if (Build.VERSION.SDK_INT >= 24) {
            return m1301d(new LocaleList(localeArr));
        }
        return new C7523d(new C7524e(localeArr));
    }

    /* renamed from: b */
    public static Locale m1303b(String str) {
        if (str.contains("-")) {
            String[] split = str.split("-", -1);
            if (split.length > 2) {
                return new Locale(split[0], split[1], split[2]);
            }
            if (split.length > 1) {
                return new Locale(split[0], split[1]);
            }
            if (split.length == 1) {
                return new Locale(split[0]);
            }
        } else if (str.contains(JavaConstant.Dynamic.DEFAULT_NAME)) {
            String[] split2 = str.split(JavaConstant.Dynamic.DEFAULT_NAME, -1);
            if (split2.length > 2) {
                return new Locale(split2[0], split2[1], split2[2]);
            }
            if (split2.length > 1) {
                return new Locale(split2[0], split2[1]);
            }
            if (split2.length == 1) {
                return new Locale(split2[0]);
            }
        } else {
            return new Locale(str);
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    public C7523d(InterfaceC7525f interfaceC7525f) {
        this.f37381a = interfaceC7525f;
    }
}
