.class public final enum Lnet/bytebuddy/description/type/TypeDefinition$Sort;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDefinition$Sort$AnnotatedType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/type/TypeDefinition$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field private static final ACCESS_CONTROLLER:Z

.field private static final ANNOTATED_TYPE:Lnet/bytebuddy/description/type/TypeDefinition$Sort$AnnotatedType;

.field public static final enum GENERIC_ARRAY:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum PARAMETERIZED:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum VARIABLE:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum VARIABLE_SYMBOLIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

.field public static final enum WILDCARD:Lnet/bytebuddy/description/type/TypeDefinition$Sort;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.security.AccessController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v2, "net.bytebuddy.securitymanager"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput-boolean v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->ACCESS_CONTROLLER:Z

    goto :goto_0

    :catch_1
    sput-boolean v1, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->ACCESS_CONTROLLER:Z

    :goto_0
    new-instance v2, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-string v3, "NON_GENERIC"

    invoke-direct {v2, v3, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    new-instance v3, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-string v4, "GENERIC_ARRAY"

    invoke-direct {v3, v4, v0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->GENERIC_ARRAY:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    new-instance v4, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-string v5, "PARAMETERIZED"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->PARAMETERIZED:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    new-instance v5, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-string v7, "WILDCARD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->WILDCARD:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    new-instance v7, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-string v9, "VARIABLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    new-instance v9, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-string v11, "VARIABLE_SYMBOLIC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE_SYMBOLIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const/4 v11, 0x6

    new-array v11, v11, [Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    aput-object v2, v11, v1

    aput-object v3, v11, v0

    aput-object v4, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->$VALUES:[Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const-class v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort$AnnotatedType;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort$AnnotatedType;

    sput-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->ANNOTATED_TYPE:Lnet/bytebuddy/description/type/TypeDefinition$Sort$AnnotatedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    invoke-static {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    return-object p0
.end method

.method public static describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;-><init>(Ljava/lang/reflect/GenericArrayType;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType;

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType;-><init>(Ljava/lang/reflect/ParameterizedType;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;-><init>(Ljava/lang/reflect/TypeVariable;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfWildcardType$ForLoadedType;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfWildcardType$ForLoadedType;-><init>(Ljava/lang/reflect/WildcardType;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static describeAnnotated(Ljava/lang/reflect/AnnotatedElement;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->ANNOTATED_TYPE:Lnet/bytebuddy/description/type/TypeDefinition$Sort$AnnotatedType;

    invoke-interface {v0, p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort$AnnotatedType;->isInstance(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort$AnnotatedType;->getType(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Simple;

    invoke-direct {v1, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Simple;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an instance of AnnotatedType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDefinition$Sort;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/type/TypeDefinition$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->$VALUES:[Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/type/TypeDefinition$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    return-object v0
.end method


# virtual methods
.method public isGenericArray()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->GENERIC_ARRAY:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNonGeneric()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isParameterized()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->PARAMETERIZED:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-eq p0, v0, :cond_1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE_SYMBOLIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

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

.method public isWildcard()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->WILDCARD:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
