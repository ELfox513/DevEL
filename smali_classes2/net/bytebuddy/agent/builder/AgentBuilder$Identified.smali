.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$Identified;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Identified"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Extendable;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    }
.end annotation


# virtual methods
.method public abstract transform(Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Extendable;
.end method
