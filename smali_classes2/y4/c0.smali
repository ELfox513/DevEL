.class public final Ly4/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/t;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ly4/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly4/n1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/n1<",
            "Ly4/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Ly4/c0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Ly4/c0;->a:Ly4/n1;

    return-void
.end method


# virtual methods
.method public final a(Lk5/f$b;Lk5/f$a;)V
    .locals 2

    invoke-static {}, Ly4/g1;->a()V

    iget-object v0, p0, Ly4/c0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/e0;

    if-nez v0, :cond_0

    new-instance p1, Ly4/u1;

    const/4 v0, 0x3

    const-string v1, "No available form can be built."

    invoke-direct {p1, v0, v1}, Ly4/u1;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Ly4/u1;->a()Lk5/e;

    move-result-object p1

    invoke-interface {p2, p1}, Lk5/f$a;->a(Lk5/e;)V

    return-void

    :cond_0
    iget-object v1, p0, Ly4/c0;->a:Ly4/n1;

    invoke-interface {v1}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v1, v0}, Ly4/t;->b(Ly4/e0;)Ly4/t;

    invoke-interface {v1}, Ly4/t;->a()Ly4/u;

    move-result-object v0

    invoke-interface {v0}, Ly4/u;->zza()Ly4/z;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ly4/z;->c(Lk5/f$b;Lk5/f$a;)V

    return-void
.end method

.method public final b(Ly4/e0;)V
    .locals 1

    iget-object v0, p0, Ly4/c0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Ly4/c0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
