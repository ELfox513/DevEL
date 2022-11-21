.class public Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrappingDispatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final CHILD_FIRST:Z = true

.field private static final PARENT_FIRST:Z = false


# instance fields
.field private final childFirst:Z

.field private final forbidExisting:Z

.field private final packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

.field private final persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

.field private final protectionDomain:Ljava/security/ProtectionDomain;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final sealed:Z


# direct methods
.method private constructor <init>(Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;ZZZ)V
    .locals 0
    .param p1    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iput-boolean p4, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->childFirst:Z

    iput-boolean p5, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->forbidExisting:Z

    iput-boolean p6, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->sealed:Z

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Z)V
    .locals 7

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    sget-object v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;-><init>(Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;ZZZ)V

    return-void
.end method


# virtual methods
.method public allowExistingTypes()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    new-instance v7, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-boolean v4, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->childFirst:Z

    iget-boolean v6, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->sealed:Z

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;-><init>(Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;ZZZ)V

    return-object v7
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
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->childFirst:Z

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;

    iget-boolean v3, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->childFirst:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->forbidExisting:Z

    iget-boolean v3, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->forbidExisting:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->sealed:Z

    iget-boolean v3, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->sealed:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    if-eqz v3, :cond_7

    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_7
    if-eqz v2, :cond_9

    :cond_8
    return v1

    :cond_9
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->childFirst:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->forbidExisting:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->sealed:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->childFirst:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v5, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-boolean v6, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->forbidExisting:Z

    iget-boolean v7, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->sealed:Z

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->load(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;ZZ)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-boolean v5, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->forbidExisting:Z

    iget-boolean v6, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->sealed:Z

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->load(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;ZZ)Ljava/util/Map;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public opened()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    new-instance v7, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-boolean v4, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->childFirst:Z

    iget-boolean v5, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->forbidExisting:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;-><init>(Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;ZZZ)V

    return-object v7
.end method

.method public with(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    new-instance v7, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-boolean v4, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->childFirst:Z

    iget-boolean v5, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->forbidExisting:Z

    iget-boolean v6, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->sealed:Z

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;-><init>(Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;ZZZ)V

    return-object v7
.end method

.method public with(Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    new-instance v7, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-boolean v4, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->childFirst:Z

    iget-boolean v5, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->forbidExisting:Z

    iget-boolean v6, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;->sealed:Z

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;-><init>(Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;ZZZ)V

    return-object v7
.end method
