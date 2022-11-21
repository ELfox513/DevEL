.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RawMatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForElementMatchers;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Conjunction;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;
    }
.end annotation


# virtual methods
.method public abstract matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z
    .param p2    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Lnet/bytebuddy/utility/JavaModule;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Class;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            ")Z"
        }
    .end annotation
.end method
