.class public abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Delegator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedRecordComponent;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableParameterType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedMethodReturnType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedField;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedInterface;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedSuperClass;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedTypeVariable;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Simple;
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z


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

    sput-boolean v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :catch_1
    sput-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;->ACCESS_CONTROLLER:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
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

    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asList()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->resolve()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public ofComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0
.end method

.method public ofOuterClass()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0
.end method

.method public ofOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0
.end method

.method public ofTypeArgument(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeArgument;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeArgument;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;I)V

    return-object v0
.end method

.method public ofTypeVariableBoundType(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;I)V

    return-object v0
.end method

.method public ofWildcardLowerBoundType(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForWildcardLowerBoundType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForWildcardLowerBoundType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;I)V

    return-object v0
.end method

.method public ofWildcardUpperBoundType(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForWildcardUpperBoundType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForWildcardUpperBoundType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;I)V

    return-object v0
.end method
