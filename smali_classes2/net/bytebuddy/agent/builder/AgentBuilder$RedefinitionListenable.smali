.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RedefinitionListenable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithoutBatchStrategy;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithImplicitDiscoveryStrategy;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithoutResubmissionSpecification;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionImmediateMatcher;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionOnErrorMatcher;
    }
.end annotation


# virtual methods
.method public abstract with(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;
.end method

.method public abstract withResubmission(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithoutResubmissionSpecification;
.end method
