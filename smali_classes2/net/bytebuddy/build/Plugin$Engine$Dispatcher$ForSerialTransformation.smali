.class public Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForSerialTransformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation$Factory;
    }
.end annotation


# instance fields
.field private final failed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final preprocessings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sink:Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;

.field private final transformed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final unresolved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->sink:Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->transformed:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->failed:Ljava/util/Map;

    iput-object p4, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->unresolved:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->preprocessings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Ljava/util/concurrent/Callable;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;",
            ">;>;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;

    iget-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->sink:Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->transformed:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->failed:Ljava/util/Map;

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->unresolved:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v2}, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;->materialize(Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->preprocessings:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    instance-of p2, p1, Ljava/io/IOException;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public complete()V
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->preprocessings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->sink:Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;

    iget-object v3, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->transformed:Ljava/util/List;

    iget-object v4, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->failed:Ljava/util/Map;

    iget-object v5, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForSerialTransformation;->unresolved:Ljava/util/List;

    invoke-interface {v1, v2, v3, v4, v5}, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;->materialize(Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interrupted during plugin engine completion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method
