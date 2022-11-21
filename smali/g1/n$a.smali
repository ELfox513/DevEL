.class public Lg1/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/n;->a(Landroid/content/Context;Ljava/util/UUID;Lw0/e;)Ll5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1/d;

.field public final synthetic b:Ljava/util/UUID;

.field public final synthetic d:Lw0/e;

.field public final synthetic k:Landroid/content/Context;

.field public final synthetic p:Lg1/n;


# direct methods
.method public constructor <init>(Lg1/n;Lh1/d;Ljava/util/UUID;Lw0/e;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lg1/n$a;->p:Lg1/n;

    iput-object p2, p0, Lg1/n$a;->a:Lh1/d;

    iput-object p3, p0, Lg1/n$a;->b:Ljava/util/UUID;

    iput-object p4, p0, Lg1/n$a;->d:Lw0/e;

    iput-object p5, p0, Lg1/n$a;->k:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lg1/n$a;->a:Lh1/d;

    invoke-virtual {v0}, Lh1/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg1/n$a;->b:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg1/n$a;->p:Lg1/n;

    iget-object v1, v1, Lg1/n;->c:Lf1/q;

    invoke-interface {v1, v0}, Lf1/q;->l(Ljava/lang/String;)Lw0/s;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lw0/s;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lg1/n$a;->p:Lg1/n;

    iget-object v1, v1, Lg1/n;->b:Le1/a;

    iget-object v2, p0, Lg1/n$a;->d:Lw0/e;

    invoke-interface {v1, v0, v2}, Le1/a;->a(Ljava/lang/String;Lw0/e;)V

    iget-object v1, p0, Lg1/n$a;->k:Landroid/content/Context;

    iget-object v2, p0, Lg1/n$a;->d:Lw0/e;

    invoke-static {v1, v0, v2}, Landroidx/work/impl/foreground/a;->a(Landroid/content/Context;Ljava/lang/String;Lw0/e;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lg1/n$a;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lg1/n$a;->a:Lh1/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh1/d;->q(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lg1/n$a;->a:Lh1/d;

    invoke-virtual {v1, v0}, Lh1/d;->r(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method
