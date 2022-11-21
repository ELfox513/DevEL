.class public final Lr4/ah2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/bh2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/pm/PackageInfo;

.field public final d:Lr4/el0;


# direct methods
.method public constructor <init>(Lr4/el0;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/pm/PackageInfo;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ah2;->d:Lr4/el0;

    iput-object p2, p0, Lr4/ah2;->a:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lr4/ah2;->b:Ljava/lang/String;

    iput-object p4, p0, Lr4/ah2;->c:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Throwable;)Lr4/h83;
    .locals 1

    new-instance p1, Lr4/bh2;

    iget-object v0, p0, Lr4/ah2;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Lr4/bh2;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final zza()Lr4/h83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/bh2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/ah2;->b:Ljava/lang/String;

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    sget-object v1, Lr4/yg2;->a:Lr4/p03;

    iget-object v2, p0, Lr4/ah2;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/zg2;

    invoke-direct {v1, p0}, Lr4/zg2;-><init>(Lr4/ah2;)V

    const-class v2, Ljava/lang/Throwable;

    iget-object v3, p0, Lr4/ah2;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, v1, v3}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
