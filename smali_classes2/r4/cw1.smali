.class public final Lr4/cw1;
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
        "Ljava/lang/String;",
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
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/mt2;",
            ">;",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/cw1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/cw1;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/cw1;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/mt2;

    iget-object v1, p0, Lr4/cw1;->b:Lr4/is3;

    invoke-interface {v1}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lb3/g;->k(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v1

    sget-object v2, Lr4/gt2;->E:Lr4/gt2;

    new-instance v3, Lr4/yv1;

    invoke-direct {v3, v1}, Lr4/yv1;-><init>(Landroid/webkit/CookieManager;)V

    invoke-static {v3, v2, v0}, Lr4/xs2;->b(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lr4/dt2;->h(JLjava/util/concurrent/TimeUnit;)Lr4/dt2;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    sget-object v2, Lr4/zv1;->a:Lr4/ps2;

    invoke-virtual {v0, v1, v2}, Lr4/dt2;->f(Ljava/lang/Class;Lr4/ps2;)Lr4/dt2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object v0

    return-object v0
.end method
