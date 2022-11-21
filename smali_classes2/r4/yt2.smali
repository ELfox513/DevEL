.class public final Lr4/yt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/xt2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/du2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ku2;",
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


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/du2;",
            ">;",
            "Lr4/is3<",
            "Lr4/ku2;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yt2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/yt2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/yt2;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/yt2;->a:Lr4/is3;

    invoke-static {v0}, Lr4/tr3;->c(Lr4/is3;)Lr4/or3;

    move-result-object v0

    iget-object v1, p0, Lr4/yt2;->b:Lr4/is3;

    invoke-static {v1}, Lr4/tr3;->c(Lr4/is3;)Lr4/or3;

    move-result-object v1

    iget-object v2, p0, Lr4/yt2;->c:Lr4/is3;

    invoke-interface {v2}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Lr4/rz;->j6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lr4/au2;

    invoke-interface {v0}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/xt2;

    invoke-direct {v1, v0, v2}, Lr4/au2;-><init>(Lr4/xt2;Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lr4/xt2;

    :goto_0
    invoke-static {v1}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
