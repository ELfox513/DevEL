.class public final Lr4/d83;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/g83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/g83<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lr4/g83;Lr4/f83;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/g83<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    iput-object p1, p0, Lr4/d83;->a:Lr4/g83;

    return-void
.end method

.method public static synthetic a(Lr4/d83;Ljava/lang/Thread;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/d83;->a:Lr4/g83;

    invoke-virtual {v0}, Lr4/g83;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
