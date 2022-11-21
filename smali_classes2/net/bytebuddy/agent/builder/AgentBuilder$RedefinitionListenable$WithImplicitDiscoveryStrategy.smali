.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithImplicitDiscoveryStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WithImplicitDiscoveryStrategy"
.end annotation


# virtual methods
.method public varargs abstract redefineOnly([Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;"
        }
    .end annotation
.end method

.method public abstract with(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;
.end method
