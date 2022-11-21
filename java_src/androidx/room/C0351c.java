package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import com.badlogic.gdx.Net;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
import net.bytebuddy.utility.JavaConstant;
import p109l.C4533b;
import p128n0.AbstractC4676e;
import p128n0.C4674c;
import p155q0.C5381a;
import p155q0.InterfaceC5382b;
import p155q0.InterfaceC5390f;
/* renamed from: androidx.room.c */
/* loaded from: classes.dex */
public class C0351c {

    /* renamed from: m */
    public static final String[] f1261m = {"UPDATE", Net.HttpMethods.DELETE, "INSERT"};

    /* renamed from: b */
    public final String[] f1263b;

    /* renamed from: c */
    public Map<String, Set<String>> f1264c;

    /* renamed from: d */
    public final AbstractC4676e f1265d;

    /* renamed from: g */
    public volatile InterfaceC5390f f1268g;

    /* renamed from: h */
    public C0353b f1269h;

    /* renamed from: i */
    public final C4674c f1270i;

    /* renamed from: k */
    public C0356d f1272k;

    /* renamed from: e */
    public AtomicBoolean f1266e = new AtomicBoolean(false);

    /* renamed from: f */
    public volatile boolean f1267f = false;
    @SuppressLint({"RestrictedApi"})

    /* renamed from: j */
    public final C4533b<AbstractC0354c, C0355d> f1271j = new C4533b<>();

    /* renamed from: l */
    public Runnable f1273l = new RunnableC0352a();

    /* renamed from: a */
    public final HashMap<String, Integer> f1262a = new HashMap<>();

    /* renamed from: androidx.room.c$a */
    /* loaded from: classes.dex */
    public class RunnableC0352a implements Runnable {
        public RunnableC0352a() {
        }

        /* renamed from: a */
        public final Set<Integer> m26728a() {
            HashSet hashSet = new HashSet();
            Cursor m15815p = C0351c.this.f1265d.m15815p(new C5381a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
            while (m15815p.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(m15815p.getInt(0)));
                } catch (Throwable th) {
                    m15815p.close();
                    throw th;
                }
            }
            m15815p.close();
            if (!hashSet.isEmpty()) {
                C0351c.this.f1268g.mo13117I();
            }
            return hashSet;
        }

