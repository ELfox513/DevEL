.class public final Lr4/c12;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/i83;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/i83;)V
    .locals 3

    sget-object v0, Lr4/rz;->Z5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "AdMobOfflineBufferedPings.db"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lr4/c12;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/c12;->b:Lr4/i83;

    return-void
.end method

.method public static final synthetic i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lr4/hm0;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "event_state"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "offline_buffered_pings"

    const-string v2, "gws_query_id = ?"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0, p2}, Lr4/c12;->m(Landroid/database/sqlite/SQLiteDatabase;Lr4/hm0;)V

    return-void
.end method

.method public static final synthetic j(Lr4/hm0;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 0

    invoke-static {p1, p0}, Lr4/c12;->m(Landroid/database/sqlite/SQLiteDatabase;Lr4/hm0;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final k(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "offline_buffered_pings"

    const-string v1, "gws_query_id = ? AND event_state = ?"

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static m(Landroid/database/sqlite/SQLiteDatabase;Lr4/hm0;)V
    .locals 12

    const-string v0, "url"

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x1

    :try_start_0
    new-array v4, v1, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v4, v11

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "event_state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "offline_buffered_pings"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp ASC"

    const/4 v10, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v0, "event_state = ?"

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v11

    const-string v1, "offline_buffered_pings"

    invoke-virtual {p0, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    if-ge v11, v3, :cond_2

    aget-object p0, v4, v11

    invoke-virtual {p1, p0}, Lr4/hm0;->q(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final c(Lr4/ps2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/ps2<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/c12;->b:Lr4/i83;

    new-instance v1, Lr4/v02;

    invoke-direct {v1, p0}, Lr4/v02;-><init>(Lr4/c12;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/b12;

    invoke-direct {v1, p0, p1}, Lr4/b12;-><init>(Lr4/c12;Lr4/ps2;)V

    iget-object p1, p0, Lr4/c12;->b:Lr4/i83;

    invoke-static {v0, v1, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final d(Landroid/database/sqlite/SQLiteDatabase;Lr4/hm0;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/c12;->b:Lr4/i83;

    new-instance v1, Lr4/x02;

    invoke-direct {v1, p1, p3, p2}, Lr4/x02;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lr4/hm0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lr4/hm0;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lr4/y02;

    invoke-direct {v0, p0, p1, p2}, Lr4/y02;-><init>(Lr4/c12;Lr4/hm0;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lr4/c12;->c(Lr4/ps2;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lr4/z02;

    invoke-direct {v0, p0, p1}, Lr4/z02;-><init>(Lr4/c12;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lr4/c12;->c(Lr4/ps2;)V

    return-void
.end method

.method public final g(Lr4/e12;)V
    .locals 1

    new-instance v0, Lr4/a12;

    invoke-direct {v0, p0, p1}, Lr4/a12;-><init>(Lr4/c12;Lr4/e12;)V

    invoke-virtual {p0, v0}, Lr4/c12;->c(Lr4/ps2;)V

    return-void
.end method

.method public final synthetic h(Lr4/e12;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-wide v1, p1, Lr4/e12;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p1, Lr4/e12;->b:Ljava/lang/String;

    const-string v2, "gws_query_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lr4/e12;->c:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Lr4/e12;->d:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "event_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offline_buffered_pings"

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object p1, p0, Lr4/c12;->a:Landroid/content/Context;

    invoke-static {p1}, Lb3/k2;->d(Landroid/content/Context;)Lb3/y0;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p2, p0, Lr4/c12;->a:Landroid/content/Context;

    invoke-static {p2}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lb3/y0;->zzf(Lf4/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to schedule offline ping sender."

    invoke-static {p2, p1}, Lb3/w1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS offline_buffered_pings"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS offline_buffered_pings"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
