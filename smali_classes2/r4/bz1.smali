.class public final Lr4/bz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/az1;",
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
            "Lr4/ah0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ux0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/zg0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/ArrayDeque<",
            "Lr4/xy1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/fz1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
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
            "Lr4/ah0;",
            ">;",
            "Lr4/is3<",
            "Lr4/ux0;",
            ">;",
            "Lr4/is3<",
            "Lr4/zg0;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/ArrayDeque<",
            "Lr4/xy1;",
            ">;>;",
            "Lr4/is3<",
            "Lr4/fz1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bz1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/bz1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/bz1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/bz1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/bz1;->e:Lr4/is3;

    iput-object p6, p0, Lr4/bz1;->f:Lr4/is3;

    iput-object p7, p0, Lr4/bz1;->g:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lr4/bz1;->a:Lr4/is3;

    check-cast v0, Lr4/gu0;

    invoke-virtual {v0}, Lr4/gu0;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lr4/bz1;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Lr4/ah0;

    invoke-direct {v4}, Lr4/ah0;-><init>()V

    iget-object v0, p0, Lr4/bz1;->d:Lr4/is3;

    check-cast v0, Lr4/mu0;

    invoke-virtual {v0}, Lr4/mu0;->b()Lr4/ux0;

    move-result-object v5

    iget-object v0, p0, Lr4/bz1;->e:Lr4/is3;

    check-cast v0, Lr4/yu0;

    invoke-virtual {v0}, Lr4/yu0;->b()Lr4/zg0;

    move-result-object v6

    iget-object v0, p0, Lr4/bz1;->f:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/ArrayDeque;

    new-instance v8, Lr4/fz1;

    invoke-direct {v8}, Lr4/fz1;-><init>()V

    new-instance v0, Lr4/az1;

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lr4/az1;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/ah0;Lr4/ux0;Lr4/zg0;Ljava/util/ArrayDeque;Lr4/fz1;[B)V

    return-object v0
.end method
