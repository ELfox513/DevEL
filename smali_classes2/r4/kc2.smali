.class public final Lr4/kc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lr4/dg2;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/jc2<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field public final b:Lc4/f;

.field public final c:Lr4/eg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/eg2<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final d:J


# direct methods
.method public constructor <init>(Lr4/eg2;JLc4/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/eg2<",
            "TS;>;J",
            "Lc4/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/kc2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lr4/kc2;->b:Lc4/f;

    iput-object p1, p0, Lr4/kc2;->c:Lr4/eg2;

    iput-wide p2, p0, Lr4/kc2;->d:J

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/kc2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/jc2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/jc2;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lr4/jc2;

    iget-object v1, p0, Lr4/kc2;->c:Lr4/eg2;

    invoke-interface {v1}, Lr4/eg2;->zza()Lr4/h83;

    move-result-object v1

    iget-wide v2, p0, Lr4/kc2;->d:J

    iget-object v4, p0, Lr4/kc2;->b:Lc4/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lr4/jc2;-><init>(Lr4/h83;JLc4/f;)V

    iget-object v1, p0, Lr4/kc2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lr4/jc2;->a:Lr4/h83;

    return-object v0
.end method
