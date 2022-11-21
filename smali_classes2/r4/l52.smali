.class public final Lr4/l52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/e73<",
        "Lr4/bp2;",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/mt2;

.field public final b:Lr4/l71;

.field public final c:Lr4/mu2;

.field public final d:Lr4/pu2;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljava/util/concurrent/ScheduledExecutorService;

.field public final g:Lr4/l31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/l31<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field public final h:Lr4/g52;

.field public final i:Lr4/v12;


# direct methods
.method public constructor <init>(Lr4/mt2;Lr4/g52;Lr4/l71;Lr4/mu2;Lr4/pu2;Lr4/l31;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lr4/v12;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/mt2;",
            "Lr4/g52;",
            "Lr4/l71;",
            "Lr4/mu2;",
            "Lr4/pu2;",
            "Lr4/l31<",
            "TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lr4/v12;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/l52;->a:Lr4/mt2;

    iput-object p2, p0, Lr4/l52;->h:Lr4/g52;

    iput-object p3, p0, Lr4/l52;->b:Lr4/l71;

    iput-object p4, p0, Lr4/l52;->c:Lr4/mu2;

    iput-object p5, p0, Lr4/l52;->d:Lr4/pu2;

    iput-object p6, p0, Lr4/l52;->g:Lr4/l31;

    iput-object p7, p0, Lr4/l52;->e:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lr4/l52;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p9, p0, Lr4/l52;->i:Lr4/v12;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lr4/h83;
    .locals 8

    check-cast p1, Lr4/bp2;

    iget-object v0, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v0, v0, Lr4/ap2;->b:Lr4/so2;

    iget v0, v0, Lr4/so2;->e:I

    const/16 v1, 0xc8

    const/16 v2, 0x12c

    if-eqz v0, :cond_2

    if-lt v0, v1, :cond_0

    if-ge v0, v2, :cond_0

    sget-object v0, Lr4/rz;->N3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "No fill."

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    const/16 v3, 0x190

    if-ge v0, v3, :cond_1

    const-string v0, "No location header to follow redirect or too many redirects."

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received error HTTP response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "No ad config."

    :goto_0
    iget-object v3, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v3, v3, Lr4/ap2;->b:Lr4/so2;

    iget-object v3, v3, Lr4/so2;->i:Lr4/ro2;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lr4/ro2;->a()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v3, p0, Lr4/l52;->i:Lr4/v12;

    iget-object v4, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v4, v4, Lr4/ap2;->b:Lr4/so2;

    invoke-virtual {v3, v4}, Lr4/v12;->a(Lr4/so2;)V

    sget-object v3, Lr4/rz;->W5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v3, v3, Lr4/ap2;->b:Lr4/so2;

    iget v3, v3, Lr4/so2;->e:I

    if-eqz v3, :cond_5

    if-lt v3, v1, :cond_4

    if-lt v3, v2, :cond_5

    :cond_4
    new-instance p1, Lr4/j52;

    invoke-direct {p1, v4, v0}, Lr4/j52;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    goto/16 :goto_3

    :cond_5
    iget-object v1, p0, Lr4/l52;->a:Lr4/mt2;

    sget-object v2, Lr4/gt2;->x:Lr4/gt2;

    new-instance v3, Lr4/j52;

    invoke-direct {v3, v4, v0}, Lr4/j52;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lr4/xs2;->a(Lr4/h83;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object v0

    iget-object v1, p0, Lr4/l52;->b:Lr4/l71;

    new-instance v2, Lr4/ty0;

    iget-object v3, p0, Lr4/l52;->d:Lr4/pu2;

    iget-object v4, p0, Lr4/l52;->c:Lr4/mu2;

    invoke-direct {v2, p1, v3, v4}, Lr4/ty0;-><init>(Lr4/bp2;Lr4/pu2;Lr4/mu2;)V

    iget-object v3, p0, Lr4/l52;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    sget-object v1, Lr4/rz;->X5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v1, v1, Lr4/ap2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/no2;

    iget-object v3, p0, Lr4/l52;->i:Lr4/v12;

    invoke-virtual {v3, v2}, Lr4/v12;->b(Lr4/no2;)V

    iget-object v3, v2, Lr4/no2;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lr4/l52;->g:Lr4/l31;

    iget v6, v2, Lr4/no2;->b:I

    invoke-interface {v5, v6, v4}, Lr4/l31;->f0(ILjava/lang/String;)Lr4/q12;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4, p1, v2}, Lr4/q12;->a(Lr4/bp2;Lr4/no2;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lr4/l52;->i:Lr4/v12;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v6, v7, v7}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v6

    invoke-virtual {v3, v2, v4, v5, v6}, Lr4/v12;->c(Lr4/no2;JLr4/lt;)V

    goto :goto_1

    :cond_8
    iget-object v1, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v1, v1, Lr4/ap2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/no2;

    iget-object v4, v3, Lr4/no2;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lr4/l52;->g:Lr4/l31;

    iget v7, v3, Lr4/no2;->b:I

    invoke-interface {v6, v7, v5}, Lr4/l31;->f0(ILjava/lang/String;)Lr4/q12;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-interface {v6, p1, v3}, Lr4/q12;->a(Lr4/bp2;Lr4/no2;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v4, p0, Lr4/l52;->a:Lr4/mt2;

    sget-object v7, Lr4/gt2;->y:Lr4/gt2;

    invoke-virtual {v4, v7, v0}, Lr4/et2;->e(Ljava/lang/Object;Lr4/h83;)Lr4/dt2;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "render-config-"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lr4/dt2;->a(Ljava/lang/String;)Lr4/dt2;

    move-result-object v0

    new-instance v4, Lr4/k52;

    invoke-direct {v4, p0, p1, v3, v6}, Lr4/k52;-><init>(Lr4/l52;Lr4/bp2;Lr4/no2;Lr4/q12;)V

    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4}, Lr4/dt2;->g(Ljava/lang/Class;Lr4/e73;)Lr4/dt2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object v0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method public final synthetic c(Lr4/bp2;Lr4/no2;Lr4/q12;Ljava/lang/Throwable;)Lr4/h83;
    .locals 4

    iget-object p4, p0, Lr4/l52;->h:Lr4/g52;

    iget-object v0, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v0, v0, Lr4/ap2;->b:Lr4/so2;

    invoke-interface {p3, p1, p2}, Lr4/q12;->b(Lr4/bp2;Lr4/no2;)Lr4/h83;

    move-result-object p1

    iget p3, p2, Lr4/no2;->N:I

    int-to-long v1, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lr4/l52;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v1, v2, p3, v3}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object p1

    invoke-virtual {p4, v0, p2, p1}, Lr4/g52;->e(Lr4/so2;Lr4/no2;Lr4/h83;)Lr4/h83;

    return-object p1
.end method
