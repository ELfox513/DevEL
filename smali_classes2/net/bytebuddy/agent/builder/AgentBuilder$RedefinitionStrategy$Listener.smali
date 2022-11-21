.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Compound;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Pausing;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$BatchReallocator;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Adapter;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Yielding;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$NoOp;
    }
.end annotation


# virtual methods
.method public abstract onBatch(ILjava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation
.end method

.method public abstract onComplete(ILjava/util/List;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(ILjava/util/List;Ljava/lang/Throwable;Ljava/util/List;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end method
