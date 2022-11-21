.class public abstract Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$WithDelegation;
.super Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithDelegation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field public final classFileTransformer:Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$WithDelegation;->classFileTransformer:Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$WithDelegation;->classFileTransformer:Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    check-cast p1, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$WithDelegation;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$WithDelegation;->classFileTransformer:Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$WithDelegation;->classFileTransformer:Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public iterator(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Ljava/util/Iterator;
    .locals 6
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
            ")",
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$WithDelegation;->classFileTransformer:Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;->iterator(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public reset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;)Z
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$WithDelegation;->classFileTransformer:Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;->reset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;)Z

    move-result p1

    return p1
.end method
