.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;
    }
.end annotation


# virtual methods
.method public abstract classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p2    # Lnet/bytebuddy/utility/JavaModule;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
.end method
