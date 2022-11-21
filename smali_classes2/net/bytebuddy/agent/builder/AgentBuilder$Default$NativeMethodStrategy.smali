.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeMethodStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$ForPrefix;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$Disabled;
    }
.end annotation


# virtual methods
.method public abstract apply(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;)V
.end method

.method public abstract resolve()Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;
.end method
