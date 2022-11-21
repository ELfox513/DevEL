package p232z;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: z.e */
/* loaded from: classes.dex */
public final class C7524e implements InterfaceC7525f {

    /* renamed from: c */
    public static final Locale[] f37382c = new Locale[0];

    /* renamed from: d */
    public static final Locale f37383d = new Locale("en", "XA");

    /* renamed from: e */
    public static final Locale f37384e = new Locale("ar", "XB");

    /* renamed from: f */
    public static final Locale f37385f = C7523d.m1303b("en-Latn");

    /* renamed from: a */
    public final Locale[] f37386a;

    /* renamed from: b */
    public final String f37387b;

    @Override // p232z.InterfaceC7525f
    /* renamed from: a */
    public Object mo1299a() {
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7524e)) {
            return false;
        }
        Locale[] localeArr = ((C7524e) obj).f37386a;
        if (this.f37386a.length != localeArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Locale[] localeArr2 = this.f37386a;
            if (i >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
            i++;
        }
    }

    @Override // p232z.InterfaceC7525f
    public Locale get(int i) {
        if (i >= 0) {
            Locale[] localeArr = this.f37386a;
            if (i < localeArr.length) {
                return localeArr[i];
            }
        }
        return null;
    }

    public int hashCode() {
        int i = 1;
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.f37386a;
            if (i2 < localeArr.length) {
                i = (i * 31) + localeArr[i2].hashCode();
                i2++;
            } else {
                return i;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f37386a;
            if (i < localeArr.length) {
                sb.append(localeArr[i]);
                if (i < this.f37386a.length - 1) {
                    sb.append(',');
                }
                i++;
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }

    public C7524e(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f37386a = f37382c;
            this.f37387b = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale != null) {
                if (!hashSet.contains(locale)) {
                    Locale locale2 = (Locale) locale.clone();
                    arrayList.add(locale2);
                    m1300b(sb, locale2);
                    if (i < localeArr.length - 1) {
                        sb.append(',');
                    }
                    hashSet.add(locale2);
                }
            } else {
                throw new NullPointerException("list[" + i + "] is null");
            }
        }
        this.f37386a = (Locale[]) arrayList.toArray(new Locale[arrayList.size()]);
        this.f37387b = sb.toString();
    }

    /* renamed from: b */
    public static void m1300b(StringBuilder sb, Locale locale) {
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country != null && !country.isEmpty()) {
            sb.append(SignatureVisitor.SUPER);
            sb.append(locale.getCountry());
        }
    }
}
