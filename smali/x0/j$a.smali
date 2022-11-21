.class public Lx0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx0/j;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll5/a;

.field public final synthetic b:Lh1/d;

.field public final synthetic d:Lx0/j;


# direct methods
.method public constructor <init>(Lx0/j;Ll5/a;Lh1/d;)V
    .locals 0

    iput-object p1, p0, Lx0/j$a;->d:Lx0/j;

    iput-object p2, p0, Lx0/j$a;->a:Ll5/a;

    iput-object p3, p0, Lx0/j$a;->b:Lh1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lx0/j$a;->a:Ll5/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v0

    sget-object v1, Lx0/j;->E:Ljava/lang/String;

    const-string v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lx0/j$a;->d:Lx0/j;

    iget-object v4, v4, Lx0/j;->p:Lf1/p;

    iget-object v4, v4, Lf1/p;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, Lx0/j$a;->d:Lx0/j;

    iget-object v1, v0, Lx0/j;->q:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->startWork()Ll5/a;

    move-result-object v1

    iput-object v1, v0, Lx0/j;->C:Ll5/a;

    iget-object v0, p0, Lx0/j$a;->b:Lh1/d;

    iget-object v1, p0, Lx0/j$a;->d:Lx0/j;

    iget-object v1, v1, Lx0/j;->C:Ll5/a;

    invoke-virtual {v0, v1}, Lh1/d;->s(Ll5/a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lx0/j$a;->b:Lh1/d;

    invoke-virtual {v1, v0}, Lh1/d;->r(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
