.class public enum Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Enforcing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;",
        ">;",
        "Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

.field public static final enum ALL_TYPES_RESOLVED:Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

.field public static final enum CLASS_FILES_ONLY:Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

.field public static final enum MANIFEST_REQUIRED:Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

.field public static final enum NO_LIVE_INITIALIZERS:Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing$1;

    const-string v1, "ALL_TYPES_RESOLVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;->ALL_TYPES_RESOLVED:Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

    new-instance v1, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing$2;

    const-string v3, "NO_LIVE_INITIALIZERS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;->NO_LIVE_INITIALIZERS:Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

    new-instance v3, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing$3;

    const-string v5, "CLASS_FILES_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;->CLASS_FILES_ONLY:Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

    new-instance v5, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing$4;

    const-string v7, "MANIFEST_REQUIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;->MANIFEST_REQUIRED:Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;->$VALUES:[Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/build/Plugin$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;
    .locals 1

    const-class v0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;->$VALUES:[Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

    invoke-virtual {v0}, [Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onError(Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onError(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onError(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onLiveInitializer(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    return-void
.end method

.method public onManifest(Ljava/util/jar/Manifest;)V
    .locals 0
    .param p1    # Ljava/util/jar/Manifest;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResource(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnresolved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
