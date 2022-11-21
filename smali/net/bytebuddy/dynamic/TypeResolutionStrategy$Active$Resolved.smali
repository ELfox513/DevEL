.class public Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resolved"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final identification:I

.field private final nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/NexusAccessor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    iput p2, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;->identification:I

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
    iget v2, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;->identification:I

    check-cast p1, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;

    iget v3, p1, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;->identification:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/NexusAccessor;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/NexusAccessor;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;->identification:I

    add-int/2addr v0, v1

    return v0
.end method

.method public initialize(Lnet/bytebuddy/dynamic/DynamicType;Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Ljava/util/Map;
    .locals 4
    .param p2    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/ClassLoader;",
            ">(",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            "TS;",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "-TS;>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType;->getLoadedTypeInitializers()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType;->getAllTypes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget v3, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;->identification:I

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    invoke-virtual {p2, p3, v2, v3, v1}, Lnet/bytebuddy/dynamic/NexusAccessor;->register(Ljava/lang/String;Ljava/lang/ClassLoader;ILnet/bytebuddy/implementation/LoadedTypeInitializer;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    invoke-interface {v0, p3}, Lnet/bytebuddy/implementation/LoadedTypeInitializer;->onLoad(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public injectedInto(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
    .locals 2

    new-instance v0, Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;

    iget v1, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;->identification:I

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;-><init>(I)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;->expandWith(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-result-object p1

    return-object p1
.end method
