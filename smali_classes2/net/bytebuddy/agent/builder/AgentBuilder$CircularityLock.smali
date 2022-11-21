.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CircularityLock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Default;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;
    }
.end annotation


# virtual methods
.method public abstract acquire()Z
.end method

.method public abstract release()V
.end method
