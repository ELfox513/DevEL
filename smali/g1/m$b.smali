.class public Lg1/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1/d;

.field public final synthetic b:Lg1/m;


# direct methods
.method public constructor <init>(Lg1/m;Lh1/d;)V
    .locals 0

    iput-object p1, p0, Lg1/m$b;->b:Lg1/m;

    iput-object p2, p0, Lg1/m$b;->a:Lh1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lg1/m$b;->a:Lh1/d;

    invoke-virtual {v0}, Lh1/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v3

    sget-object v4, Lg1/m;->r:Ljava/lang/String;

    const-string v5, "Updating notification for %s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lg1/m$b;->b:Lg1/m;

    iget-object v7, v7, Lg1/m;->d:Lf1/p;

    iget-object v7, v7, Lf1/p;->c:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v1}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Lg1/m$b;->b:Lg1/m;

    iget-object v1, v1, Lg1/m;->k:Landroidx/work/ListenableWorker;

    invoke-virtual {v1, v2}, Landroidx/work/ListenableWorker;->setRunInForeground(Z)V

    iget-object v1, p0, Lg1/m$b;->b:Lg1/m;

    iget-object v2, v1, Lg1/m;->a:Lh1/d;

    iget-object v3, v1, Lg1/m;->p:Lw0/f;

    iget-object v4, v1, Lg1/m;->b:Landroid/content/Context;

    iget-object v1, v1, Lg1/m;->k:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v3, v4, v1, v0}, Lw0/f;->a(Landroid/content/Context;Ljava/util/UUID;Lw0/e;)Ll5/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lh1/d;->s(Ll5/a;)Z

    goto :goto_0

    :cond_0
    const-string v0, "Worker was marked important (%s) but did not provide ForegroundInfo"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lg1/m$b;->b:Lg1/m;

    iget-object v3, v3, Lg1/m;->d:Lf1/p;

    iget-object v3, v3, Lf1/p;->c:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lg1/m$b;->b:Lg1/m;

    iget-object v1, v1, Lg1/m;->a:Lh1/d;

    invoke-virtual {v1, v0}, Lh1/d;->r(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
