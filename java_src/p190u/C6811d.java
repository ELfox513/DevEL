package p190u;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import com.badlogic.gdx.net.HttpStatus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p001a0.C0011d;
import p154q.C5380c;
/* renamed from: u.d */
/* loaded from: classes.dex */
public class C6811d {

    /* renamed from: u.d$a */
    /* loaded from: classes.dex */
    public interface InterfaceC6812a {
    }

    /* renamed from: d */
    public static InterfaceC6812a m3341d(XmlPullParser xmlPullParser, Resources resources) {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return m3340e(xmlPullParser, resources);
        }
        m3338g(xmlPullParser);
        return null;
    }

    /* renamed from: g */
    public static void m3338g(XmlPullParser xmlPullParser) {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    /* renamed from: u.d$b */
    /* loaded from: classes.dex */
    public static final class C6813b implements InterfaceC6812a {

        /* renamed from: a */
        public final C6814c[] f35534a;

        /* renamed from: a */
        public C6814c[] m3336a() {
            return this.f35534a;
        }

        public C6813b(C6814c[] c6814cArr) {
            this.f35534a = c6814cArr;
        }
    }

    /* renamed from: u.d$c */
    /* loaded from: classes.dex */
    public static final class C6814c {

        /* renamed from: a */
        public final String f35535a;

        /* renamed from: b */
        public int f35536b;

        /* renamed from: c */
        public boolean f35537c;

        /* renamed from: d */
        public String f35538d;

        /* renamed from: e */
        public int f35539e;

        /* renamed from: f */
        public int f35540f;

        /* renamed from: a */
        public String m3335a() {
            return this.f35535a;
        }

        /* renamed from: b */
        public int m3334b() {
            return this.f35540f;
        }

        /* renamed from: c */
        public int m3333c() {
            return this.f35539e;
        }

        /* renamed from: d */
        public String m3332d() {
            return this.f35538d;
        }

        /* renamed from: e */
        public int m3331e() {
            return this.f35536b;
        }

        /* renamed from: f */
        public boolean m3330f() {
            return this.f35537c;
        }

        public C6814c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f35535a = str;
            this.f35536b = i;
            this.f35537c = z;
            this.f35538d = str2;
            this.f35539e = i2;
            this.f35540f = i3;
        }
    }

    /* renamed from: u.d$d */
    /* loaded from: classes.dex */
    public static final class C6815d implements InterfaceC6812a {

        /* renamed from: a */
        public final C0011d f35541a;

        /* renamed from: b */
        public final int f35542b;

        /* renamed from: c */
        public final int f35543c;

        /* renamed from: d */
        public final String f35544d;

        /* renamed from: a */
        public int m3329a() {
            return this.f35543c;
        }

        /* renamed from: b */
        public C0011d m3328b() {
            return this.f35541a;
        }

        /* renamed from: c */
        public String m3327c() {
            return this.f35544d;
        }

        /* renamed from: d */
        public int m3326d() {
            return this.f35542b;
        }

        public C6815d(C0011d c0011d, int i, int i2, String str) {
            this.f35541a = c0011d;
            this.f35543c = i;
            this.f35542b = i2;
            this.f35544d = str;
        }
    }

    /* renamed from: a */
    public static int m3344a(TypedArray typedArray, int i) {
        int type;
        if (Build.VERSION.SDK_INT >= 21) {
            type = typedArray.getType(i);
            return type;
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        return typedValue.type;
    }

    /* renamed from: c */
    public static List<List<byte[]>> m3342c(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (m3344a(obtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(m3337h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m3337h(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    /* renamed from: h */
    public static List<byte[]> m3337h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static InterfaceC6812a m3343b(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m3341d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: e */
    public static InterfaceC6812a m3340e(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C5380c.f20052f);
        String string = obtainAttributes.getString(C5380c.f20053g);
        String string2 = obtainAttributes.getString(C5380c.f20057k);
        String string3 = obtainAttributes.getString(C5380c.f20058l);
        int resourceId = obtainAttributes.getResourceId(C5380c.f20054h, 0);
        int integer = obtainAttributes.getInteger(C5380c.f20055i, 1);
        int integer2 = obtainAttributes.getInteger(C5380c.f20056j, 500);
        String string4 = obtainAttributes.getString(C5380c.f20059m);
        obtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                m3338g(xmlPullParser);
            }
            return new C6815d(new C0011d(string, string2, string3, m3342c(resources, resourceId)), integer, integer2, string4);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(m3339f(xmlPullParser, resources));
                } else {
                    m3338g(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new C6813b((C6814c[]) arrayList.toArray(new C6814c[arrayList.size()]));
    }

    /* renamed from: f */
    public static C6814c m3339f(XmlPullParser xmlPullParser, Resources resources) {
        boolean z;
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C5380c.f20060n);
        int i = C5380c.f20069w;
        if (!obtainAttributes.hasValue(i)) {
            i = C5380c.f20062p;
        }
        int i2 = obtainAttributes.getInt(i, HttpStatus.SC_BAD_REQUEST);
        int i3 = C5380c.f20067u;
        if (!obtainAttributes.hasValue(i3)) {
            i3 = C5380c.f20063q;
        }
        if (1 == obtainAttributes.getInt(i3, 0)) {
            z = true;
        } else {
            z = false;
        }
        int i4 = C5380c.f20070x;
        if (!obtainAttributes.hasValue(i4)) {
            i4 = C5380c.f20064r;
        }
        int i5 = C5380c.f20068v;
        if (!obtainAttributes.hasValue(i5)) {
            i5 = C5380c.f20065s;
        }
        String string = obtainAttributes.getString(i5);
        int i6 = obtainAttributes.getInt(i4, 0);
        int i7 = C5380c.f20066t;
        if (!obtainAttributes.hasValue(i7)) {
            i7 = C5380c.f20061o;
        }
        int resourceId = obtainAttributes.getResourceId(i7, 0);
        String string2 = obtainAttributes.getString(i7);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            m3338g(xmlPullParser);
        }
        return new C6814c(string2, i2, z, string, i6, resourceId);
    }
}
