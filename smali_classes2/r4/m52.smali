.class public final Lr4/m52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/l52<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/mt2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/g52;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/l71;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/mu2;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/pu2;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/l31<",
            "TAdT;>;>;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/v12;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/mt2;",
            ">;",
            "Lr4/is3<",
            "Lr4/g52;",
            ">;",
            "Lr4/is3<",
            "Lr4/l71;",
            ">;",
            "Lr4/is3<",
            "Lr4/mu2;",
            ">;",
            "Lr4/is3<",
            "Lr4/pu2;",
            ">;",
            "Lr4/is3<",
            "Lr4/l31<",
            "TAdT;>;>;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lr4/is3<",
            "Lr4/v12;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/m52;->a:Lr4/is3;

    iput-object p2, p0, Lr4/m52;->b:Lr4/is3;

    iput-object p3, p0, Lr4/m52;->c:Lr4/is3;

    iput-object p4, p0, Lr4/m52;->d:Lr4/is3;

    iput-object p5, p0, Lr4/m52;->e:Lr4/is3;

    iput-object p6, p0, Lr4/m52;->f:Lr4/is3;

    iput-object p7, p0, Lr4/m52;->g:Lr4/is3;

    iput-object p8, p0, Lr4/m52;->h:Lr4/is3;

    iput-object p9, p0, Lr4/m52;->i:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/m52;->b()Lr4/l52;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/l52;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/l52<",
            "TAdT;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/m52;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lr4/mt2;

    iget-object v0, p0, Lr4/m52;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lr4/g52;

    iget-object v0, p0, Lr4/m52;->c:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr4/l71;

    iget-object v0, p0, Lr4/m52;->d:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lr4/mu2;

    iget-object v0, p0, Lr4/m52;->e:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/pu2;

    iget-object v0, p0, Lr4/m52;->f:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lr4/l31;

    sget-object v8, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v8}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr4/m52;->h:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lr4/m52;->i:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lr4/v12;

    new-instance v0, Lr4/l52;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lr4/l52;-><init>(Lr4/mt2;Lr4/g52;Lr4/l71;Lr4/mu2;Lr4/pu2;Lr4/l31;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lr4/v12;)V

    return-object v0
.end method
