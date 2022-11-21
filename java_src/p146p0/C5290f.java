package p146p0;

import android.database.Cursor;
import android.os.Build;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import p155q0.InterfaceC5382b;
/* renamed from: p0.f */
/* loaded from: classes.dex */
public class C5290f {

    /* renamed from: a */
    public final String f19834a;

    /* renamed from: b */
    public final Map<String, C5291a> f19835b;

    /* renamed from: c */
    public final Set<C5292b> f19836c;

    /* renamed from: d */
    public final Set<C5294d> f19837d;

    /* renamed from: p0.f$a */
    /* loaded from: classes.dex */
    public static class C5291a {

        /* renamed from: a */
        public final String f19838a;

        /* renamed from: b */
        public final String f19839b;

        /* renamed from: c */
        public final int f19840c;

        /* renamed from: d */
        public final boolean f19841d;

        /* renamed from: e */
        public final int f19842e;

        /* renamed from: f */
        public final String f19843f;

        /* renamed from: g */
        public final int f19844g;

        /* renamed from: a */
        public static int m13626a(String str) {
            if (str == null) {
                return 5;
            }
            String upperCase = str.toUpperCase(Locale.US);
            if (upperCase.contains("INT")) {
                return 3;
            }
            if (!upperCase.contains("CHAR") && !upperCase.contains("CLOB") && !upperCase.contains("TEXT")) {
                if (upperCase.contains("BLOB")) {
                    return 5;
                }
                if (!upperCase.contains("REAL") && !upperCase.contains("FLOA") && !upperCase.contains("DOUB")) {
                    return 1;
                }
                return 4;
            }
            return 2;
        }

        /* renamed from: b */
        public boolean m13625b() {
            return this.f19842e > 0;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            String str3;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C5291a c5291a = (C5291a) obj;
            if (Build.VERSION.SDK_INT >= 20) {
                if (this.f19842e != c5291a.f19842e) {
                    return false;
                }
            } else if (m13625b() != c5291a.m13625b()) {
                return false;
            }
            if (!this.f19838a.equals(c5291a.f19838a) || this.f19841d != c5291a.f19841d) {
                return false;
            }
            if (this.f19844g == 1 && c5291a.f19844g == 2 && (str3 = this.f19843f) != null && !str3.equals(c5291a.f19843f)) {
                return false;
            }
            if (this.f19844g == 2 && c5291a.f19844g == 1 && (str2 = c5291a.f19843f) != null && !str2.equals(this.f19843f)) {
                return false;
            }
            int i = this.f19844g;
            return (i == 0 || i != c5291a.f19844g || ((str = this.f19843f) == null ? c5291a.f19843f == null : str.equals(c5291a.f19843f))) && this.f19840c == c5291a.f19840c;
        }

        public String toString() {
            return "Column{name='" + this.f19838a + "', type='" + this.f19839b + "', affinity='" + this.f19840c + "', notNull=" + this.f19841d + ", primaryKeyPosition=" + this.f19842e + ", defaultValue='" + this.f19843f + "'}";
        }

        public int hashCode() {
            int i;
            int hashCode = ((this.f19838a.hashCode() * 31) + this.f19840c) * 31;
            if (this.f19841d) {
                i = 1231;
            } else {
                i = 1237;
            }
            return ((hashCode + i) * 31) + this.f19842e;
        }

        public C5291a(String str, String str2, boolean z, int i, String str3, int i2) {
            this.f19838a = str;
            this.f19839b = str2;
            this.f19841d = z;
            this.f19842e = i;
            this.f19840c = m13626a(str2);
            this.f19843f = str3;
            this.f19844g = i2;
        }
    }

    /* renamed from: p0.f$b */
    /* loaded from: classes.dex */
    public static class C5292b {

        /* renamed from: a */
        public final String f19845a;

        /* renamed from: b */
        public final String f19846b;

        /* renamed from: c */
        public final String f19847c;

        /* renamed from: d */
        public final List<String> f19848d;

        /* renamed from: e */
        public final List<String> f19849e;

        public String toString() {
            return "ForeignKey{referenceTable='" + this.f19845a + "', onDelete='" + this.f19846b + "', onUpdate='" + this.f19847c + "', columnNames=" + this.f19848d + ", referenceColumnNames=" + this.f19849e + '}';
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C5292b c5292b = (C5292b) obj;
            if (!this.f19845a.equals(c5292b.f19845a) || !this.f19846b.equals(c5292b.f19846b) || !this.f19847c.equals(c5292b.f19847c) || !this.f19848d.equals(c5292b.f19848d)) {
                return false;
            }
            return this.f19849e.equals(c5292b.f19849e);
        }

