.class public final synthetic Lr4/y02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ps2;


# instance fields
.field public final a:Lr4/c12;

.field public final b:Lr4/hm0;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/c12;Lr4/hm0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/y02;->a:Lr4/c12;

    iput-object p2, p0, Lr4/y02;->b:Lr4/hm0;

    iput-object p3, p0, Lr4/y02;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/y02;->a:Lr4/c12;

    iget-object v1, p0, Lr4/y02;->b:Lr4/hm0;

    iget-object v2, p0, Lr4/y02;->c:Ljava/lang/String;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, v1, v2}, Lr4/c12;->d(Landroid/database/sqlite/SQLiteDatabase;Lr4/hm0;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
