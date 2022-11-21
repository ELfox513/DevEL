.class public final Lr4/ei2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ci2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/af0;",
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
            "Landroid/content/Context;",
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
            "Lr4/af0;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ei2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/ei2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/ei2;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lr4/af0;

    invoke-direct {v0}, Lr4/af0;-><init>()V

    iget-object v1, p0, Lr4/ei2;->b:Lr4/is3;

    invoke-interface {v1}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lr4/ei2;->c:Lr4/is3;

    check-cast v2, Lr4/gu0;

    invoke-virtual {v2}, Lr4/gu0;->b()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lr4/ci2;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lr4/ci2;-><init>(Lr4/af0;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;[B)V

    return-object v3
.end method
