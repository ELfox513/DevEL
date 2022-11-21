.class public final enum Lnet/bytebuddy/utility/GraalImageCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/GraalImageCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/GraalImageCode;

.field private static final ACCESS_CONTROLLER:Z

.field public static final enum AGENT:Lnet/bytebuddy/utility/GraalImageCode;

.field public static final enum BUILD:Lnet/bytebuddy/utility/GraalImageCode;

.field public static final enum NONE:Lnet/bytebuddy/utility/GraalImageCode;

.field public static final enum RUNTIME:Lnet/bytebuddy/utility/GraalImageCode;

.field public static final enum UNKNOWN:Lnet/bytebuddy/utility/GraalImageCode;

.field private static current:Lnet/bytebuddy/utility/GraalImageCode;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# instance fields
.field private final defined:Z

.field private final nativeImageExecution:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

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

    sput-boolean v2, Lnet/bytebuddy/utility/GraalImageCode;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput-boolean v0, Lnet/bytebuddy/utility/GraalImageCode;->ACCESS_CONTROLLER:Z

    goto :goto_0

    :catch_1
    sput-boolean v1, Lnet/bytebuddy/utility/GraalImageCode;->ACCESS_CONTROLLER:Z

    :goto_0
    new-instance v2, Lnet/bytebuddy/utility/GraalImageCode;

    const-string v3, "AGENT"

    invoke-direct {v2, v3, v1, v0, v1}, Lnet/bytebuddy/utility/GraalImageCode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v2, Lnet/bytebuddy/utility/GraalImageCode;->AGENT:Lnet/bytebuddy/utility/GraalImageCode;

    new-instance v3, Lnet/bytebuddy/utility/GraalImageCode;

    const-string v4, "BUILD"

    invoke-direct {v3, v4, v0, v0, v1}, Lnet/bytebuddy/utility/GraalImageCode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lnet/bytebuddy/utility/GraalImageCode;->BUILD:Lnet/bytebuddy/utility/GraalImageCode;

    new-instance v4, Lnet/bytebuddy/utility/GraalImageCode;

    const-string v5, "RUNTIME"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v0, v0}, Lnet/bytebuddy/utility/GraalImageCode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lnet/bytebuddy/utility/GraalImageCode;->RUNTIME:Lnet/bytebuddy/utility/GraalImageCode;

    new-instance v5, Lnet/bytebuddy/utility/GraalImageCode;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v1, v1}, Lnet/bytebuddy/utility/GraalImageCode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lnet/bytebuddy/utility/GraalImageCode;->UNKNOWN:Lnet/bytebuddy/utility/GraalImageCode;

    new-instance v7, Lnet/bytebuddy/utility/GraalImageCode;

    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v1, v1}, Lnet/bytebuddy/utility/GraalImageCode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v7, Lnet/bytebuddy/utility/GraalImageCode;->NONE:Lnet/bytebuddy/utility/GraalImageCode;

    const/4 v9, 0x5

    new-array v9, v9, [Lnet/bytebuddy/utility/GraalImageCode;

    aput-object v2, v9, v1

    aput-object v3, v9, v0

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lnet/bytebuddy/utility/GraalImageCode;->$VALUES:[Lnet/bytebuddy/utility/GraalImageCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnet/bytebuddy/utility/GraalImageCode;->defined:Z

    iput-boolean p4, p0, Lnet/bytebuddy/utility/GraalImageCode;->nativeImageExecution:Z

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

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-boolean v0, Lnet/bytebuddy/utility/GraalImageCode;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrent()Lnet/bytebuddy/utility/GraalImageCode;
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "This behaviour is intended to avoid early binding in native images."
        value = {
            "LI_LAZY_INIT_STATIC",
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/utility/GraalImageCode;->current:Lnet/bytebuddy/utility/GraalImageCode;

    if-nez v0, :cond_5

    new-instance v0, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;

    const-string v1, "org.graalvm.nativeimage.imagecode"

    invoke-direct {v0, v1}, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/GraalImageCode;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;

    const-string v1, "java.vm.vendor"

    invoke-direct {v0, v1}, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/GraalImageCode;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "graalvm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;->INSTANCE:Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;

    invoke-static {v0}, Lnet/bytebuddy/utility/GraalImageCode;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/GraalImageCode;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/utility/GraalImageCode;->NONE:Lnet/bytebuddy/utility/GraalImageCode;

    goto :goto_0

    :cond_1
    const-string v1, "agent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lnet/bytebuddy/utility/GraalImageCode;->AGENT:Lnet/bytebuddy/utility/GraalImageCode;

    goto :goto_0

    :cond_2
    const-string v1, "runtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lnet/bytebuddy/utility/GraalImageCode;->RUNTIME:Lnet/bytebuddy/utility/GraalImageCode;

    goto :goto_0

    :cond_3
    const-string v1, "buildtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lnet/bytebuddy/utility/GraalImageCode;->BUILD:Lnet/bytebuddy/utility/GraalImageCode;

    goto :goto_0

    :cond_4
    sget-object v0, Lnet/bytebuddy/utility/GraalImageCode;->UNKNOWN:Lnet/bytebuddy/utility/GraalImageCode;

    :goto_0
    sput-object v0, Lnet/bytebuddy/utility/GraalImageCode;->current:Lnet/bytebuddy/utility/GraalImageCode;

    :cond_5
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/GraalImageCode;
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/GraalImageCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/GraalImageCode;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/GraalImageCode;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/GraalImageCode;->$VALUES:[Lnet/bytebuddy/utility/GraalImageCode;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/GraalImageCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/GraalImageCode;

    return-object v0
.end method


# virtual methods
.method public isDefined()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/utility/GraalImageCode;->defined:Z

    return v0
.end method

.method public isNativeImageExecution()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/utility/GraalImageCode;->nativeImageExecution:Z

    return v0
.end method

.method public sorted([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)[TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lnet/bytebuddy/utility/GraalImageCode;->defined:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    return-object p1
.end method
