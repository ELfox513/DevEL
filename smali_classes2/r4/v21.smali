.class public final Lr4/v21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/q21;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/h31;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/d40;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/Runnable;",
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
            "Lr4/h31;",
            ">;",
            "Lr4/is3<",
            "Lr4/d40;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/v21;->a:Lr4/is3;

    iput-object p2, p0, Lr4/v21;->b:Lr4/is3;

    iput-object p3, p0, Lr4/v21;->c:Lr4/is3;

    iput-object p4, p0, Lr4/v21;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/v21;->a:Lr4/is3;

    check-cast v0, Lr4/f51;

    invoke-virtual {v0}, Lr4/f51;->b()Lr4/h31;

    move-result-object v0

    iget-object v1, p0, Lr4/v21;->b:Lr4/is3;

    check-cast v1, Lr4/u21;

    invoke-virtual {v1}, Lr4/u21;->b()Lr4/d40;

    move-result-object v1

    iget-object v2, p0, Lr4/v21;->c:Lr4/is3;

    check-cast v2, Lr4/t21;

    invoke-virtual {v2}, Lr4/t21;->b()Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lr4/v21;->d:Lr4/is3;

    invoke-interface {v3}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Lr4/q21;

    invoke-direct {v4, v0, v1, v2, v3}, Lr4/q21;-><init>(Lr4/h31;Lr4/d40;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v4
.end method
