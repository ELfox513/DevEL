.class public final synthetic Lr4/ex2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ex2;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lr4/ex2;->b:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/ex2;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lr4/ex2;->b:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "GLAS"

    :goto_0
    new-instance v2, Lr4/lz2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lr4/lz2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
