.class public final enum Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;

.field public static final enum EXTENDED:Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;

.field public static final enum FAST:Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;


# instance fields
.field private final readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;

    sget-object v1, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->FAST:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    const-string v2, "FAST"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    sput-object v0, Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;->FAST:Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;

    new-instance v1, Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;

    sget-object v2, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->EXTENDED:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    const-string v4, "EXTENDED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    sput-object v1, Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;->EXTENDED:Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;->$VALUES:[Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;
    .locals 1

    const-class v0, Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;->$VALUES:[Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;

    return-object v0
.end method


# virtual methods
.method public typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;
    .locals 4

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    invoke-direct {v1}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;-><init>()V

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-static {}, Lnet/bytebuddy/pool/TypePool$ClassLoading;->ofPlatformLoader()Lnet/bytebuddy/pool/TypePool;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Lnet/bytebuddy/pool/TypePool;)V

    return-object v0
.end method
