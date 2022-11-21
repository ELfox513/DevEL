.class public final Lr4/d41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/q;


# instance fields
.field public final a:Lr4/r81;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lr4/r81;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lr4/d41;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lr4/d41;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lr4/d41;->a:Lr4/r81;

    return-void
.end method


# virtual methods
.method public final A2()V
    .locals 0

    return-void
.end method

.method public final C6(I)V
    .locals 1

    iget-object p1, p0, Lr4/d41;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lr4/d41;->b()V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lr4/d41;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lr4/d41;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/d41;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lr4/d41;->a:Lr4/r81;

    invoke-virtual {v0}, Lr4/r81;->zza()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lr4/d41;->b()V

    return-void
.end method

.method public final e3()V
    .locals 0

    return-void
.end method

.method public final j0()V
    .locals 1

    iget-object v0, p0, Lr4/d41;->a:Lr4/r81;

    invoke-virtual {v0}, Lr4/r81;->b()V

    return-void
.end method
