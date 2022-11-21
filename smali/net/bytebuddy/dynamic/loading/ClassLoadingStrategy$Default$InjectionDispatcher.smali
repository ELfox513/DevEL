.class public Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;
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
    name = "InjectionDispatcher"
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


# instance fields
.field private final forbidExisting:Z

.field private final packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

.field private final protectionDomain:Ljava/security/ProtectionDomain;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    sget-object v1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;-><init>(Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)V
    .locals 0
    .param p1    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iput-boolean p3, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->forbidExisting:Z

    return-void
.end method


# virtual methods
.method public allowExistingTypes()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;-><init>(Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)V

    return-object v0
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
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->forbidExisting:Z

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;

    iget-boolean v3, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->forbidExisting:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    if-eqz v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_4
    if-eqz v2, :cond_6

    :cond_5
    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->forbidExisting:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
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

    if-eqz p1, :cond_0

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-boolean v3, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->forbidExisting:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)V

    invoke-virtual {v0, p2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;->inject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot inject classes into the bootstrap class loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public opened()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public with(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .locals 3
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

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->forbidExisting:Z

    invoke-direct {v0, p1, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;-><init>(Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)V

    return-object v0
.end method

.method public with(Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .locals 3
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

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;->forbidExisting:Z

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;-><init>(Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)V

    return-object v0
.end method
