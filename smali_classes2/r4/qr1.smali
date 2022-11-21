.class public final Lr4/qr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Ljava/util/Set<",
        "Lr4/ve1<",
        "Lr4/nt2;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/String;",
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
            "Ljava/util/Map<",
            "Lr4/gt2;",
            "Lr4/sr1;",
            ">;>;"
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
            "Ljava/lang/String;",
            ">;",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/Map<",
            "Lr4/gt2;",
            "Lr4/sr1;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qr1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/qr1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/qr1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/qr1;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lr4/qr1;->a:Lr4/is3;

    check-cast v0, Lr4/ki2;

    invoke-virtual {v0}, Lr4/ki2;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lr4/qr1;->b:Lr4/is3;

    check-cast v1, Lr4/gu0;

    invoke-virtual {v1}, Lr4/gu0;->b()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v2}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lr4/qr1;->d:Lr4/is3;

    check-cast v3, Lr4/zr3;

    invoke-virtual {v3}, Lr4/zr3;->d()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lr4/rz;->o3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v5

    invoke-virtual {v5, v4}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lr4/ip;

    new-instance v5, Lr4/mp;

    invoke-direct {v5, v1}, Lr4/mp;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v5}, Lr4/ip;-><init>(Lr4/mp;)V

    new-instance v1, Lr4/rr1;

    invoke-direct {v1, v0}, Lr4/rr1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lr4/ip;->b(Lr4/hp;)V

    new-instance v0, Lr4/tr1;

    invoke-direct {v0, v4, v3}, Lr4/tr1;-><init>(Lr4/ip;Ljava/util/Map;)V

    new-instance v1, Lr4/ve1;

    invoke-direct {v1, v0, v2}, Lr4/ve1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
