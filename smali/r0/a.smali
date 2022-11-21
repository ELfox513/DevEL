.class public Lr0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;


# static fields
.field public static final b:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, " OR ROLLBACK "

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, " OR ABORT "

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, " OR FAIL "

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, " OR IGNORE "

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, " OR REPLACE "

    aput-object v3, v0, v1

    sput-object v0, Lr0/a;->b:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lr0/a;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public C0(Lq0/e;)Landroid/database/Cursor;
    .locals 4

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lr0/a$a;

    invoke-direct {v1, p0, p1}, Lr0/a$a;-><init>(Lr0/a;Lq0/e;)V

    invoke-interface {p1}, Lq0/e;->d()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lr0/a;->d:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public D0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E0()Z
    .locals 1

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public K(Ljava/lang/String;)Lq0/f;
    .locals 2

    new-instance v0, Lr0/e;

    iget-object v1, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-direct {v0, p1}, Lr0/e;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public e0()V
    .locals 1

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public g0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public o0(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    new-instance v0, Lq0/a;

    invoke-direct {v0, p1}, Lq0/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lr0/a;->C0(Lq0/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public s0()V
    .locals 1

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public y0(Lq0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    iget-object v0, p0, Lr0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lr0/a$b;

    invoke-direct {v1, p0, p1}, Lr0/a$b;-><init>(Lr0/a;Lq0/e;)V

    invoke-interface {p1}, Lq0/e;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lr0/a;->d:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
