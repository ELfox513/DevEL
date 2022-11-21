.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WarmupStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$NoOp;
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;)V
.end method

.method public abstract with(Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy;"
        }
    .end annotation
.end method
