.class public final enum Lcom/prineside/tdi2/Map$InvalidMapException$Reason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Map$InvalidMapException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/Map$InvalidMapException$Reason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MULTIPLE_BOSS_TILES:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

.field public static final enum MULTIPLE_CORES:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

.field public static final enum MULTIPLE_SOUND_TRACKS:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

.field public static final enum MULTIPLE_TARGETS:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

.field public static final enum NO_PATH_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

.field public static final enum PATH_ON_PLATFORM_NOT_ALLOWED:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

.field public static final enum SPAWN_NOT_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

.field public static final enum TARGET_NOT_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

.field public static final enum TOO_MANY_PORTALS:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

.field public static final synthetic a:[Lcom/prineside/tdi2/Map$InvalidMapException$Reason;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const-string v1, "MULTIPLE_TARGETS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->MULTIPLE_TARGETS:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    new-instance v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const-string v1, "MULTIPLE_SOUND_TRACKS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->MULTIPLE_SOUND_TRACKS:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    new-instance v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const-string v1, "SPAWN_NOT_FOUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->SPAWN_NOT_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    new-instance v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const-string v1, "TARGET_NOT_FOUND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->TARGET_NOT_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    new-instance v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const-string v1, "NO_PATH_FOUND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->NO_PATH_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    new-instance v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const-string v1, "PATH_ON_PLATFORM_NOT_ALLOWED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->PATH_ON_PLATFORM_NOT_ALLOWED:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    new-instance v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const-string v1, "TOO_MANY_PORTALS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->TOO_MANY_PORTALS:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    new-instance v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const-string v1, "MULTIPLE_CORES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->MULTIPLE_CORES:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    new-instance v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const-string v1, "MULTIPLE_BOSS_TILES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->MULTIPLE_BOSS_TILES:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    invoke-static {}, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->c()[Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->a:[Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[Lcom/prineside/tdi2/Map$InvalidMapException$Reason;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    sget-object v1, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->MULTIPLE_TARGETS:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->MULTIPLE_SOUND_TRACKS:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->SPAWN_NOT_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->TARGET_NOT_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->NO_PATH_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->PATH_ON_PLATFORM_NOT_ALLOWED:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->TOO_MANY_PORTALS:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->MULTIPLE_CORES:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->MULTIPLE_BOSS_TILES:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/Map$InvalidMapException$Reason;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/Map$InvalidMapException$Reason;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->a:[Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    return-object v0
.end method
