.class public Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/LoadedTypeInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InjectingInitializer"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final loadedTypeInitializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final rawAuxiliaryTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;Ljava/util/Map;Lnet/bytebuddy/dynamic/loading/ClassInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            ">;",
            "Lnet/bytebuddy/dynamic/loading/ClassInjector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->rawAuxiliaryTypes:Ljava/util/Map;

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->loadedTypeInitializers:Ljava/util/Map;

    iput-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->rawAuxiliaryTypes:Ljava/util/Map;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->rawAuxiliaryTypes:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->loadedTypeInitializers:Ljava/util/Map;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->loadedTypeInitializers:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->rawAuxiliaryTypes:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->loadedTypeInitializers:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAlive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLoad(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->rawAuxiliaryTypes:Ljava/util/Map;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector;->inject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->loadedTypeInitializers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v2, v1}, Lnet/bytebuddy/implementation/LoadedTypeInitializer;->onLoad(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->loadedTypeInitializers:Ljava/util/Map;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    invoke-interface {v0, p1}, Lnet/bytebuddy/implementation/LoadedTypeInitializer;->onLoad(Ljava/lang/Class;)V

    return-void
.end method
