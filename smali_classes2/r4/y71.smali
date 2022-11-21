.class public final Lr4/y71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/w71;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/v71;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/n71;",
            ">;>;>;"
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


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/v71;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/n71;",
            ">;>;>;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/y71;->a:Lr4/is3;

    iput-object p2, p0, Lr4/y71;->b:Lr4/is3;

    iput-object p3, p0, Lr4/y71;->c:Lr4/is3;

    iput-object p4, p0, Lr4/y71;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/y71;->a:Lr4/is3;

    check-cast v0, Lr4/x71;

    invoke-virtual {v0}, Lr4/x71;->b()Lr4/v71;

    move-result-object v0

    iget-object v1, p0, Lr4/y71;->b:Lr4/is3;

    check-cast v1, Lr4/gs3;

    invoke-virtual {v1}, Lr4/gs3;->c()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v2}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lr4/y71;->d:Lr4/is3;

    invoke-interface {v3}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lr4/w71;

    invoke-direct {v4, v0, v1, v2, v3}, Lr4/w71;-><init>(Lr4/v71;Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v4
.end method
