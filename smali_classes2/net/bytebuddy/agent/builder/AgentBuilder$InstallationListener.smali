.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InstallationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Adapter;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$ErrorSuppressing;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;
    }
.end annotation


# static fields
.field public static final SUPPRESS_ERROR:Ljava/lang/Throwable;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract onAfterWarmUp(Ljava/util/Map;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[B>;",
            "Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract onBeforeInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
.end method

.method public abstract onBeforeWarmUp(Ljava/util/Set;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract onInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
.end method

.method public abstract onReset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
.end method

.method public abstract onWarmUpError(Ljava/lang/Class;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method
