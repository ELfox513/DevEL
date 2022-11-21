.class public final Lr4/sw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/rw1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/i83;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/lx1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/az1;",
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
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lr4/is3<",
            "Lr4/i83;",
            ">;",
            "Lr4/is3<",
            "Lr4/lx1;",
            ">;",
            "Lr4/is3<",
            "Lr4/az1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/sw1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/sw1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/sw1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/sw1;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/sw1;->b()Lr4/rw1;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/rw1;
    .locals 5

    iget-object v0, p0, Lr4/sw1;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v1}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr4/sw1;->c:Lr4/is3;

    check-cast v2, Lr4/mx1;

    invoke-virtual {v2}, Lr4/mx1;->b()Lr4/lx1;

    move-result-object v2

    iget-object v3, p0, Lr4/sw1;->d:Lr4/is3;

    invoke-static {v3}, Lr4/tr3;->c(Lr4/is3;)Lr4/or3;

    move-result-object v3

    new-instance v4, Lr4/rw1;

    invoke-direct {v4, v0, v1, v2, v3}, Lr4/rw1;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lr4/i83;Lr4/lx1;Lr4/or3;)V

    return-object v4
.end method
