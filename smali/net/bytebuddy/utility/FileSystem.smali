.class public abstract Lnet/bytebuddy/utility/FileSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;,
        Lnet/bytebuddy/utility/FileSystem$ForLegacyVm;
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field private static synthetic INSTANCE:Lnet/bytebuddy/utility/FileSystem;


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

    sput-boolean v1, Lnet/bytebuddy/utility/FileSystem;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :catch_1
    sput-boolean v0, Lnet/bytebuddy/utility/FileSystem;->ACCESS_CONTROLLER:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lnet/bytebuddy/utility/FileSystem;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    sget-boolean v0, Lnet/bytebuddy/utility/FileSystem;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lnet/bytebuddy/utility/FileSystem;
    .locals 3
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "INSTANCE"
    .end annotation

    sget-object v0, Lnet/bytebuddy/utility/FileSystem;->INSTANCE:Lnet/bytebuddy/utility/FileSystem;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "java.nio.file.Files"

    const/4 v1, 0x0

    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    new-instance v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;

    invoke-direct {v0}, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lnet/bytebuddy/utility/FileSystem$ForLegacyVm;

    invoke-direct {v0}, Lnet/bytebuddy/utility/FileSystem$ForLegacyVm;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lnet/bytebuddy/utility/FileSystem;->INSTANCE:Lnet/bytebuddy/utility/FileSystem;

    goto :goto_1

    :cond_1
    sput-object v0, Lnet/bytebuddy/utility/FileSystem;->INSTANCE:Lnet/bytebuddy/utility/FileSystem;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public abstract copy(Ljava/io/File;Ljava/io/File;)V
.end method

.method public abstract move(Ljava/io/File;Ljava/io/File;)V
.end method
