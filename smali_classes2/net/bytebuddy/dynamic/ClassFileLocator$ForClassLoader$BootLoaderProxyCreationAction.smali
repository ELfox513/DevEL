.class public final enum Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BootLoaderProxyCreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/ClassLoader;
    .locals 3

    new-instance v0, Ljava/net/URLClassLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/net/URL;

    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1, v2}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;->run()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
