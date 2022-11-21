.class public final Lr4/pf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/qf2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/ik0;

.field public final b:Lr4/i83;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lr4/ik0;Lr4/i83;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pf2;->a:Lr4/ik0;

    iput-object p2, p0, Lr4/pf2;->b:Lr4/i83;

    iput-object p3, p0, Lr4/pf2;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lr4/qf2;
    .locals 8

    iget-object v0, p0, Lr4/pf2;->a:Lr4/ik0;

    iget-object v1, p0, Lr4/pf2;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lr4/ik0;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lr4/qf2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lr4/qf2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lr4/pf2;->a:Lr4/ik0;

    iget-object v1, p0, Lr4/pf2;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lr4/ik0;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lr4/pf2;->a:Lr4/ik0;

    iget-object v2, p0, Lr4/pf2;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lr4/ik0;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    iget-object v0, p0, Lr4/pf2;->a:Lr4/ik0;

    iget-object v2, p0, Lr4/pf2;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lr4/ik0;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v5, v1

    goto :goto_2

    :cond_3
    move-object v5, v0

    :goto_2
    iget-object v0, p0, Lr4/pf2;->a:Lr4/ik0;

    iget-object v2, p0, Lr4/pf2;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lr4/ik0;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v6, v1

    goto :goto_3

    :cond_4
    move-object v6, v0

    :goto_3
    const-string v0, "TIME_OUT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lr4/rz;->a0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    move-object v7, v0

    new-instance v0, Lr4/qf2;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lr4/qf2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/qf2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/pf2;->b:Lr4/i83;

    new-instance v1, Lr4/of2;

    invoke-direct {v1, p0}, Lr4/of2;-><init>(Lr4/pf2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
