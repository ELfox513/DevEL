.class public final Lr4/ne2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lr4/dg2;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/eg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/eg2<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lr4/eg2;JLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/eg2<",
            "TS;>;J",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ne2;->a:Lr4/eg2;

    iput-wide p2, p0, Lr4/ne2;->b:J

    iput-object p4, p0, Lr4/ne2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/ne2;->a:Lr4/eg2;

    invoke-interface {v0}, Lr4/eg2;->zza()Lr4/h83;

    move-result-object v0

    iget-wide v1, p0, Lr4/ne2;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lr4/ne2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2, v3, v4}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object v0

    :cond_0
    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lr4/me2;->a:Lr4/e73;

    sget-object v3, Lr4/qm0;->f:Lr4/i83;

    invoke-static {v0, v1, v2, v3}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
