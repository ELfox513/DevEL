.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InjectionStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingInstrumentation;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingUnsafe;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingReflection;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;
    }
.end annotation


# virtual methods
.method public abstract resolve(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
.end method
