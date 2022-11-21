.class public Lnet/bytebuddy/ClassFileVersion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/ClassFileVersion$VersionLocator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/bytebuddy/ClassFileVersion;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field public static final BASE_VERSION:I = 0x2c

.field public static final JAVA_V1:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V10:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V11:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V12:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V13:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V14:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V15:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V16:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V17:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V18:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V19:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V2:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V3:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V4:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V7:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

.field private static final VERSION_LOCATOR:Lnet/bytebuddy/ClassFileVersion$VersionLocator;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final versionNumber:I


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

    sput-boolean v1, Lnet/bytebuddy/ClassFileVersion;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :catch_1
    sput-boolean v0, Lnet/bytebuddy/ClassFileVersion;->ACCESS_CONTROLLER:Z

    :goto_0
    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const v1, 0x3002d

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V1:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V2:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V3:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V4:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x31

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V7:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x34

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x35

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x36

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V10:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x37

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V11:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V12:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V13:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V14:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V15:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V16:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V17:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x3e

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V18:Lnet/bytebuddy/ClassFileVersion;

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x3f

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V19:Lnet/bytebuddy/ClassFileVersion;

    sget-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;->INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator;

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->VERSION_LOCATOR:Lnet/bytebuddy/ClassFileVersion$VersionLocator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

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

    sget-boolean v0, Lnet/bytebuddy/ClassFileVersion;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static latest()Lnet/bytebuddy/ClassFileVersion;
    .locals 1

    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V19:Lnet/bytebuddy/ClassFileVersion;

    return-object v0
.end method

.method public static of(Ljava/lang/Class;)Lnet/bytebuddy/ClassFileVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/ClassFileVersion;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/ClassFileVersion;->of(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/ClassFileVersion;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/ClassFileVersion;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/bytebuddy/ClassFileVersion;->of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/ClassFileVersion;
    .locals 0

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/ClassFileVersion;->ofClassFile([B)Lnet/bytebuddy/ClassFileVersion;

    move-result-object p0

    return-object p0
.end method

.method public static ofClassFile([B)Lnet/bytebuddy/ClassFileVersion;
    .locals 3

    array-length v0, p0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    invoke-static {p0}, Lnet/bytebuddy/ClassFileVersion;->ofMinorMajor(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied byte array is too short to be a class file with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " byte"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofJavaVersion(I)Lnet/bytebuddy/ClassFileVersion;
    .locals 3

    packed-switch p0, :pswitch_data_0

    sget-boolean v0, Lnet/bytebuddy/utility/OpenedClassReader;->EXPERIMENTAL:Z

    if-eqz v0, :cond_0

    if-lez p0, :cond_0

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    add-int/lit8 p0, p0, 0x2c

    invoke-direct {v0, p0}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    return-object v0

    :pswitch_0
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V19:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V18:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V17:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V16:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V15:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V14:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_6
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V13:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_7
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V12:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_8
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V11:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_9
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V10:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_a
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_b
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_c
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V7:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_d
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_e
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_f
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V4:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_10
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V3:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_11
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V2:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :pswitch_12
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V1:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Java version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ofJavaVersionString(Ljava/lang/String;)Lnet/bytebuddy/ClassFileVersion;
    .locals 3

    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V1:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_0
    const-string v0, "1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V2:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_1
    const-string v0, "1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V3:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_2
    const-string v0, "1.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V4:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_3
    const-string v0, "1.5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_f

    :cond_4
    const-string v0, "1.6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_e

    :cond_5
    const-string v0, "1.7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_d

    :cond_6
    const-string v0, "1.8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_c

    :cond_7
    const-string v0, "1.9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_b

    :cond_8
    const-string v0, "1.10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_a

    :cond_9
    const-string v0, "1.11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_9

    :cond_a
    const-string v0, "1.12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_8

    :cond_b
    const-string v0, "1.13"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "13"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_7

    :cond_c
    const-string v0, "1.14"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "14"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_6

    :cond_d
    const-string v0, "1.15"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "15"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_5

    :cond_e
    const-string v0, "1.16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_4

    :cond_f
    const-string v0, "1.17"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "17"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3

    :cond_10
    const-string v0, "1.18"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "18"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2

    :cond_11
    const-string v0, "1.19"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "19"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1

    :cond_12
    sget-boolean v0, Lnet/bytebuddy/utility/OpenedClassReader;->EXPERIMENTAL:Z

    if-eqz v0, :cond_14

    :try_start_0
    const-string v0, "1."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_13
    move-object v0, p0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_14

    new-instance v1, Lnet/bytebuddy/ClassFileVersion;

    add-int/lit8 v0, v0, 0x2c

    invoke-direct {v1, v0}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Java version string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_1
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V19:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_16
    :goto_2
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V18:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_17
    :goto_3
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V17:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_18
    :goto_4
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V16:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_19
    :goto_5
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V15:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_1a
    :goto_6
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V14:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_1b
    :goto_7
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V13:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_1c
    :goto_8
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V12:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_1d
    :goto_9
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V11:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_1e
    :goto_a
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V10:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_1f
    :goto_b
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_20
    :goto_c
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_21
    :goto_d
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V7:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_22
    :goto_e
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    :cond_23
    :goto_f
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    return-object p0
.end method

.method public static ofMinorMajor(I)Lnet/bytebuddy/ClassFileVersion;
    .locals 3

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    invoke-direct {v0, p0}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    invoke-virtual {v0}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v1

    const/16 v2, 0x2c

    if-le v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not valid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofThisVm()Lnet/bytebuddy/ClassFileVersion;
    .locals 1

    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->VERSION_LOCATOR:Lnet/bytebuddy/ClassFileVersion$VersionLocator;

    invoke-interface {v0}, Lnet/bytebuddy/ClassFileVersion$VersionLocator;->resolve()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    return-object v0
.end method

.method public static ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Exception should not be rethrown but trigger a fallback."
        value = {
            "REC_CATCH_EXCEPTION"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm()Lnet/bytebuddy/ClassFileVersion;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method


# virtual methods
.method public asPreviewVersion()Lnet/bytebuddy/ClassFileVersion;
    .locals 3

    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    iget v1, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    const/high16 v2, -0x10000

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ClassFileVersion;->compareTo(Lnet/bytebuddy/ClassFileVersion;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/bytebuddy/ClassFileVersion;)I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v0

    invoke-virtual {p1}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion;->getMinorVersion()S

    move-result v0

    invoke-virtual {p1}, Lnet/bytebuddy/ClassFileVersion;->getMinorVersion()S

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v0

    invoke-virtual {p1}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    return p1
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
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    check-cast p1, Lnet/bytebuddy/ClassFileVersion;

    iget p1, p1, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getJavaVersion()I
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v0

    add-int/lit8 v0, v0, -0x2c

    return v0
.end method

.method public getMajorVersion()S
    .locals 1

    iget v0, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public getMinorMajorVersion()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    return v0
.end method

.method public getMinorVersion()S
    .locals 1

    iget v0, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    shr-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ClassFileVersion;->compareTo(Lnet/bytebuddy/ClassFileVersion;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAtMost(Lnet/bytebuddy/ClassFileVersion;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ClassFileVersion;->compareTo(Lnet/bytebuddy/ClassFileVersion;)I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGreaterThan(Lnet/bytebuddy/ClassFileVersion;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ClassFileVersion;->compareTo(Lnet/bytebuddy/ClassFileVersion;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ClassFileVersion;->compareTo(Lnet/bytebuddy/ClassFileVersion;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPreviewVersion()Z
    .locals 2

    iget v0, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion;->getJavaVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion;->getMinorMajorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
