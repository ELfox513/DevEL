.class public Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Split;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Split"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Split$Dispatcher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-direct {v0}, Lnet/bytebuddy/dynamic/NexusAccessor;-><init>()V

    invoke-direct {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Split;-><init>(Lnet/bytebuddy/dynamic/NexusAccessor;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/dynamic/NexusAccessor;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection;-><init>(Lnet/bytebuddy/dynamic/NexusAccessor;)V

    return-void
.end method


# virtual methods
.method public dispatcher(I)Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;
    .locals 2

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Split$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Split$Dispatcher;-><init>(Lnet/bytebuddy/dynamic/NexusAccessor;I)V

    return-object v0
.end method