        public int hashCode() {
            return (((((((this.f19845a.hashCode() * 31) + this.f19846b.hashCode()) * 31) + this.f19847c.hashCode()) * 31) + this.f19848d.hashCode()) * 31) + this.f19849e.hashCode();
        }

        public C5292b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f19845a = str;
            this.f19846b = str2;
            this.f19847c = str3;
            this.f19848d = Collections.unmodifiableList(list);
            this.f19849e = Collections.unmodifiableList(list2);
        }
    }

    /* renamed from: p0.f$c */
    /* loaded from: classes.dex */
    public static class C5293c implements Comparable<C5293c> {

        /* renamed from: a */
        public final int f19850a;

        /* renamed from: b */
        public final int f19851b;

        /* renamed from: d */
        public final String f19852d;

        /* renamed from: k */
        public final String f19853k;

        @Override // java.lang.Comparable
        /* renamed from: c */
        public int compareTo(C5293c c5293c) {
            int i = this.f19850a - c5293c.f19850a;
            if (i == 0) {
                return this.f19851b - c5293c.f19851b;
            }
            return i;
        }

        public C5293c(int i, int i2, String str, String str2) {
            this.f19850a = i;
            this.f19851b = i2;
            this.f19852d = str;
            this.f19853k = str2;
        }
    }

    /* renamed from: p0.f$d */
    /* loaded from: classes.dex */
    public static class C5294d {

        /* renamed from: a */
        public final String f19854a;

        /* renamed from: b */
        public final boolean f19855b;

        /* renamed from: c */
        public final List<String> f19856c;

        public String toString() {
            return "Index{name='" + this.f19854a + "', unique=" + this.f19855b + ", columns=" + this.f19856c + '}';
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C5294d c5294d = (C5294d) obj;
            if (this.f19855b != c5294d.f19855b || !this.f19856c.equals(c5294d.f19856c)) {
                return false;
            }
            if (this.f19854a.startsWith("index_")) {
                return c5294d.f19854a.startsWith("index_");
            }
            return this.f19854a.equals(c5294d.f19854a);
        }

        public int hashCode() {
            int hashCode;
            if (this.f19854a.startsWith("index_")) {
                hashCode = -1184239155;
            } else {
                hashCode = this.f19854a.hashCode();
            }
            return (((hashCode * 31) + (this.f19855b ? 1 : 0)) * 31) + this.f19856c.hashCode();
        }

        public C5294d(String str, boolean z, List<String> list) {
            this.f19854a = str;
            this.f19855b = z;
            this.f19856c = list;
        }
    }

    public boolean equals(Object obj) {
        Set<C5294d> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C5290f c5290f = (C5290f) obj;
        String str = this.f19834a;
        if (str == null ? c5290f.f19834a != null : !str.equals(c5290f.f19834a)) {
            return false;
        }
        Map<String, C5291a> map = this.f19835b;
        if (map == null ? c5290f.f19835b != null : !map.equals(c5290f.f19835b)) {
            return false;
        }
        Set<C5292b> set2 = this.f19836c;
        if (set2 == null ? c5290f.f19836c != null : !set2.equals(c5290f.f19836c)) {
            return false;
        }
        Set<C5294d> set3 = this.f19837d;
        if (set3 == null || (set = c5290f.f19837d) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public String toString() {
        return "TableInfo{name='" + this.f19834a + "', columns=" + this.f19835b + ", foreignKeys=" + this.f19836c + ", indices=" + this.f19837d + '}';
    }

    /* renamed from: b */
    public static Map<String, C5291a> m13631b(InterfaceC5382b interfaceC5382b, String str) {
        boolean z;
        Cursor mo13132o0 = interfaceC5382b.mo13132o0("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (mo13132o0.getColumnCount() > 0) {
                int columnIndex = mo13132o0.getColumnIndex("name");
                int columnIndex2 = mo13132o0.getColumnIndex("type");
                int columnIndex3 = mo13132o0.getColumnIndex("notnull");
                int columnIndex4 = mo13132o0.getColumnIndex("pk");
                int columnIndex5 = mo13132o0.getColumnIndex("dflt_value");
                while (mo13132o0.moveToNext()) {
                    String string = mo13132o0.getString(columnIndex);
                    String string2 = mo13132o0.getString(columnIndex2);
                    if (mo13132o0.getInt(columnIndex3) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    hashMap.put(string, new C5291a(string, string2, z, mo13132o0.getInt(columnIndex4), mo13132o0.getString(columnIndex5), 2));
                }
            }
            return hashMap;
        } finally {
            mo13132o0.close();
        }
    }

    /* renamed from: c */
    public static List<C5293c> m13630c(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new C5293c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: d */
    public static Set<C5292b> m13629d(InterfaceC5382b interfaceC5382b, String str) {
        HashSet hashSet = new HashSet();
        Cursor mo13132o0 = interfaceC5382b.mo13132o0("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = mo13132o0.getColumnIndex("id");
            int columnIndex2 = mo13132o0.getColumnIndex("seq");
            int columnIndex3 = mo13132o0.getColumnIndex("table");
            int columnIndex4 = mo13132o0.getColumnIndex("on_delete");
            int columnIndex5 = mo13132o0.getColumnIndex("on_update");
            List<C5293c> m13630c = m13630c(mo13132o0);
            int count = mo13132o0.getCount();
            for (int i = 0; i < count; i++) {
                mo13132o0.moveToPosition(i);
                if (mo13132o0.getInt(columnIndex2) == 0) {
                    int i2 = mo13132o0.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (C5293c c5293c : m13630c) {
                        if (c5293c.f19850a == i2) {
                            arrayList.add(c5293c.f19852d);
                            arrayList2.add(c5293c.f19853k);
                        }
                    }
                    hashSet.add(new C5292b(mo13132o0.getString(columnIndex3), mo13132o0.getString(columnIndex4), mo13132o0.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            return hashSet;
        } finally {
            mo13132o0.close();
        }
    }

    /* renamed from: e */
    public static C5294d m13628e(InterfaceC5382b interfaceC5382b, String str, boolean z) {
        Cursor mo13132o0 = interfaceC5382b.mo13132o0("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = mo13132o0.getColumnIndex("seqno");
            int columnIndex2 = mo13132o0.getColumnIndex("cid");
            int columnIndex3 = mo13132o0.getColumnIndex("name");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                TreeMap treeMap = new TreeMap();
                while (mo13132o0.moveToNext()) {
                    if (mo13132o0.getInt(columnIndex2) >= 0) {
                        int i = mo13132o0.getInt(columnIndex);
                        treeMap.put(Integer.valueOf(i), mo13132o0.getString(columnIndex3));
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                return new C5294d(str, z, arrayList);
            }
            return null;
        } finally {
            mo13132o0.close();
        }
    }

    /* renamed from: f */
    public static Set<C5294d> m13627f(InterfaceC5382b interfaceC5382b, String str) {
        Cursor mo13132o0 = interfaceC5382b.mo13132o0("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = mo13132o0.getColumnIndex("name");
            int columnIndex2 = mo13132o0.getColumnIndex("origin");
            int columnIndex3 = mo13132o0.getColumnIndex("unique");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                HashSet hashSet = new HashSet();
                while (mo13132o0.moveToNext()) {
                    if ("c".equals(mo13132o0.getString(columnIndex2))) {
                        String string = mo13132o0.getString(columnIndex);
                        boolean z = true;
                        if (mo13132o0.getInt(columnIndex3) != 1) {
                            z = false;
                        }
                        C5294d m13628e = m13628e(interfaceC5382b, string, z);
                        if (m13628e == null) {
                            return null;
                        }
                        hashSet.add(m13628e);
                    }
                }
                return hashSet;
            }
            return null;
        } finally {
            mo13132o0.close();
        }
    }

    public int hashCode() {
        int i;
        int i2;
        String str = this.f19834a;
        int i3 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i4 = i * 31;
        Map<String, C5291a> map = this.f19835b;
        if (map != null) {
            i2 = map.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        Set<C5292b> set = this.f19836c;
        if (set != null) {
            i3 = set.hashCode();
        }
        return i5 + i3;
    }

    public C5290f(String str, Map<String, C5291a> map, Set<C5292b> set, Set<C5294d> set2) {
        Set<C5294d> unmodifiableSet;
        this.f19834a = str;
        this.f19835b = Collections.unmodifiableMap(map);
        this.f19836c = Collections.unmodifiableSet(set);
        if (set2 == null) {
            unmodifiableSet = null;
        } else {
            unmodifiableSet = Collections.unmodifiableSet(set2);
        }
        this.f19837d = unmodifiableSet;
    }

    /* renamed from: a */
    public static C5290f m13632a(InterfaceC5382b interfaceC5382b, String str) {
        return new C5290f(str, m13631b(interfaceC5382b, str), m13629d(interfaceC5382b, str), m13627f(interfaceC5382b, str));
    }
}
