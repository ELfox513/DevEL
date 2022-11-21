.class public final synthetic Lr4/zz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/xz1;


# direct methods
.method public constructor <init>(Lr4/xz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zz1;->a:Lr4/xz1;

    return-void
.end method

.method public static a(Lr4/xz1;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lr4/zz1;

    invoke-direct {v0, p0}, Lr4/zz1;-><init>(Lr4/xz1;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/zz1;->a:Lr4/xz1;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
