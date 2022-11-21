.class public abstract Ll0/a;
.super Ll0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll0/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ll0/b<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final j:Ljava/util/concurrent/Executor;

.field public volatile k:Ll0/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field public volatile l:Ll0/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field public m:J

.field public n:J

.field public o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Ll0/c;->s:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Ll0/a;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0, p1}, Ll0/b;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Ll0/a;->n:J

    iput-object p2, p0, Ll0/a;->j:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public abstract A()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public B(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method public C()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    invoke-virtual {p0}, Ll0/a;->A()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Ll0/b;->g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Ll0/a;->k:Ll0/a$a;

    const-string p4, " waiting="

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ll0/a;->k:Ll0/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ll0/a;->k:Ll0/a$a;

    iget-boolean p2, p2, Ll0/a$a;->w:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    iget-object p2, p0, Ll0/a;->l:Ll0/a$a;

    if-eqz p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ll0/a;->l:Ll0/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ll0/a;->l:Ll0/a$a;

    iget-boolean p2, p2, Ll0/a$a;->w:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-wide v0, p0, Ll0/a;->m:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p1, p0, Ll0/a;->m:J

    invoke-static {p1, p2, p3}, Lc0/h;->c(JLjava/io/PrintWriter;)V

    const-string p1, " mLastLoadCompleteTime="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p1, p0, Ll0/a;->n:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lc0/h;->b(JJLjava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method public k()Z
    .locals 4

    iget-object v0, p0, Ll0/a;->k:Ll0/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Ll0/b;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll0/b;->h:Z

    :cond_0
    iget-object v0, p0, Ll0/a;->l:Ll0/a$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll0/a;->k:Ll0/a$a;

    iget-boolean v0, v0, Ll0/a$a;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll0/a;->k:Ll0/a$a;

    iput-boolean v1, v0, Ll0/a$a;->w:Z

    iget-object v0, p0, Ll0/a;->o:Landroid/os/Handler;

    iget-object v3, p0, Ll0/a;->k:Ll0/a$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v2, p0, Ll0/a;->k:Ll0/a$a;

    return v1

    :cond_2
    iget-object v0, p0, Ll0/a;->k:Ll0/a$a;

    iget-boolean v0, v0, Ll0/a$a;->w:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ll0/a;->k:Ll0/a$a;

    iput-boolean v1, v0, Ll0/a$a;->w:Z

    iget-object v0, p0, Ll0/a;->o:Landroid/os/Handler;

    iget-object v3, p0, Ll0/a;->k:Ll0/a$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Ll0/a;->k:Ll0/a$a;

    return v1

    :cond_3
    iget-object v0, p0, Ll0/a;->k:Ll0/a$a;

    invoke-virtual {v0, v1}, Ll0/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Ll0/a;->k:Ll0/a$a;

    iput-object v1, p0, Ll0/a;->l:Ll0/a$a;

    invoke-virtual {p0}, Ll0/a;->w()V

    :cond_4
    iput-object v2, p0, Ll0/a;->k:Ll0/a$a;

    return v0

    :cond_5
    return v1
.end method

.method public m()V
    .locals 1

    invoke-super {p0}, Ll0/b;->m()V

    invoke-virtual {p0}, Ll0/b;->b()Z

    new-instance v0, Ll0/a$a;

    invoke-direct {v0, p0}, Ll0/a$a;-><init>(Ll0/a;)V

    iput-object v0, p0, Ll0/a;->k:Ll0/a$a;

    invoke-virtual {p0}, Ll0/a;->z()V

    return-void
.end method

.method public w()V
    .locals 0

    return-void
.end method

.method public x(Ll0/a$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Ll0/a;->B(Ljava/lang/Object;)V

    iget-object p2, p0, Ll0/a;->l:Ll0/a$a;

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Ll0/b;->s()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ll0/a;->n:J

    const/4 p1, 0x0

    iput-object p1, p0, Ll0/a;->l:Ll0/a$a;

    invoke-virtual {p0}, Ll0/b;->e()V

    invoke-virtual {p0}, Ll0/a;->z()V

    :cond_0
    return-void
.end method

.method public y(Ll0/a$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    iget-object v0, p0, Ll0/a;->k:Ll0/a$a;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1, p2}, Ll0/a;->x(Ll0/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ll0/b;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Ll0/a;->B(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ll0/b;->c()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ll0/a;->n:J

    const/4 p1, 0x0

    iput-object p1, p0, Ll0/a;->k:Ll0/a$a;

    invoke-virtual {p0, p2}, Ll0/b;->f(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public z()V
    .locals 6

    iget-object v0, p0, Ll0/a;->l:Ll0/a$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Ll0/a;->k:Ll0/a$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll0/a;->k:Ll0/a$a;

    iget-boolean v0, v0, Ll0/a$a;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll0/a;->k:Ll0/a$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ll0/a$a;->w:Z

    iget-object v0, p0, Ll0/a;->o:Landroid/os/Handler;

    iget-object v1, p0, Ll0/a;->k:Ll0/a$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-wide v0, p0, Ll0/a;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ll0/a;->n:J

    iget-wide v4, p0, Ll0/a;->m:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-object v0, p0, Ll0/a;->k:Ll0/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ll0/a$a;->w:Z

    iget-object v0, p0, Ll0/a;->o:Landroid/os/Handler;

    iget-object v1, p0, Ll0/a;->k:Ll0/a$a;

    iget-wide v2, p0, Ll0/a;->n:J

    iget-wide v4, p0, Ll0/a;->m:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Ll0/a;->k:Ll0/a$a;

    iget-object v1, p0, Ll0/a;->j:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ll0/c;->c(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Ll0/c;

    :cond_2
    return-void
.end method
