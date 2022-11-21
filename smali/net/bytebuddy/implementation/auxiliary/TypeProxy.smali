.class public Lnet/bytebuddy/implementation/auxiliary/TypeProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForDefaultMethod;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByReflectionFactory;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$SilentConstruction;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field public static final INSTANCE_FIELD:Ljava/lang/String; = "target"

.field public static final REFLECTION_METHOD:Ljava/lang/String; = "make"


# instance fields
.field private final ignoreFinalizer:Z

.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

.field private final invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

.field private final proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final serializableProxy:Z


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iput-object p3, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    iput-boolean p4, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    iput-boolean p5, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/implementation/Implementation$Target;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    return-object p0
.end method

.method public static synthetic b(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object p0
.end method

.method public static synthetic c(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    return-object p0
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
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    check-cast p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    iget-object p1, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/utility/RandomString;->hashOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    const-string v2, "0"

    if-eqz v1, :cond_0

    const-string v1, "I"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    if-eqz v1, :cond_1

    const-string v2, "S"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Ljava/lang/String;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType;
    .locals 3

    new-instance v0, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v0, p2}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    sget-object p2, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p2

    iget-boolean v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lnet/bytebuddy/ByteBuddy;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p2, v0}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;->DEFAULT_TYPE_MODIFIER:[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-array p2, v0, [Ljava/lang/Class;

    const-class v2, Ljava/io/Serializable;

    aput-object v2, p2, v1

    goto :goto_1

    :cond_1
    new-array p2, v1, [Ljava/lang/Class;

    :goto_1
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object p1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object p1

    new-instance p2, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    invoke-direct {p2, p0, p3}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;-><init>(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;Lnet/bytebuddy/implementation/MethodAccessorFactory;)V

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    const-class p2, Lnet/bytebuddy/dynamic/TargetType;

    new-array p3, v0, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v0, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    aput-object v0, p3, v1

    const-string v0, "make"

    invoke-interface {p1, v0, p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$SilentConstruction;->INSTANCE:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$SilentConstruction;

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method
