.class public final Lh3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/h83<",
        "Lh3/j;",
        ">;>;"
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
            "Lh3/h;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/o61;",
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
            "Lr4/mt2;",
            ">;",
            "Lr4/is3<",
            "Lh3/h;",
            ">;",
            "Lr4/is3<",
            "Lr4/o61;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/f;->a:Lr4/is3;

    iput-object p2, p0, Lh3/f;->b:Lr4/is3;

    iput-object p3, p0, Lh3/f;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lh3/f;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/mt2;

    iget-object v1, p0, Lh3/f;->b:Lr4/is3;

    check-cast v1, Lh3/i;

    invoke-virtual {v1}, Lh3/i;->b()Lh3/h;

    move-result-object v1

    iget-object v2, p0, Lh3/f;->c:Lr4/is3;

    check-cast v2, Lr4/p61;

    invoke-virtual {v2}, Lr4/p61;->b()Lr4/o61;

    move-result-object v2

    sget-object v3, Lr4/gt2;->F:Lr4/gt2;

    invoke-virtual {v2}, Lr4/o61;->b()Lr4/h83;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lr4/et2;->e(Ljava/lang/Object;Lr4/h83;)Lr4/dt2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr4/dt2;->c(Lr4/e73;)Lr4/dt2;

    move-result-object v0

    sget-object v1, Lr4/rz;->P3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lr4/dt2;->h(JLjava/util/concurrent/TimeUnit;)Lr4/dt2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object v0

    return-object v0
.end method
