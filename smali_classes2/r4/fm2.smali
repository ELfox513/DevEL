.class public final Lr4/fm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/am2<",
        "Lr4/ap1;",
        "Lr4/uo1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/pq2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ir2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/pq2;",
            ">;",
            "Lr4/is3<",
            "Lr4/ir2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/fm2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/fm2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/fm2;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/fm2;->b()Lr4/am2;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/am2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/am2<",
            "Lr4/ap1;",
            "Lr4/uo1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/fm2;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lr4/fm2;->b:Lr4/is3;

    invoke-interface {v1}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/pq2;

    iget-object v2, p0, Lr4/fm2;->c:Lr4/is3;

    invoke-interface {v2}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/ir2;

    sget-object v3, Lr4/rz;->F4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v3

    invoke-virtual {v3}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v3

    invoke-interface {v3}, Lb3/y1;->p()Lr4/hl0;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v3

    invoke-virtual {v3}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v3

    invoke-interface {v3}, Lb3/y1;->q()Lr4/hl0;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lr4/hl0;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    sget-object v3, Lr4/rz;->H4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v5

    invoke-virtual {v5, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    sget-object v3, Lr4/rz;->E4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v5

    invoke-virtual {v5, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    new-instance v3, Lr4/al2;

    invoke-direct {v3}, Lr4/al2;-><init>()V

    sget-object v4, Lr4/yq2;->a:Lr4/yq2;

    new-instance v5, Lr4/dl2;

    invoke-direct {v5, v3}, Lr4/dl2;-><init>(Lr4/am2;)V

    invoke-virtual {v2, v4, v0, v1, v5}, Lr4/ir2;->a(Lr4/yq2;Landroid/content/Context;Lr4/pq2;Lr4/or2;)Lr4/hr2;

    move-result-object v0

    new-instance v7, Lr4/fl2;

    new-instance v2, Lr4/ql2;

    new-instance v1, Lr4/pl2;

    invoke-direct {v1}, Lr4/pl2;-><init>()V

    invoke-direct {v2, v1}, Lr4/ql2;-><init>(Lr4/am2;)V

    new-instance v3, Lr4/ml2;

    iget-object v1, v0, Lr4/hr2;->a:Lr4/uq2;

    sget-object v6, Lr4/qm0;->a:Lr4/i83;

    invoke-direct {v3, v1, v6}, Lr4/ml2;-><init>(Lr4/uq2;Ljava/util/concurrent/Executor;)V

    iget-object v4, v0, Lr4/hr2;->b:Lr4/qr2;

    iget-object v0, v0, Lr4/hr2;->a:Lr4/uq2;

    invoke-interface {v0}, Lr4/uq2;->c()Lr4/br2;

    move-result-object v0

    iget-object v5, v0, Lr4/br2;->s:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lr4/fl2;-><init>(Lr4/am2;Lr4/am2;Lr4/qr2;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_3
    new-instance v7, Lr4/pl2;

    invoke-direct {v7}, Lr4/pl2;-><init>()V

    :goto_1
    return-object v7
.end method
