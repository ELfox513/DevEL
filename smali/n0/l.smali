.class public abstract Ln0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ln0/e;

.field public volatile c:Lq0/f;


# direct methods
.method public constructor <init>(Ln0/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ln0/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Ln0/l;->b:Ln0/e;

    return-void
.end method


# virtual methods
.method public a()Lq0/f;
    .locals 3

    invoke-virtual {p0}, Ln0/l;->b()V

    iget-object v0, p0, Ln0/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/l;->e(Z)Lq0/f;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ln0/l;->b:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->a()V

    return-void
.end method

.method public final c()Lq0/f;
    .locals 2

    invoke-virtual {p0}, Ln0/l;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ln0/l;->b:Ln0/e;

    invoke-virtual {v1, v0}, Ln0/e;->d(Ljava/lang/String;)Lq0/f;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public final e(Z)Lq0/f;
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p0, Ln0/l;->c:Lq0/f;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ln0/l;->c()Lq0/f;

    move-result-object p1

    iput-object p1, p0, Ln0/l;->c:Lq0/f;

    :cond_0
    iget-object p1, p0, Ln0/l;->c:Lq0/f;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ln0/l;->c()Lq0/f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f(Lq0/f;)V
    .locals 1

    iget-object v0, p0, Ln0/l;->c:Lq0/f;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ln0/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
