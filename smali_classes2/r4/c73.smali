.class public abstract Lr4/c73;
.super Lr4/l63;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/l63<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field public static final u:Lr4/y63;

.field public static final v:Ljava/util/logging/Logger;


# instance fields
.field public volatile s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public volatile t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-class v0, Lr4/c73;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lr4/c73;->v:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lr4/a73;

    const-class v2, Lr4/c73;

    const-class v3, Ljava/util/Set;

    const-string v4, "s"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lr4/c73;

    const-string v4, "t"

    invoke-static {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lr4/a73;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Lr4/b73;

    invoke-direct {v2, v0}, Lr4/b73;-><init>(Lr4/z63;)V

    move-object v8, v1

    move-object v1, v2

    :goto_0
    sput-object v1, Lr4/c73;->u:Lr4/y63;

    if-eqz v8, :cond_0

    sget-object v3, Lr4/c73;->v:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "com.google.common.util.concurrent.AggregateFutureState"

    const-string v6, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lr4/l63;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/c73;->s:Ljava/util/Set;

    iput p1, p0, Lr4/c73;->t:I

    return-void
.end method

.method public static synthetic E(Lr4/c73;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lr4/c73;->s:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic F(Lr4/c73;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lr4/c73;->s:Ljava/util/Set;

    return-object p1
.end method

.method public static synthetic G(Lr4/c73;)I
    .locals 0

    iget p0, p0, Lr4/c73;->t:I

    return p0
.end method

.method public static synthetic H(Lr4/c73;I)I
    .locals 0

    iput p1, p0, Lr4/c73;->t:I

    return p1
.end method


# virtual methods
.method public final I()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/c73;->s:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/c73;->L(Ljava/util/Set;)V

    sget-object v1, Lr4/c73;->u:Lr4/y63;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lr4/y63;->a(Lr4/c73;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, p0, Lr4/c73;->s:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method public final J()I
    .locals 1

    sget-object v0, Lr4/c73;->u:Lr4/y63;

    invoke-virtual {v0, p0}, Lr4/y63;->b(Lr4/c73;)I

    move-result v0

    return v0
.end method

.method public final K()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/c73;->s:Ljava/util/Set;

    return-void
.end method

.method public abstract L(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method
