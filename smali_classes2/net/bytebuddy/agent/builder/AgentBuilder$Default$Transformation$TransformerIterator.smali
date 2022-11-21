.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformerIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;",
        ">;"
    }
.end annotation


# instance fields
.field private final classBeingRedefined:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final classLoader:Ljava/lang/ClassLoader;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final module:Lnet/bytebuddy/utility/JavaModule;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final protectionDomain:Ljava/security/ProtectionDomain;

.field private final transformations:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private transformers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;",
            ">;"
        }
    .end annotation
.end field

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;Ljava/util/List;)V
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
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->classLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->module:Lnet/bytebuddy/utility/JavaModule;

    iput-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->classBeingRedefined:Ljava/lang/Class;

    iput-object p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    iput-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p6

    iput-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    :cond_0
    :goto_0
    iget-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-nez p6, :cond_1

    iget-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_1

    iget-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    invoke-virtual {p6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getMatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getTransformers()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    iput-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->next()Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    move-result-object v0

    return-object v0
.end method

.method public next()Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getMatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->classLoader:Ljava/lang/ClassLoader;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->classBeingRedefined:Ljava/lang/Class;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-interface/range {v2 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getTransformers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    :cond_2
    :goto_1
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getMatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->classLoader:Ljava/lang/ClassLoader;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->classBeingRedefined:Ljava/lang/Class;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-interface/range {v2 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getTransformers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    goto :goto_1

    :cond_3
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
