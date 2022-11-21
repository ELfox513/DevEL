.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator$Matchable;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ignoring"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator$Matchable<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

.field private final rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->a:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator$Matchable;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    return-void
.end method


# virtual methods
.method public and(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 6

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->a:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    new-instance v2, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Conjunction;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Conjunction;-><init>([Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V

    return-object v0
.end method

.method public bridge synthetic and(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Matchable;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->and(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object p1

    return-object p1
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->a:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->a:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->a:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 28

    move-object/from16 v0, p0

    new-instance v25, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    move-object/from16 v1, v25

    iget-object v15, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->a:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v2, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    iget-object v3, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    iget-object v4, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    iget-object v5, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->typeStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;

    iget-object v7, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v8, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->nativeMethodStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

    iget-object v9, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->warmupStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy;

    iget-object v10, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->transformerDecorator:Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;

    iget-object v11, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->initializationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

    iget-object v12, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    iget-object v13, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->redefinitionDiscoveryStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;

    iget-object v14, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->redefinitionBatchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    move-object/from16 v26, v1

    iget-object v1, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->redefinitionListener:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;

    move-object/from16 v27, v2

    move-object v2, v15

    move-object v15, v1

    iget-object v1, v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->redefinitionResubmissionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;

    move-object/from16 v16, v1

    iget-object v1, v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->injectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;

    move-object/from16 v17, v1

    iget-object v1, v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    move-object/from16 v18, v1

    iget-object v1, v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    move-object/from16 v19, v1

    iget-object v1, v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    move-object/from16 v20, v1

    iget-object v1, v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->classFileBufferStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

    move-object/from16 v21, v1

    iget-object v1, v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object/from16 v23, v1

    iget-object v1, v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->transformations:Ljava/util/List;

    move-object/from16 v24, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v24}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;-><init>(Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Ljava/util/List;)V

    return-object v25
.end method

.method public or(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 6

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->a:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    new-instance v2, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;-><init>([Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V

    return-object v0
.end method

.method public bridge synthetic or(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Matchable;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Ignoring;->or(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object p1

    return-object p1
.end method
