.class public final Lv3/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lt3/b;

.field public final synthetic b:Lv3/f0;


# direct methods
.method public constructor <init>(Lv3/f0;Lt3/b;)V
    .locals 0

    iput-object p1, p0, Lv3/e0;->b:Lv3/f0;

    iput-object p2, p0, Lv3/e0;->a:Lt3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lv3/e0;->b:Lv3/f0;

    iget-object v0, v0, Lv3/f0;->f:Lv3/f;

    invoke-static {v0}, Lv3/f;->h(Lv3/f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lv3/e0;->b:Lv3/f0;

    invoke-static {v1}, Lv3/f0;->d(Lv3/f0;)Lv3/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/c0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lv3/e0;->a:Lt3/b;

    invoke-virtual {v1}, Lt3/b;->b1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lv3/e0;->b:Lv3/f0;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lv3/f0;->e(Lv3/f0;Z)Z

    iget-object v1, p0, Lv3/e0;->b:Lv3/f0;

    invoke-static {v1}, Lv3/f0;->f(Lv3/f0;)Lu3/a$f;

    move-result-object v1

    invoke-interface {v1}, Lu3/a$f;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lv3/e0;->b:Lv3/f0;

    invoke-static {v0}, Lv3/f0;->g(Lv3/f0;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lv3/e0;->b:Lv3/f0;

    invoke-static {v1}, Lv3/f0;->f(Lv3/f0;)Lu3/a$f;

    move-result-object v1

    iget-object v3, p0, Lv3/e0;->b:Lv3/f0;

    invoke-static {v3}, Lv3/f0;->f(Lv3/f0;)Lu3/a$f;

    move-result-object v3

    invoke-interface {v3}, Lu3/a$f;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lu3/a$f;->o(Lx3/j;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "GoogleApiManager"

    const-string v4, "Failed to get service from broker. "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lv3/e0;->b:Lv3/f0;

    invoke-static {v1}, Lv3/f0;->f(Lv3/f0;)Lu3/a$f;

    move-result-object v1

    const-string v3, "Failed to get service from broker."

    invoke-interface {v1, v3}, Lu3/a$f;->b(Ljava/lang/String;)V

    new-instance v1, Lt3/b;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lt3/b;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lv3/c0;->p(Lt3/b;Ljava/lang/Exception;)V

    return-void

    :cond_2
    iget-object v1, p0, Lv3/e0;->a:Lt3/b;

    invoke-virtual {v0, v1, v2}, Lv3/c0;->p(Lt3/b;Ljava/lang/Exception;)V

    return-void
.end method
