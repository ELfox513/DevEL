.class public final Lr4/fk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m71;
.implements Lr4/k91;
.implements Lr4/xl2;
.implements La3/q;
.implements Lr4/w91;
.implements Lr4/z71;
.implements Lr4/cf1;


# instance fields
.field public final a:Lr4/pq2;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/go;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/io;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/ko;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/k91;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "La3/q;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/ex;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lr4/fk2;


# direct methods
.method public constructor <init>(Lr4/pq2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/fk2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/fk2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/fk2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/fk2;->p:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/fk2;->q:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/fk2;->r:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/fk2;->s:Lr4/fk2;

    iput-object p1, p0, Lr4/fk2;->a:Lr4/pq2;

    return-void
.end method

.method public static d(Lr4/fk2;)Lr4/fk2;
    .locals 2

    new-instance v0, Lr4/fk2;

    iget-object v1, p0, Lr4/fk2;->a:Lr4/pq2;

    invoke-direct {v0, v1}, Lr4/fk2;-><init>(Lr4/pq2;)V

    iput-object p0, v0, Lr4/fk2;->s:Lr4/fk2;

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget-object v0, p0, Lr4/fk2;->s:Lr4/fk2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/fk2;->A()V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/fk2;->a:Lr4/pq2;

    invoke-virtual {v0}, Lr4/pq2;->b()V

    iget-object v0, p0, Lr4/fk2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/zj2;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    iget-object v0, p0, Lr4/fk2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/ak2;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final A2()V
    .locals 0

    return-void
.end method

.method public final B(Lr4/lt;)V
    .locals 2

    iget-object v0, p0, Lr4/fk2;->s:Lr4/fk2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/fk2;->B(Lr4/lt;)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/fk2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/xj2;

    invoke-direct {v1, p1}, Lr4/xj2;-><init>(Lr4/lt;)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    iget-object v0, p0, Lr4/fk2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/yj2;

    invoke-direct {v1, p1}, Lr4/yj2;-><init>(Lr4/lt;)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final C6(I)V
    .locals 2

    iget-object v0, p0, Lr4/fk2;->s:Lr4/fk2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/fk2;->C6(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/fk2;->q:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/rj2;

    invoke-direct {v1, p1}, Lr4/rj2;-><init>(I)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final L(Lr4/io;)V
    .locals 1

    iget-object v0, p0, Lr4/fk2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/fk2;->s:Lr4/fk2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/fk2;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/fk2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/uj2;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lr4/fk2;->s:Lr4/fk2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/fk2;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/fk2;->q:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/tj2;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lr4/fk2;->s:Lr4/fk2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/fk2;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/fk2;->q:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/sj2;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final e3()V
    .locals 0

    return-void
.end method

.method public final g(Lr4/go;)V
    .locals 1

    iget-object v0, p0, Lr4/fk2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Lr4/ko;)V
    .locals 1

    iget-object v0, p0, Lr4/fk2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final j0()V
    .locals 2

    iget-object v0, p0, Lr4/fk2;->s:Lr4/fk2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/fk2;->j0()V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/fk2;->q:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/ck2;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    iget-object v0, p0, Lr4/fk2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/dk2;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    iget-object v0, p0, Lr4/fk2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/ek2;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final o(Lr4/lt;)V
    .locals 2

    iget-object v0, p0, Lr4/fk2;->s:Lr4/fk2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/fk2;->o(Lr4/lt;)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/fk2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/vj2;

    invoke-direct {v1, p1}, Lr4/vj2;-><init>(Lr4/lt;)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final o0()V
    .locals 2

    iget-object v0, p0, Lr4/fk2;->s:Lr4/fk2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/fk2;->o0()V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/fk2;->p:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/bk2;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final p(Lr4/k91;)V
    .locals 1

    iget-object v0, p0, Lr4/fk2;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final q(La3/q;)V
    .locals 1

    iget-object v0, p0, Lr4/fk2;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Lr4/xl2;)V
    .locals 0

    check-cast p1, Lr4/fk2;

    iput-object p1, p0, Lr4/fk2;->s:Lr4/fk2;

    return-void
.end method

.method public final u(Lr4/au;)V
    .locals 2

    iget-object v0, p0, Lr4/fk2;->s:Lr4/fk2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/fk2;->u(Lr4/au;)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/fk2;->r:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/qj2;

    invoke-direct {v1, p1}, Lr4/qj2;-><init>(Lr4/au;)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final v(Lr4/ex;)V
    .locals 1

    iget-object v0, p0, Lr4/fk2;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final z(Lr4/do;)V
    .locals 2

    iget-object v0, p0, Lr4/fk2;->s:Lr4/fk2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/fk2;->z(Lr4/do;)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/fk2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/wj2;

    invoke-direct {v1, p1}, Lr4/wj2;-><init>(Lr4/do;)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method
