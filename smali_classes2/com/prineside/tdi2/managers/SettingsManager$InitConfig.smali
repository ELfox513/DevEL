.class public final enum Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUDIO_BUFFER_COUNT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final enum AUDIO_BUFFER_SIZE:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final enum AUDIO_SIM_SOURCES:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final enum GRAPHICS_AA_LEVELS:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final enum GRAPHICS_ALLOW_SOFTWARE:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final enum GRAPHICS_FPS_LIMIT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final enum GRAPHICS_FS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final enum GRAPHICS_FS_HEIGHT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final enum GRAPHICS_FS_WIDTH:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final enum GRAPHICS_PAUSE_ON_BACK:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final enum GRAPHICS_PAUSE_ON_MIN:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final enum GRAPHICS_SAFE_AREA:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final enum GRAPHICS_VSYNC:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

.field public static final values:[Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "GRAPHICS_VSYNC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_VSYNC:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "GRAPHICS_FPS_LIMIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FPS_LIMIT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "GRAPHICS_AA_LEVELS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_AA_LEVELS:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "GRAPHICS_FS_ENABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "GRAPHICS_FS_WIDTH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_WIDTH:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "GRAPHICS_FS_HEIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_HEIGHT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "GRAPHICS_PAUSE_ON_MIN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_PAUSE_ON_MIN:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "GRAPHICS_PAUSE_ON_BACK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_PAUSE_ON_BACK:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "GRAPHICS_ALLOW_SOFTWARE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_ALLOW_SOFTWARE:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "GRAPHICS_SAFE_AREA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_SAFE_AREA:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "AUDIO_BUFFER_SIZE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->AUDIO_BUFFER_SIZE:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "AUDIO_BUFFER_COUNT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->AUDIO_BUFFER_COUNT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const-string v1, "AUDIO_SIM_SOURCES"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->AUDIO_SIM_SOURCES:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-static {}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->c()[Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->a:[Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-static {}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->values()[Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->values:[Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

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

.method public static synthetic c()[Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_VSYNC:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FPS_LIMIT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_AA_LEVELS:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_WIDTH:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_HEIGHT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_PAUSE_ON_MIN:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_PAUSE_ON_BACK:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_ALLOW_SOFTWARE:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_SAFE_AREA:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->AUDIO_BUFFER_SIZE:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->AUDIO_BUFFER_COUNT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->AUDIO_SIM_SOURCES:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->a:[Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    return-object v0
.end method
