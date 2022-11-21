.class public final Lr4/ri2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/si2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/nl0;

.field public final b:Z

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Lr4/i83;

.field public final e:Ljava/lang/String;

.field public final f:Lr4/cl0;


# direct methods
.method public constructor <init>(Lr4/nl0;ZLr4/cl0;Lr4/i83;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ri2;->a:Lr4/nl0;

    iput-boolean p2, p0, Lr4/ri2;->b:Z

    iput-object p3, p0, Lr4/ri2;->f:Lr4/cl0;

    iput-object p4, p0, Lr4/ri2;->d:Lr4/i83;

    iput-object p5, p0, Lr4/ri2;->e:Ljava/lang/String;

    iput-object p6, p0, Lr4/ri2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Exception;)Lr4/si2;
    .locals 2

    iget-object v0, p0, Lr4/ri2;->a:Lr4/nl0;

    const-string v1, "TrustlessTokenSignal"

    invoke-virtual {v0, p1, v1}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza()Lr4/h83;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/si2;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr4/s10;->a:Lr4/u00;

    invoke-virtual {v0}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lr4/ri2;->b:Z

    if-nez v0, :cond_0

    invoke-static {v1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    sget-object v1, Lr4/pi2;->a:Lr4/p03;

    iget-object v2, p0, Lr4/ri2;->d:Lr4/i83;

    invoke-static {v0, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    sget-object v1, Lr4/s10;->c:Lr4/u00;

    invoke-virtual {v1}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lr4/ri2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2, v3, v4}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/qi2;

    invoke-direct {v1, p0}, Lr4/qi2;-><init>(Lr4/ri2;)V

    const-class v2, Ljava/lang/Exception;

    iget-object v3, p0, Lr4/ri2;->d:Lr4/i83;

    invoke-static {v0, v2, v1, v3}, Lr4/y73;->f(Lr4/h83;Ljava/lang/Class;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
