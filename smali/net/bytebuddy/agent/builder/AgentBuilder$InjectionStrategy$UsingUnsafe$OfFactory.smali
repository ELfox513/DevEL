.class public Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingUnsafe$OfFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingUnsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfFactory"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final factory:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Factory;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingUnsafe$OfFactory;->factory:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Factory;

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingUnsafe$OfFactory;->factory:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Factory;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingUnsafe$OfFactory;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingUnsafe$OfFactory;->factory:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Factory;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Factory;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingUnsafe$OfFactory;->factory:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Factory;

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Factory;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 1
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingUnsafe$OfFactory;->factory:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Factory;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Factory;->make(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;

    move-result-object p1

    return-object p1
.end method
