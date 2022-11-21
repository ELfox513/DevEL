package p148p2;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import p058f2.C3503b;
import p085i2.AbstractC4104h;
import p085i2.AbstractC4113m;
import p085i2.C4103g;
import p112l2.C4560a;
import p157q2.C5407a;
import p157q2.InterfaceC5408b;
import p166r2.InterfaceC5525a;
import p175s2.C6577a;
/* renamed from: p2.b0 */
/* loaded from: classes.dex */
public class C5316b0 implements InterfaceC5321c, InterfaceC5408b {

    /* renamed from: p */
    public static final C3503b f19919p = C3503b.m18748b("proto");

    /* renamed from: a */
    public final C5336h0 f19920a;

    /* renamed from: b */
    public final InterfaceC5525a f19921b;

    /* renamed from: d */
    public final InterfaceC5525a f19922d;

    /* renamed from: k */
    public final AbstractC5323d f19923k;

    /* renamed from: p2.b0$b */
    /* loaded from: classes.dex */
    public interface InterfaceC5318b<T, U> {
        U apply(T t);
    }

    /* renamed from: p2.b0$c */
    /* loaded from: classes.dex */
    public static class C5319c {

        /* renamed from: a */
        public final String f19924a;

        /* renamed from: b */
        public final String f19925b;

        public C5319c(String str, String str2) {
            this.f19924a = str;
            this.f19925b = str2;
        }
    }

    /* renamed from: p2.b0$d */
    /* loaded from: classes.dex */
    public interface InterfaceC5320d<T> {
        /* renamed from: a */
        T mo13416a();
    }

    /* renamed from: M */
    public static /* synthetic */ Integer m13516M(long j, SQLiteDatabase sQLiteDatabase) {
        return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", new String[]{String.valueOf(j)}));
    }

    /* renamed from: O */
    public static /* synthetic */ Object m13514O(Throwable th) {
        throw new C5407a("Timed out while trying to acquire the lock.", th);
    }

    /* renamed from: P */
    public static /* synthetic */ SQLiteDatabase m13513P(Throwable th) {
        throw new C5407a("Timed out while trying to open db.", th);
    }

