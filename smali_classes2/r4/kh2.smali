.class public final Lr4/kh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/lh2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/nl0;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/lang/String;

.field public final f:Lr4/el0;


# direct methods
.method public constructor <init>(Lr4/el0;ILandroid/content/Context;Lr4/nl0;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/kh2;->f:Lr4/el0;

    iput-object p3, p0, Lr4/kh2;->a:Landroid/content/Context;

    iput-object p4, p0, Lr4/kh2;->b:Lr4/nl0;

    iput-object p5, p0, Lr4/kh2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lr4/kh2;->d:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lr4/kh2;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Exception;)Lr4/lh2;
    .locals 2

    iget-object v0, p0, Lr4/kh2;->b:Lr4/nl0;

    const-string v1, "AttestationTokenSignal"

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
            "Lr4/lh2;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/gh2;

    invoke-direct {v0, p0}, Lr4/gh2;-><init>(Lr4/kh2;)V

    iget-object v1, p0, Lr4/kh2;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lr4/y73;->e(Lr4/d73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    invoke-static {v0}, Lr4/o73;->E(Lr4/h83;)Lr4/o73;

    move-result-object v0

    sget-object v1, Lr4/ih2;->a:Lr4/p03;

    iget-object v2, p0, Lr4/kh2;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    sget-object v1, Lr4/rz;->G0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lr4/kh2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2, v3, v4}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object v0

    check-cast v0, Lr4/o73;

    new-instance v1, Lr4/jh2;

    invoke-direct {v1, p0}, Lr4/jh2;-><init>(Lr4/kh2;)V

    const-class v2, Ljava/lang/Exception;

    invoke-static {}, Lr4/o83;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lr4/y73;->f(Lr4/h83;Ljava/lang/Class;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
