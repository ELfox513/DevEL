.class public Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "Field is only used as a cache store and is implicitly recomputed"
    value = {
        "SE_TRANSIENT_FIELD_NOT_RESTORED"
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field private static final DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

.field private static final TYPE_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient synthetic classFileVersion:Lnet/bytebuddy/ClassFileVersion;

.field private transient synthetic declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

.field private transient synthetic declaredFields:Lnet/bytebuddy/description/field/FieldList;

.field private transient synthetic declaredMethods:Lnet/bytebuddy/description/method/MethodList;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const-class v0, Ljava/lang/Double;

    const-class v1, Ljava/lang/Float;

    const-class v2, Ljava/lang/Long;

    const-class v3, Ljava/lang/Integer;

    const-class v4, Ljava/lang/Character;

    const-class v5, Ljava/lang/Short;

    const-class v6, Ljava/lang/Byte;

    const-class v7, Ljava/lang/Boolean;

    const-class v8, Ljava/lang/String;

    const-class v9, Ljava/lang/Object;

    const-class v10, Lnet/bytebuddy/dynamic/TargetType;

    const/4 v11, 0x0

    :try_start_0
    const-string v12, "java.security.AccessController"

    const/4 v13, 0x0

    invoke-static {v12, v11, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v12, "net.bytebuddy.securitymanager"

    const-string v13, "true"

    invoke-static {v12, v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v11, 0x1

    :catch_1
    sput-boolean v11, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->ACCESS_CONTROLLER:Z

    :goto_0
    const-class v11, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    invoke-static {v11}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v11

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    sput-object v11, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    sput-object v11, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->TYPE_CACHE:Ljava/util/Map;

    new-instance v12, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v12, v10}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v10, v9}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v9, v8}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v8, v7}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v7, v6}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v6, v5}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v5, v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v4, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v3, v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v2, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic d()Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    return-object v0
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

    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/description/type/TypeDescription;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->TYPE_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 4
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/NamedElement;->NO_NAME:Ljava/lang/String;

    return-object v0

    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;
    .locals 2
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "classFileVersion"
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->of(Ljava/lang/Class;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    :goto_1
    return-object v1
.end method

.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "declaredAnnotations"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    :goto_1
    return-object v0
.end method

.method public getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "declaredFields"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredFields:Lnet/bytebuddy/description/field/FieldList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;

    invoke-static {}, Lnet/bytebuddy/utility/GraalImageCode;->getCurrent()Lnet/bytebuddy/utility/GraalImageCode;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/utility/FieldComparator;->INSTANCE:Lnet/bytebuddy/utility/FieldComparator;

    invoke-virtual {v1, v2, v3}, Lnet/bytebuddy/utility/GraalImageCode;->sorted([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;-><init>([Ljava/lang/reflect/Field;)V

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredFields:Lnet/bytebuddy/description/field/FieldList;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredFields:Lnet/bytebuddy/description/field/FieldList;

    :goto_1
    return-object v0
.end method

.method public getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "declaredMethods"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredMethods:Lnet/bytebuddy/description/method/MethodList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>(Ljava/lang/Class;)V

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredMethods:Lnet/bytebuddy/description/method/MethodList;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredMethods:Lnet/bytebuddy/description/method/MethodList;

    :goto_1
    return-object v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 2
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v0, :cond_0

    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v1

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0

    :cond_1
    sget-object v0, Lnet/bytebuddy/description/method/MethodDescription;->UNDEFINED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->ARRAY_INTERFACES:Lnet/bytebuddy/description/type/TypeList$Generic;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->ARRAY_INTERFACES:Lnet/bytebuddy/description/type/TypeList$Generic;

    goto :goto_1

    :cond_2
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes;-><init>(Ljava/lang/Class;)V

    :goto_1
    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getNestHost(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNestMembers()Lnet/bytebuddy/description/type/TypeList;
    .locals 4

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getNestMembers(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    array-length v2, v0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    aput-object v3, v0, v2

    :cond_0
    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    return-object v1
.end method

.method public getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .locals 4
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    new-instance v0, Lnet/bytebuddy/description/type/PackageDescription$Simple;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/PackageDescription$Simple;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lnet/bytebuddy/description/type/PackageDescription$Simple;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lnet/bytebuddy/description/type/PackageDescription$Simple;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;-><init>(Ljava/lang/Package;)V

    return-object v1

    :cond_3
    :goto_1
    sget-object v0, Lnet/bytebuddy/description/type/PackageDescription;->UNDEFINED:Lnet/bytebuddy/description/type/PackageDescription;

    return-object v0
.end method

.method public getPermittedSubtypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getPermittedSubclasses(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Empty;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getRecordComponents(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/type/RecordComponentList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/RecordComponentList$Empty;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/lang/Class;)Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v0

    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes$OfTypeVariables;->of(Ljava/lang/reflect/GenericDeclaration;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotation()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    return v0
.end method

.method public isAnonymousType()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Ljava/lang/Class;)Z

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

.method public isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 2

    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v1, v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAssignableTo(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

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

.method public isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 2

    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v0, v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
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

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isInHierarchyWith(Ljava/lang/Class;)Z

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
    .locals 3

    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v1, v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    iget-object v0, v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isInHierarchyWith(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLocalType()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    return v0
.end method

.method public isMemberType()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    return v0
.end method

.method public isNestHost()Z
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getNestHost(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

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

.method public isNestMateOf(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->isNestmateOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z

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

.method public isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 3

    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    move-object v2, p1

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v2, v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->isNestmateOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPrimitive()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isRecord()Z
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->isRecord(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->isSealed(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public represents(Ljava/lang/reflect/Type;)Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

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
