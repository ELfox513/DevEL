.class public final Lr4/zz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nm;


# instance fields
.field public a:Lr4/cs0;

.field public final b:Ljava/util/concurrent/Executor;

.field public final d:Lr4/kz0;

.field public final k:Lc4/f;

.field public p:Z

.field public q:Z

.field public final r:Lr4/nz0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lr4/kz0;Lc4/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/zz0;->p:Z

    iput-boolean v0, p0, Lr4/zz0;->q:Z

    new-instance v0, Lr4/nz0;

    invoke-direct {v0}, Lr4/nz0;-><init>()V

    iput-object v0, p0, Lr4/zz0;->r:Lr4/nz0;

    iput-object p1, p0, Lr4/zz0;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr4/zz0;->d:Lr4/kz0;

    iput-object p3, p0, Lr4/zz0;->k:Lc4/f;

    return-void
.end method


# virtual methods
.method public final Y(Lr4/mm;)V
    .locals 3

    iget-object v0, p0, Lr4/zz0;->r:Lr4/nz0;

    iget-boolean v1, p0, Lr4/zz0;->q:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p1, Lr4/mm;->j:Z

    :goto_0
    iput-boolean v1, v0, Lr4/nz0;->a:Z

    iget-object v1, p0, Lr4/zz0;->k:Lc4/f;

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lr4/nz0;->d:J

    iget-object v0, p0, Lr4/zz0;->r:Lr4/nz0;

    iput-object p1, v0, Lr4/nz0;->f:Lr4/mm;

    iget-boolean p1, p0, Lr4/zz0;->p:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lr4/zz0;->g()V

    :cond_1
    return-void
.end method

.method public final a(Lr4/cs0;)V
    .locals 0

    iput-object p1, p0, Lr4/zz0;->a:Lr4/cs0;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/zz0;->p:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/zz0;->p:Z

    invoke-virtual {p0}, Lr4/zz0;->g()V

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lr4/zz0;->q:Z

    return-void
.end method

.method public final synthetic e(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lr4/zz0;->a:Lr4/cs0;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lr4/s80;->K0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lr4/zz0;->d:Lr4/kz0;

    iget-object v1, p0, Lr4/zz0;->r:Lr4/nz0;

    invoke-virtual {v0, v1}, Lr4/kz0;->a(Lr4/nz0;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lr4/zz0;->a:Lr4/cs0;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr4/zz0;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lr4/xz0;

    invoke-direct {v2, p0, v0}, Lr4/xz0;-><init>(Lr4/zz0;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call video active view js"

    invoke-static {v1, v0}, Lb3/w1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
