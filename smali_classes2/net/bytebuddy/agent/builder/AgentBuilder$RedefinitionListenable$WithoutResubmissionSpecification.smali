.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithoutResubmissionSpecification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WithoutResubmissionSpecification"
.end annotation


# virtual methods
.method public abstract resubmitImmediate()Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;
.end method

.method public abstract resubmitImmediate(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionImmediateMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;
.end method

.method public abstract resubmitImmediate(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;"
        }
    .end annotation
.end method

.method public abstract resubmitImmediate(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;"
        }
    .end annotation
.end method

.method public abstract resubmitImmediate(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;"
        }
    .end annotation
.end method

.method public abstract resubmitOnError()Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;
.end method

.method public abstract resubmitOnError(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionOnErrorMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;
.end method

.method public abstract resubmitOnError(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;"
        }
    .end annotation
.end method

.method public abstract resubmitOnError(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;"
        }
    .end annotation
.end method

.method public abstract resubmitOnError(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;"
        }
    .end annotation
.end method

.method public abstract resubmitOnError(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithResubmissionSpecification;"
        }
    .end annotation
.end method
