.class public Lnet/bytebuddy/utility/OpenedClassReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field public static final ASM_API:I

.field public static final EXPERIMENTAL:Z

.field public static final EXPERIMENTAL_PROPERTY:Ljava/lang/String; = "net.bytebuddy.experimental"


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

    sput-boolean v1, Lnet/bytebuddy/utility/OpenedClassReader;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    sput-boolean v1, Lnet/bytebuddy/utility/OpenedClassReader;->ACCESS_CONTROLLER:Z

    goto :goto_0

    :catch_1
    sput-boolean v0, Lnet/bytebuddy/utility/OpenedClassReader;->ACCESS_CONTROLLER:Z

    :goto_0
    :try_start_1
    new-instance v1, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;

    const-string v2, "net.bytebuddy.experimental"

    invoke-direct {v1, v2}, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lnet/bytebuddy/utility/OpenedClassReader;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    sput-boolean v0, Lnet/bytebuddy/utility/OpenedClassReader;->EXPERIMENTAL:Z

    const/high16 v0, 0x90000

    sput v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is a utility class and not supposed to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

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

    sget-boolean v0, Lnet/bytebuddy/utility/OpenedClassReader;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static of([B)Lnet/bytebuddy/jar/asm/ClassReader;
    .locals 5

    invoke-static {p0}, Lnet/bytebuddy/ClassFileVersion;->ofClassFile([B)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/ClassFileVersion;->latest()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isGreaterThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lnet/bytebuddy/utility/OpenedClassReader;->EXPERIMENTAL:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v2

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x6

    aput-byte v2, p0, v3

    invoke-virtual {v1}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, p0, v2

    new-instance v1, Lnet/bytebuddy/jar/asm/ClassReader;

    invoke-direct {v1, p0}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    invoke-virtual {v0}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v4

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    invoke-virtual {v0}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported by the current version of Byte Buddy which officially supports "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - update Byte Buddy or set "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "net.bytebuddy.experimental"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " as a VM property"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lnet/bytebuddy/jar/asm/ClassReader;

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    return-object v0
.end method
