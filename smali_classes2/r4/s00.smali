.class public final Lr4/s00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/r00;",
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
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/t00;",
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
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lr4/is3<",
            "Lr4/t00;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/s00;->a:Lr4/is3;

    iput-object p2, p0, Lr4/s00;->b:Lr4/is3;

    iput-object p3, p0, Lr4/s00;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/s00;->a:Lr4/is3;

    check-cast v0, Lr4/mq2;

    invoke-virtual {v0}, Lr4/mq2;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lr4/s00;->b:Lr4/is3;

    invoke-interface {v1}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lr4/t00;

    invoke-direct {v2}, Lr4/t00;-><init>()V

    new-instance v3, Lr4/r00;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lr4/r00;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lr4/t00;[B)V

    return-object v3
.end method