    /* renamed from: X */
    public static /* synthetic */ List m13508X(SQLiteDatabase sQLiteDatabase) {
        return (List) m13476x0(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new InterfaceC5318b() { // from class: p2.y
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                List m13509W;
                m13509W = C5316b0.m13509W((Cursor) obj);
                return m13509W;
            }
        });
    }

    /* renamed from: q0 */
    public static byte[] m13485q0(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    /* renamed from: D */
    public final long m13522D() {
        return m13523C().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    /* renamed from: F */
    public final long m13521F() {
        return m13523C().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    @Override // p148p2.InterfaceC5321c
    /* renamed from: T */
    public Iterable<AbstractC4113m> mo13473T() {
        return (Iterable) m13519H(new InterfaceC5318b() { // from class: p2.j
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                List m13508X;
                m13508X = C5316b0.m13508X((SQLiteDatabase) obj);
                return m13508X;
            }
        });
    }

    @Override // p148p2.InterfaceC5321c
    /* renamed from: U */
    public Iterable<AbstractC5338i> mo13472U(final AbstractC4113m abstractC4113m) {
        return (Iterable) m13519H(new InterfaceC5318b() { // from class: p2.k
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                List m13507Y;
                m13507Y = C5316b0.this.m13507Y(abstractC4113m, (SQLiteDatabase) obj);
                return m13507Y;
            }
        });
    }

    @Override // p148p2.InterfaceC5321c
    /* renamed from: b0 */
    public AbstractC5338i mo13471b0(final AbstractC4113m abstractC4113m, final AbstractC4104h abstractC4104h) {
        C4560a.m16004b("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", abstractC4113m.mo17354d(), abstractC4104h.mo17389j(), abstractC4113m.mo17356b());
        long longValue = ((Long) m13519H(new InterfaceC5318b() { // from class: p2.o
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                Long m13501f0;
                m13501f0 = C5316b0.this.m13501f0(abstractC4113m, abstractC4104h, (SQLiteDatabase) obj);
                return m13501f0;
            }
        })).longValue();
        if (longValue < 1) {
            return null;
        }
        return AbstractC5338i.m13423a(longValue, abstractC4113m, abstractC4104h);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f19920a.close();
    }

    @Override // p148p2.InterfaceC5321c
    /* renamed from: d0 */
    public boolean mo13470d0(final AbstractC4113m abstractC4113m) {
        return ((Boolean) m13519H(new InterfaceC5318b() { // from class: p2.z
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                Boolean m13510V;
                m13510V = C5316b0.this.m13510V(abstractC4113m, (SQLiteDatabase) obj);
                return m13510V;
            }
        })).booleanValue();
    }

    @Override // p148p2.InterfaceC5321c
    /* renamed from: h0 */
    public void mo13469h0(final AbstractC4113m abstractC4113m, final long j) {
        m13519H(new InterfaceC5318b() { // from class: p2.a0
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                Object m13493l0;
                m13493l0 = C5316b0.m13493l0(j, abstractC4113m, (SQLiteDatabase) obj);
                return m13493l0;
            }
        });
    }

    /* renamed from: w */
    public final void m13477w(final SQLiteDatabase sQLiteDatabase) {
        m13480t0(new InterfaceC5320d() { // from class: p2.v
            @Override // p148p2.C5316b0.InterfaceC5320d
            /* renamed from: a */
            public final Object mo13416a() {
                Object beginTransaction;
                beginTransaction = sQLiteDatabase.beginTransaction();
                return beginTransaction;
            }
        }, new InterfaceC5318b() { // from class: p2.w
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                Object m13514O;
                m13514O = C5316b0.m13514O((Throwable) obj);
                return m13514O;
            }
        });
    }

    /* renamed from: W */
    public static /* synthetic */ List m13509W(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(AbstractC4113m.m17357a().mo17351b(cursor.getString(1)).mo17349d(C6577a.m3881b(cursor.getInt(2))).mo17350c(m13485q0(cursor.getString(3))).mo17352a());
        }
        return arrayList;
    }

    /* renamed from: i0 */
    public static /* synthetic */ byte[] m13497i0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i += blob.length;
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            byte[] bArr2 = (byte[]) arrayList.get(i3);
            System.arraycopy(bArr2, 0, bArr, i2, bArr2.length);
            i2 += bArr2.length;
        }
        return bArr;
    }

    /* renamed from: l0 */
    public static /* synthetic */ Object m13493l0(long j, AbstractC4113m abstractC4113m, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{abstractC4113m.mo17356b(), String.valueOf(C6577a.m3882a(abstractC4113m.mo17354d()))}) < 1) {
            contentValues.put("backend_name", abstractC4113m.mo17356b());
            contentValues.put("priority", Integer.valueOf(C6577a.m3882a(abstractC4113m.mo17354d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    /* renamed from: u0 */
    public static C3503b m13479u0(String str) {
        if (str == null) {
            return f19919p;
        }
        return C3503b.m18748b(str);
    }

    /* renamed from: v0 */
    public static String m13478v0(Iterable<AbstractC5338i> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<AbstractC5338i> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().mo13421c());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: C */
    public SQLiteDatabase m13523C() {
        final C5336h0 c5336h0 = this.f19920a;
        c5336h0.getClass();
        return (SQLiteDatabase) m13480t0(new InterfaceC5320d() { // from class: p2.s
            @Override // p148p2.C5316b0.InterfaceC5320d
            /* renamed from: a */
            public final Object mo13416a() {
                return C5336h0.this.getWritableDatabase();
            }
        }, new InterfaceC5318b() { // from class: p2.t
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                SQLiteDatabase m13513P;
                m13513P = C5316b0.m13513P((Throwable) obj);
                return m13513P;
            }
        });
    }

    /* renamed from: G */
    public final Long m13520G(SQLiteDatabase sQLiteDatabase, AbstractC4113m abstractC4113m) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(abstractC4113m.mo17356b(), String.valueOf(C6577a.m3882a(abstractC4113m.mo17354d()))));
        if (abstractC4113m.mo17355c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(abstractC4113m.mo17355c(), 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) m13476x0(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new InterfaceC5318b() { // from class: p2.r
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                Long m13511S;
                m13511S = C5316b0.m13511S((Cursor) obj);
                return m13511S;
            }
        });
    }

    /* renamed from: m0 */
    public final List<AbstractC5338i> m13491m0(SQLiteDatabase sQLiteDatabase, final AbstractC4113m abstractC4113m) {
        final ArrayList arrayList = new ArrayList();
        Long m13520G = m13520G(sQLiteDatabase, abstractC4113m);
        if (m13520G == null) {
            return arrayList;
        }
        m13476x0(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{m13520G.toString()}, null, null, null, String.valueOf(this.f19923k.mo13459d())), new InterfaceC5318b() { // from class: p2.n
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                Object m13506Z;
                m13506Z = C5316b0.this.m13506Z(arrayList, abstractC4113m, (Cursor) obj);
                return m13506Z;
            }
        });
        return arrayList;
    }

    /* renamed from: p0 */
    public final Map<Long, Set<C5319c>> m13487p0(SQLiteDatabase sQLiteDatabase, List<AbstractC5338i> list) {
        final HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).mo13421c());
            if (i < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        m13476x0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new InterfaceC5318b() { // from class: p2.m
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                Object m13505a0;
                m13505a0 = C5316b0.m13505a0(hashMap, (Cursor) obj);
                return m13505a0;
            }
        });
        return hashMap;
    }

    /* renamed from: t0 */
    public final <T> T m13480t0(InterfaceC5320d<T> interfaceC5320d, InterfaceC5318b<Throwable, T> interfaceC5318b) {
        long time = this.f19922d.getTime();
        while (true) {
            try {
                return interfaceC5320d.mo13416a();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.f19922d.getTime() >= this.f19923k.mo13461b() + time) {
                    return interfaceC5318b.apply(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // p148p2.InterfaceC5321c
    /* renamed from: v */
    public int mo13468v() {
        final long time = this.f19921b.getTime() - this.f19923k.mo13460c();
        return ((Integer) m13519H(new InterfaceC5318b() { // from class: p2.x
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                Integer m13516M;
                m13516M = C5316b0.m13516M(time, (SQLiteDatabase) obj);
                return m13516M;
            }
        })).intValue();
    }

    public C5316b0(InterfaceC5525a interfaceC5525a, InterfaceC5525a interfaceC5525a2, AbstractC5323d abstractC5323d, C5336h0 c5336h0) {
        this.f19920a = c5336h0;
        this.f19921b = interfaceC5525a;
        this.f19922d = interfaceC5525a2;
        this.f19923k = abstractC5323d;
    }

    /* renamed from: R */
    public static /* synthetic */ Long m13512R(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* renamed from: S */
    public static /* synthetic */ Long m13511S(Cursor cursor) {
        if (!cursor.moveToNext()) {
            return null;
        }
        return Long.valueOf(cursor.getLong(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public /* synthetic */ Boolean m13510V(AbstractC4113m abstractC4113m, SQLiteDatabase sQLiteDatabase) {
        Long m13520G = m13520G(sQLiteDatabase, abstractC4113m);
        if (m13520G == null) {
            return Boolean.FALSE;
        }
        return (Boolean) m13476x0(m13523C().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{m13520G.toString()}), new InterfaceC5318b() { // from class: p2.p
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Cursor) obj).moveToNext());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y */
    public /* synthetic */ List m13507Y(AbstractC4113m abstractC4113m, SQLiteDatabase sQLiteDatabase) {
        List<AbstractC5338i> m13491m0 = m13491m0(sQLiteDatabase, abstractC4113m);
        return m13517L(m13491m0, m13487p0(sQLiteDatabase, m13491m0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public /* synthetic */ Object m13506Z(List list, AbstractC4113m abstractC4113m, Cursor cursor) {
        while (cursor.moveToNext()) {
            boolean z = false;
            long j = cursor.getLong(0);
            if (cursor.getInt(7) != 0) {
                z = true;
            }
            AbstractC4104h.AbstractC4105a mo17376k = AbstractC4104h.m17398a().mo17377j(cursor.getString(1)).mo17378i(cursor.getLong(2)).mo17376k(cursor.getLong(3));
            if (z) {
                mo17376k.mo17379h(new C4103g(m13479u0(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                mo17376k.mo17379h(new C4103g(m13479u0(cursor.getString(4)), m13483r0(j)));
            }
            if (!cursor.isNull(6)) {
                mo17376k.mo17380g(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(AbstractC5338i.m13423a(j, abstractC4113m, mo17376k.mo17383d()));
        }
        return null;
    }

    /* renamed from: a0 */
    public static /* synthetic */ Object m13505a0(Map map, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j));
            if (set == null) {
                set = new HashSet();
                map.put(Long.valueOf(j), set);
            }
            set.add(new C5319c(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public /* synthetic */ Long m13501f0(AbstractC4113m abstractC4113m, AbstractC4104h abstractC4104h, SQLiteDatabase sQLiteDatabase) {
        boolean z;
        byte[] bArr;
        if (m13518J()) {
            return -1L;
        }
        long m13475y = m13475y(sQLiteDatabase, abstractC4113m);
        int mo13458e = this.f19923k.mo13458e();
        byte[] m17400a = abstractC4104h.mo17394e().m17400a();
        if (m17400a.length <= mo13458e) {
            z = true;
        } else {
            z = false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(m13475y));
        contentValues.put("transport_name", abstractC4104h.mo17389j());
        contentValues.put("timestamp_ms", Long.valueOf(abstractC4104h.mo17393f()));
        contentValues.put("uptime_ms", Long.valueOf(abstractC4104h.mo17388k()));
        contentValues.put("payload_encoding", abstractC4104h.mo17394e().m17399b().m18749a());
        contentValues.put("code", abstractC4104h.mo17395d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z));
        if (z) {
            bArr = m17400a;
        } else {
            bArr = new byte[0];
        }
        contentValues.put("payload", bArr);
        long insert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z) {
            double length = m17400a.length;
            double d = mo13458e;
            Double.isNaN(length);
            Double.isNaN(d);
            int ceil = (int) Math.ceil(length / d);
            for (int i = 1; i <= ceil; i++) {
                byte[] copyOfRange = Arrays.copyOfRange(m17400a, (i - 1) * mo13458e, Math.min(i * mo13458e, m17400a.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i));
                contentValues2.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : abstractC4104h.m17390i().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put("value", entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    /* renamed from: j0 */
    public static /* synthetic */ Object m13495j0(String str, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* renamed from: x0 */
    public static <T> T m13476x0(Cursor cursor, InterfaceC5318b<Cursor, T> interfaceC5318b) {
        try {
            return interfaceC5318b.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    /* renamed from: H */
    public <T> T m13519H(InterfaceC5318b<SQLiteDatabase, T> interfaceC5318b) {
        SQLiteDatabase m13523C = m13523C();
        m13523C.beginTransaction();
        try {
            T apply = interfaceC5318b.apply(m13523C);
            m13523C.setTransactionSuccessful();
            return apply;
        } finally {
            m13523C.endTransaction();
        }
    }

    /* renamed from: J */
    public final boolean m13518J() {
        if (m13522D() * m13521F() >= this.f19923k.mo13457f()) {
            return true;
        }
        return false;
    }

    @Override // p148p2.InterfaceC5321c
    /* renamed from: K0 */
    public void mo13474K0(Iterable<AbstractC5338i> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        final String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + m13478v0(iterable);
        m13519H(new InterfaceC5318b() { // from class: p2.l
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                Object m13495j0;
                m13495j0 = C5316b0.m13495j0(str, (SQLiteDatabase) obj);
                return m13495j0;
            }
        });
    }

    /* renamed from: L */
    public final List<AbstractC5338i> m13517L(List<AbstractC5338i> list, Map<Long, Set<C5319c>> map) {
        ListIterator<AbstractC5338i> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            AbstractC5338i next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.mo13421c()))) {
                AbstractC4104h.AbstractC4105a m17387l = next.mo13422b().m17387l();
                for (C5319c c5319c : map.get(Long.valueOf(next.mo13421c()))) {
                    m17387l.m17384c(c5319c.f19924a, c5319c.f19925b);
                }
                listIterator.set(AbstractC5338i.m13423a(next.mo13421c(), next.mo13420d(), m17387l.mo17383d()));
            }
        }
        return list;
    }

    @Override // p157q2.InterfaceC5408b
    /* renamed from: c */
    public <T> T mo13329c(InterfaceC5408b.InterfaceC5409a<T> interfaceC5409a) {
        SQLiteDatabase m13523C = m13523C();
        m13477w(m13523C);
        try {
            T mo13328d = interfaceC5409a.mo13328d();
            m13523C.setTransactionSuccessful();
            return mo13328d;
        } finally {
            m13523C.endTransaction();
        }
    }

    /* renamed from: r0 */
    public final byte[] m13483r0(long j) {
        return (byte[]) m13476x0(m13523C().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), new InterfaceC5318b() { // from class: p2.q
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                byte[] m13497i0;
                m13497i0 = C5316b0.m13497i0((Cursor) obj);
                return m13497i0;
            }
        });
    }

    @Override // p148p2.InterfaceC5321c
    /* renamed from: w0 */
    public long mo13467w0(AbstractC4113m abstractC4113m) {
        return ((Long) m13476x0(m13523C().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{abstractC4113m.mo17356b(), String.valueOf(C6577a.m3882a(abstractC4113m.mo17354d()))}), new InterfaceC5318b() { // from class: p2.u
            @Override // p148p2.C5316b0.InterfaceC5318b
            public final Object apply(Object obj) {
                Long m13512R;
                m13512R = C5316b0.m13512R((Cursor) obj);
                return m13512R;
            }
        })).longValue();
    }

    /* renamed from: y */
    public final long m13475y(SQLiteDatabase sQLiteDatabase, AbstractC4113m abstractC4113m) {
        Long m13520G = m13520G(sQLiteDatabase, abstractC4113m);
        if (m13520G != null) {
            return m13520G.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", abstractC4113m.mo17356b());
        contentValues.put("priority", Integer.valueOf(C6577a.m3882a(abstractC4113m.mo17354d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (abstractC4113m.mo17355c() != null) {
            contentValues.put("extras", Base64.encodeToString(abstractC4113m.mo17355c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    @Override // p148p2.InterfaceC5321c
    /* renamed from: z */
    public void mo13466z(Iterable<AbstractC5338i> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        m13523C().compileStatement("DELETE FROM events WHERE _id in " + m13478v0(iterable)).execute();
    }
}
