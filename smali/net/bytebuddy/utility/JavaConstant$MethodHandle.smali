.class public Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodHandle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles;,
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodType;,
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;,
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field public static final METHOD_HANDLES:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles;

.field public static final METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles$Lookup;

.field public static final METHOD_HANDLE_INFO:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;

.field public static final METHOD_TYPE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodType;


# instance fields
.field private final handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

.field private final name:Ljava/lang/String;

.field private final ownerType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public static constructor <clinit>()V
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

    sput-boolean v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :catch_1
    sput-boolean v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ACCESS_CONTROLLER:Z

    :goto_0
    const-class v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->METHOD_HANDLE_INFO:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;

    const-class v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodType;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodType;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodType;

    const-class v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->METHOD_HANDLES:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles;

    const-class v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles$Lookup;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles$Lookup;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles$Lookup;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    iput-object p2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->name:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p5, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

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

    sget-boolean v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static lookupType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles$Lookup;

    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles$Lookup;->lookupClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$MethodHandle;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Method;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 7

    new-instance v6, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v1

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v6
.end method

.method public static ofGetter(Ljava/lang/reflect/Field;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofGetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static ofGetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 7

    new-instance v6, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->ofGetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v1

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v6
.end method

.method public static ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->METHOD_HANDLES:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles;

    invoke-interface {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles;->publicLookup()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static ofLoaded(Ljava/lang/Object;Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 8

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V7:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtMost(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->METHOD_HANDLE_INFO:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;

    invoke-interface {p1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;->revealDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles$Lookup;

    invoke-interface {v0, p1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandles$Lookup;->revealDirect(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    sget-object p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->METHOD_HANDLE_INFO:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;

    invoke-interface {p1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;->getMethodType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v7, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-interface {p1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;->getReferenceKind(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->of(I)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v2

    invoke-interface {p1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;->getDeclaringClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {p1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodType;

    invoke-interface {p0, v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodType;->returnType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    new-instance v6, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-interface {p0, v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodType;->parameterArray(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v6, p0}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v7

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected method handle lookup object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected method handle object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ofSetter(Ljava/lang/reflect/Field;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofSetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static ofSetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 7

    new-instance v6, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->ofSetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v1

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v6
.end method

.method public static ofSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$MethodHandle;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofSpecial(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static ofSpecial(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    .locals 7

    invoke-interface {p0, p1}, Lnet/bytebuddy/description/method/MethodDescription;->isSpecializableFor(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->ofSpecial(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v2

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v6

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot specialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/utility/JavaConstant$Visitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/utility/JavaConstant$Visitor<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Lnet/bytebuddy/utility/JavaConstant$Visitor;->onMethodHandle(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
    instance-of v1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->name:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 3

    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$1;->a:[I

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandleType()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getParameterTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toDescription()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$Simple;->METHOD_HANDLE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodHandleDesc;

    sget-object v1, Lnet/bytebuddy/utility/JavaConstant$Simple;->DIRECT_METHOD_HANDLE_DESC_KIND:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc$ForKind;

    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc$ForKind;->valueOf(IZ)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/utility/JavaConstant$Simple;->CLASS_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

    iget-object v3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodHandleDesc;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->isField()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->handleType:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    sget-object v2, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_INTERFACE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    if-eq v1, v2, :cond_0

    const-string v1, "@interface"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ownerType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->parameterTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
