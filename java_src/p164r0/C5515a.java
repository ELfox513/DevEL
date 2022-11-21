package p164r0;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.os.CancellationSignal;
import android.util.Pair;
import java.util.List;
import p155q0.C5381a;
import p155q0.InterfaceC5382b;
import p155q0.InterfaceC5389e;
import p155q0.InterfaceC5390f;
/* renamed from: r0.a */
/* loaded from: classes.dex */
public class C5515a implements InterfaceC5382b {

    /* renamed from: b */
    public static final String[] f20272b = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* renamed from: d */
    public static final String[] f20273d = new String[0];

    /* renamed from: a */
    public final SQLiteDatabase f20274a;

    /* renamed from: r0.a$a */
    /* loaded from: classes.dex */
    public class C5516a implements SQLiteDatabase.CursorFactory {

        /* renamed from: a */
        public final /* synthetic */ InterfaceC5389e f20275a;

        public C5516a(InterfaceC5389e interfaceC5389e) {
            this.f20275a = interfaceC5389e;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f20275a.mo13350c(new C5522d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    /* renamed from: r0.a$b */
    /* loaded from: classes.dex */
    public class C5517b implements SQLiteDatabase.CursorFactory {

        /* renamed from: a */
        public final /* synthetic */ InterfaceC5389e f20277a;

        public C5517b(InterfaceC5389e interfaceC5389e) {
            this.f20277a = interfaceC5389e;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f20277a.mo13350c(new C5522d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    @Override // p155q0.InterfaceC5382b
    /* renamed from: A */
    public List<Pair<String, String>> mo13141A() {
        return this.f20274a.getAttachedDbs();
    }

    @Override // p155q0.InterfaceC5382b
    /* renamed from: B */
    public void mo13140B(String str) {
        this.f20274a.execSQL(str);
    }

    @Override // p155q0.InterfaceC5382b
    /* renamed from: D0 */
    public String mo13138D0() {
        return this.f20274a.getPath();
    }

    @Override // p155q0.InterfaceC5382b
    /* renamed from: E0 */
    public boolean mo13137E0() {
        return this.f20274a.inTransaction();
    }

    @Override // p155q0.InterfaceC5382b
    /* renamed from: K */
    public InterfaceC5390f mo13136K(String str) {
        return new C5523e(this.f20274a.compileStatement(str));
    }

    /* renamed from: c */
    public boolean m13135c(SQLiteDatabase sQLiteDatabase) {
        return this.f20274a == sQLiteDatabase;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f20274a.close();
    }

    @Override // p155q0.InterfaceC5382b
    /* renamed from: e0 */
    public void mo13134e0() {
        this.f20274a.setTransactionSuccessful();
    }

    @Override // p155q0.InterfaceC5382b
    /* renamed from: g0 */
    public void mo13133g0(String str, Object[] objArr) {
        this.f20274a.execSQL(str, objArr);
    }

    @Override // p155q0.InterfaceC5382b
    public boolean isOpen() {
        return this.f20274a.isOpen();
    }

    @Override // p155q0.InterfaceC5382b
    /* renamed from: o0 */
    public Cursor mo13132o0(String str) {
        return mo13139C0(new C5381a(str));
    }

    @Override // p155q0.InterfaceC5382b
    /* renamed from: s0 */
    public void mo13131s0() {
        this.f20274a.endTransaction();
    }

    @Override // p155q0.InterfaceC5382b
    /* renamed from: u */
    public void mo13130u() {
        this.f20274a.beginTransaction();
    }

    @Override // p155q0.InterfaceC5382b
    /* renamed from: C0 */
    public Cursor mo13139C0(InterfaceC5389e interfaceC5389e) {
        return this.f20274a.rawQueryWithFactory(new C5516a(interfaceC5389e), interfaceC5389e.mo13349d(), f20273d, null);
    }

    @Override // p155q0.InterfaceC5382b
    /* renamed from: y0 */
    public Cursor mo13129y0(InterfaceC5389e interfaceC5389e, CancellationSignal cancellationSignal) {
        return this.f20274a.rawQueryWithFactory(new C5517b(interfaceC5389e), interfaceC5389e.mo13349d(), f20273d, null, cancellationSignal);
    }

    public C5515a(SQLiteDatabase sQLiteDatabase) {
        this.f20274a = sQLiteDatabase;
    }
}
