.class public Lnet/bytebuddy/utility/JavaModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/NamedElement$WithOptionalName;
.implements Lnet/bytebuddy/description/annotation/AnnotationSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaModule$Module;,
        Lnet/bytebuddy/utility/JavaModule$Resolver;
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field public static final MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

.field public static final RESOLVER:Lnet/bytebuddy/utility/JavaModule$Resolver;

.field public static final UNSUPPORTED:Lnet/bytebuddy/utility/JavaModule;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# instance fields
.field private final module:Ljava/lang/reflect/AnnotatedElement;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.security.AccessController"

    invoke-static {v2, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v2, "net.bytebuddy.securitymanager"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lnet/bytebuddy/utility/JavaModule;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    :catch_1
    sput-boolean v1, Lnet/bytebuddy/utility/JavaModule;->ACCESS_CONTROLLER:Z

    :goto_0
    sput-object v0, Lnet/bytebuddy/utility/JavaModule;->UNSUPPORTED:Lnet/bytebuddy/utility/JavaModule;

    const-class v0, Lnet/bytebuddy/utility/JavaModule$Resolver;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaModule;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaModule$Resolver;

    sput-object v0, Lnet/bytebuddy/utility/JavaModule;->RESOLVER:Lnet/bytebuddy/utility/JavaModule$Resolver;

    const-class v0, Lnet/bytebuddy/utility/JavaModule$Module;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaModule;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaModule$Module;

    sput-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

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

    sget-boolean v0, Lnet/bytebuddy/utility/JavaModule;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isSupported()Z
    .locals 2

    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    return v0
.end method

.method public static of(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaModule;
    .locals 3

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaModule$Module;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/utility/JavaModule;

    check-cast p0, Ljava/lang/reflect/AnnotatedElement;

    invoke-direct {v0, p0}, Lnet/bytebuddy/utility/JavaModule;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Java module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaModule;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->RESOLVER:Lnet/bytebuddy/utility/JavaModule$Resolver;

    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaModule$Resolver;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lnet/bytebuddy/utility/JavaModule;->UNSUPPORTED:Lnet/bytebuddy/utility/JavaModule;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/utility/JavaModule;

    check-cast p0, Ljava/lang/reflect/AnnotatedElement;

    invoke-direct {v0, p0}, Lnet/bytebuddy/utility/JavaModule;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public canRead(Lnet/bytebuddy/utility/JavaModule;)Z
    .locals 2

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/utility/JavaModule$Module;->canRead(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lnet/bytebuddy/utility/JavaModule;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lnet/bytebuddy/utility/JavaModule;

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    iget-object p1, p1, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActualName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/JavaModule$Module;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/JavaModule$Module;->getClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/utility/JavaModule$Module;->getResourceAsStream(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isExported(Lnet/bytebuddy/description/type/PackageDescription;Lnet/bytebuddy/utility/JavaModule;)Z
    .locals 2
    .param p1    # Lnet/bytebuddy/description/type/PackageDescription;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {p1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2}, Lnet/bytebuddy/utility/JavaModule$Module;->isExported(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

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

.method public isNamed()Z
    .locals 2

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/JavaModule$Module;->isNamed(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOpened(Lnet/bytebuddy/description/type/PackageDescription;Lnet/bytebuddy/utility/JavaModule;)Z
    .locals 2
    .param p1    # Lnet/bytebuddy/description/type/PackageDescription;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {p1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2}, Lnet/bytebuddy/utility/JavaModule$Module;->isOpen(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

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

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    return-object v0
.end method
