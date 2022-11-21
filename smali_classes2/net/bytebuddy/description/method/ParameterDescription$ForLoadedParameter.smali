.class public abstract Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;
.super Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForLoadedParameter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmConstructor;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfConstructor;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/reflect/AccessibleObject;",
        ">",
        "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;"
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field private static final PARAMETER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;


# instance fields
.field public final executable:Ljava/lang/reflect/AccessibleObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final index:I

.field public final parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;


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

    sput-boolean v1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :catch_1
    sput-boolean v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->ACCESS_CONTROLLER:Z

    :goto_0
    const-class v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;

    sput-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->PARAMETER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/AccessibleObject;ILnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    iput p2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    iput-object p3, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

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

    sget-boolean v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->ACCESS_CONTROLLER:Z

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
.method public getIndex()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    return v0
.end method

.method public getModifiers()I
    .locals 3

    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->PARAMETER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;

    sget-object v1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->EXECUTABLE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;

    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;->getParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;->getModifiers(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->PARAMETER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;

    sget-object v1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->EXECUTABLE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;

    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;->getParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasModifiers()Z
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->isNamed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->getModifiers()I

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

.method public isNamed()Z
    .locals 3

    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->PARAMETER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;

    sget-object v1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->EXECUTABLE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;

    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;->getParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;->isNamePresent(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
