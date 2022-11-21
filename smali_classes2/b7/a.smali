.class public Lb7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm5/c;

.field public final b:Lr6/g;

.field public final c:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "Lm7/p;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "Lf2/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm5/c;Lr6/g;Lq6/b;Lq6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/c;",
            "Lr6/g;",
            "Lq6/b<",
            "Lm7/p;",
            ">;",
            "Lq6/b<",
            "Lf2/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb7/a;->a:Lm5/c;

    iput-object p2, p0, Lb7/a;->b:Lr6/g;

    iput-object p3, p0, Lb7/a;->c:Lq6/b;

    iput-object p4, p0, Lb7/a;->d:Lq6/b;

    return-void
.end method


# virtual methods
.method public a()Lz6/a;
    .locals 1

    invoke-static {}, Lz6/a;->f()Lz6/a;

    move-result-object v0

    return-object v0
.end method

.method public b()Lm5/c;
    .locals 1

    iget-object v0, p0, Lb7/a;->a:Lm5/c;

    return-object v0
.end method

.method public c()Lr6/g;
    .locals 1

    iget-object v0, p0, Lb7/a;->b:Lr6/g;

    return-object v0
.end method

.method public d()Lcom/google/firebase/perf/session/gauges/GaugeManager;
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object v0

    return-object v0
.end method

.method public e()Lq6/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq6/b<",
            "Lm7/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb7/a;->c:Lq6/b;

    return-object v0
.end method

.method public f()Lcom/google/firebase/perf/config/RemoteConfigManager;
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/config/RemoteConfigManager;

    move-result-object v0

    return-object v0
.end method

.method public g()Lq6/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq6/b<",
            "Lf2/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb7/a;->d:Lq6/b;

    return-object v0
.end method
