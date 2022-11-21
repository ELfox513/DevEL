.class public abstract Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;
.super Lnet/bytebuddy/description/TypeVariableSource$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field public static final RAW_TYPES:Z


# instance fields
.field private transient synthetic hashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.security.AccessController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v1, "net.bytebuddy.securitymanager"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    sput-boolean v1, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->ACCESS_CONTROLLER:Z

    goto :goto_0

    :catch_1
    sput-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->ACCESS_CONTROLLER:Z

    :goto_0
    :try_start_1
    new-instance v1, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;

    const-string v2, "net.bytebuddy.raw"

    invoke-direct {v1, v2}, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    sput-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/TypeVariableSource$AbstractBase;-><init>()V

    return-void
.end method

.method private static doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/AccessControllerPlugin$Enhance;
    .end annotation

    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static isAssignable(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 4
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Assuming component type for array type."
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignable(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription;->ARRAY_INTERFACES:Lnet/bytebuddy/description/type/TypeList$Generic;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2

    :cond_4
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_5
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_8
    return v3
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/description/TypeVariableSource$Visitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/TypeVariableSource$Visitor<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Lnet/bytebuddy/description/TypeVariableSource$Visitor;->onType(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asBoxed()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Ljava/lang/Byte;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Ljava/lang/Short;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Ljava/lang/Character;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Ljava/lang/Integer;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Ljava/lang/Long;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Ljava/lang/Float;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-class v0, Ljava/lang/Double;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_7
    return-object p0
.end method

.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    return-object p0
.end method

.method public asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForErasure;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForErasure;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public asUnboxed()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_1
    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_2
    const-class v0, Ljava/lang/Character;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_3
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_4
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_5
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_6
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    :cond_7
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/type/TypeDefinition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getActualModifiers(Z)I
    .locals 3

    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v0

    invoke-interface {p0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    const-class v2, Ljava/lang/Deprecated;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v0, v1

    if-eqz p1, :cond_2

    const/16 v2, 0x20

    :cond_2
    or-int p1, v0, v2

    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_3

    and-int/lit8 p1, p1, -0xb

    return p1

    :cond_3
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_4

    and-int/lit8 p1, p1, -0xd

    or-int/lit8 p1, p1, 0x1

    return p1

    :cond_4
    and-int/lit8 p1, p1, -0x9

    return p1
.end method

.method public getActualName()Ljava/lang/String;
    .locals 4
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Assuming component type for array type."
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v2, p0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lnet/bytebuddy/description/NamedElement;->getActualName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v0, v1, :cond_1

    const-string v2, "[]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnclosingSource()Lnet/bytebuddy/description/TypeVariableSource;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/TypeVariableSource;->UNDEFINED:Lnet/bytebuddy/description/TypeVariableSource;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 8
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    :try_start_0
    new-instance v0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;-><init>()V

    invoke-interface {p0}, Lnet/bytebuddy/description/TypeVariableSource;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitFormalTypeParameter(Ljava/lang/String;)V

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    new-instance v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v7

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v7

    :goto_2
    invoke-direct {v6, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :cond_3
    new-instance v5, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    if-nez v4, :cond_5

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v1, 0x1

    :goto_4
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    new-instance v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    if-nez v1, :cond_7

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    :goto_6
    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    sget-object v0, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->NON_GENERIC_SIGNATURE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    return-object v0

    :catch_0
    sget-object v0, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->NON_GENERIC_SIGNATURE:Ljava/lang/String;

    return-object v0
.end method

.method public getInheritedAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 5

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInheritedAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/annotation/AnnotationList;->inherited(Ljava/util/Set;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public getInnerClassCount()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInnerClassCount()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongSimpleName()Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getLongSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    iget v0, p0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    iget v0, p0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->hashCode:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->hashCode:I

    :goto_1
    return v0
.end method

.method public isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Assuming component type for array type."
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/ByteCodeElement;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isPublic()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isAnnotationReturnType()Z
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Assuming component type for array type."
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    const-class v0, Ljava/lang/Enum;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-class v0, Ljava/lang/annotation/Annotation;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Ljava/lang/annotation/Annotation;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-class v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnnotationReturnType()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAnnotationValue()Z
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Assuming component type for array type."
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnnotationValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAnnotationValue(Ljava/lang/Object;)Z
    .locals 6

    const-class v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v0, :cond_15

    :cond_0
    instance-of v0, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_1
    instance-of v0, p1, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_2
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_15

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_15

    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_15

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_15

    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_15

    :cond_7
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_15

    :cond_8
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_15

    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_a

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_15

    :cond_a
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_b

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_15

    :cond_b
    const-class v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, p1, [Ljava/lang/String;

    if-nez v0, :cond_15

    :cond_c
    const-class v0, [Z

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_d

    instance-of v0, p1, [Z

    if-nez v0, :cond_15

    :cond_d
    const-class v0, [B

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    instance-of v0, p1, [B

    if-nez v0, :cond_15

    :cond_e
    const-class v0, [S

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_f

    instance-of v0, p1, [S

    if-nez v0, :cond_15

    :cond_f
    const-class v0, [C

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_10

    instance-of v0, p1, [C

    if-nez v0, :cond_15

    :cond_10
    const-class v0, [I

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_11

    instance-of v0, p1, [I

    if-nez v0, :cond_15

    :cond_11
    const-class v0, [J

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_12

    instance-of v0, p1, [J

    if-nez v0, :cond_15

    :cond_12
    const-class v0, [F

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_13

    instance-of v0, p1, [F

    if-nez v0, :cond_15

    :cond_13
    const-class v0, [D

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_14

    instance-of v0, p1, [D

    if-nez v0, :cond_15

    :cond_14
    const-class v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, p1, [Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v0, :cond_16

    :cond_15
    return v1

    :cond_16
    const-class v0, [Ljava/lang/annotation/Annotation;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    instance-of v0, p1, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    if-eqz v0, :cond_19

    check-cast p1, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    check-cast p1, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_18

    aget-object v4, p1, v3

    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_18
    return v1

    :cond_19
    const-class v0, [Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    instance-of v0, p1, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v0, :cond_1c

    check-cast p1, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    check-cast p1, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    array-length v0, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1b

    aget-object v4, p1, v3

    invoke-interface {v4}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1b
    return v1

    :cond_1c
    return v2
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignable(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isAssignableTo(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 0

    invoke-static {p1, p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignable(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isCompileTimeConstant()Z
    .locals 1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isGenerified()Z
    .locals 3

    invoke-interface {p0}, Lnet/bytebuddy/description/TypeVariableSource;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isStatic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/bytebuddy/description/TypeVariableSource;->isGenerified()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lnet/bytebuddy/description/TypeVariableSource;->isGenerified()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :catchall_0
    return v0
.end method

.method public isInHierarchyWith(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isInHierarchyWith(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isInferrable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInnerClass()Z
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isNestedClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isMemberType()Z
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isLocalType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNestHost()Z
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNestMateOf(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isNestedClass()Z
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPackageType()Z
    .locals 2

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package-info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimitiveWrapper()Z
    .locals 1

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Character;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getPackage()Lnet/bytebuddy/description/type/PackageDescription;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getPackage()Lnet/bytebuddy/description/type/PackageDescription;

    move-result-object p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isSealed()Z
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getPermittedSubtypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Assuming component type for array type."
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/ByteCodeElement;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isPublic()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isProtected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
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

.method public represents(Ljava/lang/reflect/Type;)Z
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Fits equality contract for type definitions."
        value = {
            "EC_UNRELATED_CLASS_AND_INTERFACE"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "interface"

    goto :goto_0

    :cond_1
    const-string v2, "class"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
