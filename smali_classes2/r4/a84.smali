.class public final Lr4/a84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/q84;

.field public final synthetic b:Lr4/b84;


# direct methods
.method public constructor <init>(Lr4/b84;Lr4/q84;)V
    .locals 0

    iput-object p1, p0, Lr4/a84;->b:Lr4/b84;

    iput-object p2, p0, Lr4/a84;->a:Lr4/q84;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/a84;->b:Lr4/b84;

    invoke-static {v0}, Lr4/b84;->a(Lr4/b84;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lr4/a84;->a:Lr4/q84;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
