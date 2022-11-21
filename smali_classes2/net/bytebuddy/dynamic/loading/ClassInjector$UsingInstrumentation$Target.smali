.class public abstract enum Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

.field public static final enum BOOTSTRAP:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

.field public static final enum SYSTEM:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target$1;

    const-string v1, "BOOTSTRAP"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target$1;-><init>(Ljava/lang/String;ILjava/lang/ClassLoader;)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->BOOTSTRAP:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target$2;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "SYSTEM"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target$2;-><init>(Ljava/lang/String;ILjava/lang/ClassLoader;)V

    sput-object v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->SYSTEM:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    sput-object v3, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/ClassLoader;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassInjector$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;-><init>(Ljava/lang/String;ILjava/lang/ClassLoader;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    return-object v0
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public abstract inject(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V
.end method
