.class public final Lr4/j61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/i61;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/b81;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/no2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
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
            "Lr4/b81;",
            ">;",
            "Lr4/is3<",
            "Lr4/no2;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j61;->a:Lr4/is3;

    iput-object p2, p0, Lr4/j61;->b:Lr4/is3;

    iput-object p3, p0, Lr4/j61;->c:Lr4/is3;

    iput-object p4, p0, Lr4/j61;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/j61;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/b81;

    iget-object v1, p0, Lr4/j61;->b:Lr4/is3;

    check-cast v1, Lr4/y31;

    invoke-virtual {v1}, Lr4/y31;->b()Lr4/no2;

    move-result-object v1

    iget-object v2, p0, Lr4/j61;->c:Lr4/is3;

    invoke-interface {v2}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v3}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lr4/i61;

    invoke-direct {v4, v0, v1, v2, v3}, Lr4/i61;-><init>(Lr4/b81;Lr4/no2;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V

    return-object v4
.end method
