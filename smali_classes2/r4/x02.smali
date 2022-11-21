.class public final synthetic Lr4/x02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteDatabase;

.field public final b:Ljava/lang/String;

.field public final d:Lr4/hm0;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lr4/hm0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/x02;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lr4/x02;->b:Ljava/lang/String;

    iput-object p3, p0, Lr4/x02;->d:Lr4/hm0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/x02;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lr4/x02;->b:Ljava/lang/String;

    iget-object v2, p0, Lr4/x02;->d:Lr4/hm0;

    invoke-static {v0, v1, v2}, Lr4/c12;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lr4/hm0;)V

    return-void
.end method
