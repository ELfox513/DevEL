.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InitializationStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$NoOp;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;
    }
.end annotation


# virtual methods
.method public abstract dispatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;
.end method
