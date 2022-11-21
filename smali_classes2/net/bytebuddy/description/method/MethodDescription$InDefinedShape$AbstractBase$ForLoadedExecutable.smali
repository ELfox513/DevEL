.class public abstract Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;
.super Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForLoadedExecutable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/reflect/AnnotatedElement;",
        ">",
        "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;"
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field public static final EXECUTABLE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$Executable;


# instance fields
.field public final executable:Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


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

    sput-boolean v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :catch_1
    sput-boolean v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;->ACCESS_CONTROLLER:Z

    :goto_0
    const-class v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$Executable;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$Executable;

    sput-object v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;->EXECUTABLE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$Executable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;->executable:Ljava/lang/reflect/AnnotatedElement;

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

    sget-boolean v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;->ACCESS_CONTROLLER:Z

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
.method public bridge synthetic asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    .locals 1

    invoke-super {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;->asDefined()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;->EXECUTABLE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$Executable;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;->executable:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$Executable;->getAnnotatedReceiverType(Ljava/lang/Object;)Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describeAnnotated(Ljava/lang/reflect/AnnotatedElement;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    return-object v0
.end method