        @Override // java.lang.Runnable
        public void run() {
            Lock m15823h = C0351c.this.f1265d.m15823h();
            Set<Integer> set = null;
            try {
                try {
                    m15823h.lock();
                } finally {
                    m15823h.unlock();
                }
            } catch (SQLiteException | IllegalStateException e) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
            }
            if (!C0351c.this.m26739c()) {
                return;
            }
            if (!C0351c.this.f1266e.compareAndSet(true, false)) {
                return;
            }
            if (C0351c.this.f1265d.m15820k()) {
                return;
            }
            AbstractC4676e abstractC4676e = C0351c.this.f1265d;
            if (abstractC4676e.f18764g) {
                InterfaceC5382b mo13127n0 = abstractC4676e.m15822i().mo13127n0();
                mo13127n0.mo13130u();
                try {
                    set = m26728a();
                    mo13127n0.mo13134e0();
                    mo13127n0.mo13131s0();
                } catch (Throwable th) {
                    mo13127n0.mo13131s0();
                    throw th;
                }
            } else {
                set = m26728a();
            }
            if (set != null && !set.isEmpty()) {
                synchronized (C0351c.this.f1271j) {
                    Iterator<Map.Entry<AbstractC0354c, C0355d>> it = C0351c.this.f1271j.iterator();
                    while (it.hasNext()) {
                        it.next().getValue().m26723a(set);
                    }
                }
            }
        }
    }

    /* renamed from: androidx.room.c$d */
    /* loaded from: classes.dex */
    public static class C0355d {

        /* renamed from: a */
        public final int[] f1281a;

        /* renamed from: b */
        public final String[] f1282b;

        /* renamed from: c */
        public final AbstractC0354c f1283c;

        /* renamed from: d */
        public final Set<String> f1284d;

        /* renamed from: a */
        public void m26723a(Set<Integer> set) {
            int length = this.f1281a.length;
            Set<String> set2 = null;
            for (int i = 0; i < length; i++) {
                if (set.contains(Integer.valueOf(this.f1281a[i]))) {
                    if (length == 1) {
                        set2 = this.f1284d;
                    } else {
                        if (set2 == null) {
                            set2 = new HashSet<>(length);
                        }
                        set2.add(this.f1282b[i]);
                    }
                }
            }
            if (set2 != null) {
                this.f1283c.mo26719b(set2);
            }
        }

        /* renamed from: b */
        public void m26722b(String[] strArr) {
            Set<String> set = null;
            if (this.f1282b.length == 1) {
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    } else if (strArr[i].equalsIgnoreCase(this.f1282b[0])) {
                        set = this.f1284d;
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                HashSet hashSet = new HashSet();
                for (String str : strArr) {
                    String[] strArr2 = this.f1282b;
                    int length2 = strArr2.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length2) {
                            String str2 = strArr2[i2];
                            if (str2.equalsIgnoreCase(str)) {
                                hashSet.add(str2);
                                break;
                            }
                            i2++;
                        }
                    }
                }
                if (hashSet.size() > 0) {
                    set = hashSet;
                }
            }
            if (set != null) {
                this.f1283c.mo26719b(set);
            }
        }

        public C0355d(AbstractC0354c abstractC0354c, int[] iArr, String[] strArr) {
            this.f1283c = abstractC0354c;
            this.f1281a = iArr;
            this.f1282b = strArr;
            if (iArr.length == 1) {
                HashSet hashSet = new HashSet();
                hashSet.add(strArr[0]);
                this.f1284d = Collections.unmodifiableSet(hashSet);
                return;
            }
            this.f1284d = null;
        }
    }

    /* renamed from: d */
    public void m26738d(InterfaceC5382b interfaceC5382b) {
        synchronized (this) {
            if (this.f1267f) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            interfaceC5382b.mo13140B("PRAGMA temp_store = MEMORY;");
            interfaceC5382b.mo13140B("PRAGMA recursive_triggers='ON';");
            interfaceC5382b.mo13140B("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            m26729m(interfaceC5382b);
            this.f1268g = interfaceC5382b.mo13136K("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            this.f1267f = true;
        }
    }

    /* renamed from: androidx.room.c$b */
    /* loaded from: classes.dex */
    public static class C0353b {

        /* renamed from: a */
        public final long[] f1275a;

        /* renamed from: b */
        public final boolean[] f1276b;

        /* renamed from: c */
        public final int[] f1277c;

        /* renamed from: d */
        public boolean f1278d;

        /* renamed from: e */
        public boolean f1279e;

        /* renamed from: a */
        public int[] m26727a() {
            boolean z;
            synchronized (this) {
                if (this.f1278d && !this.f1279e) {
                    int length = this.f1275a.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i < length) {
                            if (this.f1275a[i] > 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            boolean[] zArr = this.f1276b;
                            if (z != zArr[i]) {
                                int[] iArr = this.f1277c;
                                if (!z) {
                                    i2 = 2;
                                }
                                iArr[i] = i2;
                            } else {
                                this.f1277c[i] = 0;
                            }
                            zArr[i] = z;
                            i++;
                        } else {
                            this.f1279e = true;
                            this.f1278d = false;
                            return this.f1277c;
                        }
                    }
                }
                return null;
            }
        }

        /* renamed from: b */
        public boolean m26726b(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long[] jArr = this.f1275a;
                    long j = jArr[i];
                    jArr[i] = 1 + j;
                    if (j == 0) {
                        this.f1278d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        /* renamed from: c */
        public boolean m26725c(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long[] jArr = this.f1275a;
                    long j = jArr[i];
                    jArr[i] = j - 1;
                    if (j == 1) {
                        this.f1278d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        /* renamed from: d */
        public void m26724d() {
            synchronized (this) {
                this.f1279e = false;
            }
        }

        public C0353b(int i) {
            long[] jArr = new long[i];
            this.f1275a = jArr;
            boolean[] zArr = new boolean[i];
            this.f1276b = zArr;
            this.f1277c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }
    }

    /* renamed from: androidx.room.c$c */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0354c {

        /* renamed from: a */
        public final String[] f1280a;

        /* renamed from: a */
        public boolean mo26720a() {
            return false;
        }

        /* renamed from: b */
        public abstract void mo26719b(Set<String> set);

        public AbstractC0354c(String[] strArr) {
            this.f1280a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
    }

    /* renamed from: b */
    public static void m26740b(StringBuilder sb, String str, String str2) {
        sb.append("`");
        sb.append("room_table_modification_trigger_");
        sb.append(str);
        sb.append(JavaConstant.Dynamic.DEFAULT_NAME);
        sb.append(str2);
        sb.append("`");
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: a */
    public void m26741a(AbstractC0354c abstractC0354c) {
        C0355d mo16064l;
        String[] m26734h = m26734h(abstractC0354c.f1280a);
        int[] iArr = new int[m26734h.length];
        int length = m26734h.length;
        for (int i = 0; i < length; i++) {
            Integer num = this.f1262a.get(m26734h[i].toLowerCase(Locale.US));
            if (num != null) {
                iArr[i] = num.intValue();
            } else {
                throw new IllegalArgumentException("There is no table with name " + m26734h[i]);
            }
        }
        C0355d c0355d = new C0355d(abstractC0354c, iArr, m26734h);
        synchronized (this.f1271j) {
            mo16064l = this.f1271j.mo16064l(abstractC0354c, c0355d);
        }
        if (mo16064l == null && this.f1269h.m26726b(iArr)) {
            m26730l();
        }
    }

    /* renamed from: c */
    public boolean m26739c() {
        if (!this.f1265d.m15816o()) {
            return false;
        }
        if (!this.f1267f) {
            this.f1265d.m15822i().mo13127n0();
        }
        if (!this.f1267f) {
            Log.e("ROOM", "database is not initialized even though it is open");
            return false;
        }
        return true;
    }

    /* renamed from: e */
    public void m26737e(String... strArr) {
        synchronized (this.f1271j) {
            Iterator<Map.Entry<AbstractC0354c, C0355d>> it = this.f1271j.iterator();
            while (it.hasNext()) {
                Map.Entry<AbstractC0354c, C0355d> next = it.next();
                if (!next.getKey().mo26720a()) {
                    next.getValue().m26722b(strArr);
                }
            }
        }
    }

    /* renamed from: f */
    public void m26736f() {
        if (this.f1266e.compareAndSet(false, true)) {
            this.f1265d.m15821j().execute(this.f1273l);
        }
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: g */
    public void m26735g(AbstractC0354c abstractC0354c) {
        C0355d mo16063m;
        synchronized (this.f1271j) {
            mo16063m = this.f1271j.mo16063m(abstractC0354c);
        }
        if (mo16063m != null && this.f1269h.m26725c(mo16063m.f1281a)) {
            m26730l();
        }
    }

    /* renamed from: h */
    public final String[] m26734h(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f1264c.containsKey(lowerCase)) {
                hashSet.addAll(this.f1264c.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    /* renamed from: i */
    public void m26733i(Context context, String str) {
        this.f1272k = new C0356d(context, str, this, this.f1265d.m15821j());
    }

    /* renamed from: j */
    public final void m26732j(InterfaceC5382b interfaceC5382b, int i) {
        String[] strArr;
        interfaceC5382b.mo13140B("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
        String str = this.f1263b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f1261m) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            m26740b(sb, str, str2);
            sb.append(" AFTER ");
            sb.append(str2);
            sb.append(" ON `");
            sb.append(str);
            sb.append("` BEGIN UPDATE ");
            sb.append("room_table_modification_log");
            sb.append(" SET ");
            sb.append("invalidated");
            sb.append(" = 1");
            sb.append(" WHERE ");
            sb.append("table_id");
            sb.append(" = ");
            sb.append(i);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            interfaceC5382b.mo13140B(sb.toString());
        }
    }

    /* renamed from: k */
    public final void m26731k(InterfaceC5382b interfaceC5382b, int i) {
        String[] strArr;
        String str = this.f1263b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f1261m) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            m26740b(sb, str, str2);
            interfaceC5382b.mo13140B(sb.toString());
        }
    }

    /* renamed from: l */
    public void m26730l() {
        if (!this.f1265d.m15816o()) {
            return;
        }
        m26729m(this.f1265d.m15822i().mo13127n0());
    }

    public C0351c(AbstractC4676e abstractC4676e, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f1265d = abstractC4676e;
        this.f1269h = new C0353b(strArr.length);
        this.f1264c = map2;
        this.f1270i = new C4674c(abstractC4676e);
        int length = strArr.length;
        this.f1263b = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.f1262a.put(lowerCase, Integer.valueOf(i));
            String str2 = map.get(strArr[i]);
            if (str2 != null) {
                this.f1263b[i] = str2.toLowerCase(locale);
            } else {
                this.f1263b[i] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            Locale locale2 = Locale.US;
            String lowerCase2 = entry.getValue().toLowerCase(locale2);
            if (this.f1262a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                HashMap<String, Integer> hashMap = this.f1262a;
                hashMap.put(lowerCase3, hashMap.get(lowerCase2));
            }
        }
    }

    /* renamed from: m */
    public void m26729m(InterfaceC5382b interfaceC5382b) {
        if (interfaceC5382b.mo13137E0()) {
            return;
        }
        while (true) {
            try {
                Lock m15823h = this.f1265d.m15823h();
                m15823h.lock();
                try {
                    int[] m26727a = this.f1269h.m26727a();
                    if (m26727a == null) {
                        return;
                    }
                    int length = m26727a.length;
                    interfaceC5382b.mo13130u();
                    for (int i = 0; i < length; i++) {
                        int i2 = m26727a[i];
                        if (i2 != 1) {
                            if (i2 == 2) {
                                m26731k(interfaceC5382b, i);
                            }
                        } else {
                            m26732j(interfaceC5382b, i);
                        }
                    }
                    interfaceC5382b.mo13134e0();
                    interfaceC5382b.mo13131s0();
                    this.f1269h.m26724d();
                } finally {
                    m15823h.unlock();
                }
            } catch (SQLiteException | IllegalStateException e) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                return;
            }
        }
    }
}
