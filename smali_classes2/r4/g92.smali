.class public final Lr4/g92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/w91;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/ex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/g92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(Lr4/ex;)V
    .locals 1

    iget-object v0, p0, Lr4/g92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Lr4/au;)V
    .locals 2

    iget-object v0, p0, Lr4/g92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/f92;

    invoke-direct {v1, p1}, Lr4/f92;-><init>(Lr4/au;)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method
