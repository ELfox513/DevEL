.class public final Lx6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr7/a;"
    }
.end annotation


# instance fields
.field public final a:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lm5/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lq6/b<",
            "Lm7/p;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lr6/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lq6/b<",
            "Lf2/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lz6/a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lcom/google/firebase/perf/session/gauges/GaugeManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Lm5/c;",
            ">;",
            "Lr7/a<",
            "Lq6/b<",
            "Lm7/p;",
            ">;>;",
            "Lr7/a<",
            "Lr6/g;",
            ">;",
            "Lr7/a<",
            "Lq6/b<",
            "Lf2/g;",
            ">;>;",
            "Lr7/a<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;",
            "Lr7/a<",
            "Lz6/a;",
            ">;",
            "Lr7/a<",
            "Lcom/google/firebase/perf/session/gauges/GaugeManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx6/e;->a:Lr7/a;

    iput-object p2, p0, Lx6/e;->b:Lr7/a;

    iput-object p3, p0, Lx6/e;->c:Lr7/a;

    iput-object p4, p0, Lx6/e;->d:Lr7/a;

    iput-object p5, p0, Lx6/e;->e:Lr7/a;

    iput-object p6, p0, Lx6/e;->f:Lr7/a;

    iput-object p7, p0, Lx6/e;->g:Lr7/a;

    return-void
.end method

.method public static a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Lx6/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Lm5/c;",
            ">;",
            "Lr7/a<",
            "Lq6/b<",
            "Lm7/p;",
            ">;>;",
            "Lr7/a<",
            "Lr6/g;",
            ">;",
            "Lr7/a<",
            "Lq6/b<",
            "Lf2/g;",
            ">;>;",
            "Lr7/a<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;",
            "Lr7/a<",
            "Lz6/a;",
            ">;",
            "Lr7/a<",
            "Lcom/google/firebase/perf/session/gauges/GaugeManager;",
            ">;)",
            "Lx6/e;"
        }
    .end annotation

    new-instance v8, Lx6/e;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lx6/e;-><init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V

    return-object v8
.end method

.method public static c(Lm5/c;Lq6/b;Lr6/g;Lq6/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Lz6/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)Lx6/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/c;",
            "Lq6/b<",
            "Lm7/p;",
            ">;",
            "Lr6/g;",
            "Lq6/b<",
            "Lf2/g;",
            ">;",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            "Lz6/a;",
            "Lcom/google/firebase/perf/session/gauges/GaugeManager;",
            ")",
            "Lx6/c;"
        }
    .end annotation

    new-instance v8, Lx6/c;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lx6/c;-><init>(Lm5/c;Lq6/b;Lr6/g;Lq6/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Lz6/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V

    return-object v8
.end method


# virtual methods
.method public b()Lx6/c;
    .locals 8

    iget-object v0, p0, Lx6/e;->a:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lm5/c;

    iget-object v0, p0, Lx6/e;->b:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lq6/b;

    iget-object v0, p0, Lx6/e;->c:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lr6/g;

    iget-object v0, p0, Lx6/e;->d:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lq6/b;

    iget-object v0, p0, Lx6/e;->e:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/perf/config/RemoteConfigManager;

    iget-object v0, p0, Lx6/e;->f:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lz6/a;

    iget-object v0, p0, Lx6/e;->g:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    invoke-static/range {v1 .. v7}, Lx6/e;->c(Lm5/c;Lq6/b;Lr6/g;Lq6/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Lz6/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)Lx6/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lx6/e;->b()Lx6/c;

    move-result-object v0

    return-object v0
.end method
