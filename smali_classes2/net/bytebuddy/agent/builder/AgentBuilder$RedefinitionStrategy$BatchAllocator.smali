.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatchAllocator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Partitioning;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$ForMatchedGrouping;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$ForFixedSize;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$ForTotal;
    }
.end annotation


# static fields
.field public static final FIRST_BATCH:I


# virtual methods
.method public abstract batch(Ljava/util/List;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end method
