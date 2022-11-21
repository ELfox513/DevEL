.class public final synthetic Lr4/q02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ps2;


# instance fields
.field public final a:Lr4/u02;

.field public final b:Z


# direct methods
.method public constructor <init>(Lr4/u02;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/q02;->a:Lr4/u02;

    iput-boolean p2, p0, Lr4/q02;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/q02;->a:Lr4/u02;

    iget-boolean v1, p0, Lr4/q02;->b:Z

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lr4/u02;->b(ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
