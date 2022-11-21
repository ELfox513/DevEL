.class public Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassLoadingTypeProjection"
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

.field private final delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private transient synthetic erasure:Lnet/bytebuddy/description/type/TypeDescription;

.field private transient synthetic interfaces:Lnet/bytebuddy/description/type/TypeList$Generic;

.field private transient synthetic superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;)V
    .locals 0
    .param p2    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->classLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

    return-void
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "erasure"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->erasure:Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->erasure:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->erasure:Lnet/bytebuddy/description/type/TypeDescription;

    :goto_1
    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 5
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "interfaces"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->interfaces:Lnet/bytebuddy/description/type/TypeList$Generic;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    :try_start_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v2, v3, v4}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

    invoke-direct {v1, v0, v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;-><init>(Lnet/bytebuddy/description/type/TypeList$Generic;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->interfaces:Lnet/bytebuddy/description/type/TypeList$Generic;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->interfaces:Lnet/bytebuddy/description/type/TypeList$Generic;

    :goto_1
    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 5
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "superClass"
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v2, v3, v4}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

    invoke-direct {v1, v0, v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_1
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object v0
.end method

.method public resolve()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method
