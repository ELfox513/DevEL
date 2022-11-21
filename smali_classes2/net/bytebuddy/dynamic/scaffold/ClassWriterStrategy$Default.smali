.class public abstract enum Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;

.field public static final enum CONSTANT_POOL_DISCARDING:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;

.field public static final enum CONSTANT_POOL_RETAINING:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default$1;

    const-string v1, "CONSTANT_POOL_RETAINING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;->CONSTANT_POOL_RETAINING:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;

    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default$2;

    const-string v3, "CONSTANT_POOL_DISCARDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;->CONSTANT_POOL_DISCARDING:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;

    return-object v0
.end method


# virtual methods
.method public resolve(ILnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/jar/asm/ClassWriter;
    .locals 1

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$FrameComputingClassWriter;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$FrameComputingClassWriter;-><init>(ILnet/bytebuddy/pool/TypePool;)V

    return-object v0
.end method
