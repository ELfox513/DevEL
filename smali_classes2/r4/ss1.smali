.class public Lr4/ss1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lr4/hm0;

.field public final e:Z

.field public final f:Lr4/hu2;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lr4/hm0;Lr4/hu2;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lr4/a10;->b:Lr4/u00;

    invoke-virtual {v0}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lr4/ss1;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr4/ss1;->b:Ljava/util/Map;

    iput-object p1, p0, Lr4/ss1;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr4/ss1;->d:Lr4/hm0;

    sget-object p1, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lr4/rz;->p1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lr4/ss1;->e:Z

    goto :goto_1

    :cond_0
    invoke-static {}, Lr4/yu;->e()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    float-to-double p1, p1

    sget-object v0, Lr4/a10;->a:Lr4/u00;

    invoke-virtual {v0}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lr4/ss1;->e:Z

    :goto_1
    iput-object p3, p0, Lr4/ss1;->f:Lr4/hu2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/ss1;->f:Lr4/hu2;

    invoke-virtual {v0, p1}, Lr4/hu2;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lr4/ss1;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/ss1;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lr4/rs1;

    invoke-direct {v1, p0, p1}, Lr4/rs1;-><init>(Lr4/ss1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lr4/ss1;->f:Lr4/hu2;

    invoke-virtual {v0, p1}, Lr4/hu2;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
