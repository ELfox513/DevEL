.class public final synthetic Lr4/zo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/vm0;

.field public final b:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Lr4/vm0;Ljava/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zo;->a:Lr4/vm0;

    iput-object p2, p0, Lr4/zo;->b:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/zo;->a:Lr4/vm0;

    iget-object v1, p0, Lr4/zo;->b:Ljava/util/concurrent/Future;

    invoke-virtual {v0}, Lr4/vm0;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
