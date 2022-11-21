.class public final Lr4/l32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/q12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/q12<",
        "Lr4/h11;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/f21;

.field public final b:Lr4/s22;

.field public final c:Lr4/i83;

.field public final d:Lr4/l71;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lr4/f21;Lr4/s22;Lr4/l71;Ljava/util/concurrent/ScheduledExecutorService;Lr4/i83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/l32;->a:Lr4/f21;

    iput-object p2, p0, Lr4/l32;->b:Lr4/s22;

    iput-object p3, p0, Lr4/l32;->d:Lr4/l71;

    iput-object p4, p0, Lr4/l32;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lr4/l32;->c:Lr4/i83;

    return-void
.end method

.method public static synthetic c(Lr4/l32;)Lr4/f21;
    .locals 0

    iget-object p0, p0, Lr4/l32;->a:Lr4/f21;

    return-object p0
.end method

.method public static synthetic d(Lr4/l32;)Lr4/l71;
    .locals 0

    iget-object p0, p0, Lr4/l32;->d:Lr4/l71;

    return-object p0
.end method


# virtual methods
.method public final a(Lr4/bp2;Lr4/no2;)Z
    .locals 1

    iget-object v0, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v0, v0, Lr4/yo2;->a:Lr4/hp2;

    invoke-virtual {v0}, Lr4/hp2;->a()Lr4/d40;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/l32;->b:Lr4/s22;

    invoke-virtual {v0, p1, p2}, Lr4/s22;->a(Lr4/bp2;Lr4/no2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;)Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            ")",
            "Lr4/h83<",
            "Lr4/h11;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/l32;->c:Lr4/i83;

    new-instance v1, Lr4/i32;

    invoke-direct {v1, p0, p1, p2}, Lr4/i32;-><init>(Lr4/l32;Lr4/bp2;Lr4/no2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e(Lr4/bp2;Lr4/no2;)Lr4/h11;
    .locals 5

    iget-object v0, p0, Lr4/l32;->a:Lr4/f21;

    new-instance v1, Lr4/x31;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance v2, Lr4/s21;

    iget-object v3, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v3, v3, Lr4/yo2;->a:Lr4/hp2;

    invoke-virtual {v3}, Lr4/hp2;->a()Lr4/d40;

    move-result-object v3

    new-instance v4, Lr4/j32;

    invoke-direct {v4, p0, p1, p2}, Lr4/j32;-><init>(Lr4/l32;Lr4/bp2;Lr4/no2;)V

    invoke-direct {v2, v3, v4}, Lr4/s21;-><init>(Lr4/d40;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lr4/f21;->e(Lr4/x31;Lr4/s21;)Lr4/r21;

    move-result-object p1

    invoke-interface {p1}, Lr4/r21;->zza()Lr4/h11;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f(Lr4/bp2;Lr4/no2;)V
    .locals 4

    iget-object v0, p0, Lr4/l32;->b:Lr4/s22;

    invoke-virtual {v0, p1, p2}, Lr4/s22;->b(Lr4/bp2;Lr4/no2;)Lr4/h83;

    move-result-object p1

    iget p2, p2, Lr4/no2;->N:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lr4/l32;->e:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p2

    invoke-static {p1, v2, v3, v0, v1}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object p1

    new-instance p2, Lr4/k32;

    invoke-direct {p2, p0}, Lr4/k32;-><init>(Lr4/l32;)V

    iget-object v0, p0, Lr4/l32;->c:Lr4/i83;

    invoke-static {p1, p2, v0}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method
