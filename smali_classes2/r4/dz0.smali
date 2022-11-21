.class public final Lr4/dz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/cz0;",
        ">;"
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
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/bp2;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/no2;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/mu2;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/sp2;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/u;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/r00;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/t00;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lr4/is3<",
            "Lr4/bp2;",
            ">;",
            "Lr4/is3<",
            "Lr4/no2;",
            ">;",
            "Lr4/is3<",
            "Lr4/mu2;",
            ">;",
            "Lr4/is3<",
            "Lr4/sp2;",
            ">;",
            "Lr4/is3<",
            "Landroid/view/View;",
            ">;",
            "Lr4/is3<",
            "Lr4/u;",
            ">;",
            "Lr4/is3<",
            "Lr4/r00;",
            ">;",
            "Lr4/is3<",
            "Lr4/t00;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/dz0;->a:Lr4/is3;

    iput-object p2, p0, Lr4/dz0;->b:Lr4/is3;

    iput-object p3, p0, Lr4/dz0;->c:Lr4/is3;

    iput-object p4, p0, Lr4/dz0;->d:Lr4/is3;

    iput-object p5, p0, Lr4/dz0;->e:Lr4/is3;

    iput-object p6, p0, Lr4/dz0;->f:Lr4/is3;

    iput-object p7, p0, Lr4/dz0;->g:Lr4/is3;

    iput-object p8, p0, Lr4/dz0;->h:Lr4/is3;

    iput-object p9, p0, Lr4/dz0;->i:Lr4/is3;

    iput-object p10, p0, Lr4/dz0;->j:Lr4/is3;

    iput-object p11, p0, Lr4/dz0;->k:Lr4/is3;

    iput-object p12, p0, Lr4/dz0;->l:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Lr4/dz0;->a:Lr4/is3;

    check-cast v0, Lr4/mq2;

    invoke-virtual {v0}, Lr4/mq2;->b()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v3}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr4/dz0;->c:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lr4/dz0;->d:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lr4/dz0;->e:Lr4/is3;

    check-cast v0, Lr4/b41;

    invoke-virtual {v0}, Lr4/b41;->b()Lr4/bp2;

    move-result-object v6

    iget-object v0, p0, Lr4/dz0;->f:Lr4/is3;

    check-cast v0, Lr4/y31;

    invoke-virtual {v0}, Lr4/y31;->b()Lr4/no2;

    move-result-object v7

    iget-object v0, p0, Lr4/dz0;->g:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lr4/mu2;

    iget-object v0, p0, Lr4/dz0;->h:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lr4/sp2;

    iget-object v0, p0, Lr4/dz0;->i:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/View;

    iget-object v0, p0, Lr4/dz0;->j:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lr4/u;

    iget-object v0, p0, Lr4/dz0;->k:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lr4/r00;

    new-instance v13, Lr4/t00;

    invoke-direct {v13}, Lr4/t00;-><init>()V

    new-instance v0, Lr4/cz0;

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lr4/cz0;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lr4/bp2;Lr4/no2;Lr4/mu2;Lr4/sp2;Landroid/view/View;Lr4/u;Lr4/r00;Lr4/t00;[B)V

    return-object v0
.end method
