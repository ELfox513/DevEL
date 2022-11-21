.class public final enum Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DynamicSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

.field public static final enum CN_STORE_LINK:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

.field public static final enum IAP_ACCELERATOR_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

.field public static final enum IAP_DOUBLE_GAIN_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

.field public static final enum IAP_GREEN_PAPER_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

.field public static final enum IAP_GREEN_PAPER_MAX_PER_HOUR:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

.field public static final enum MULTIPLAYER_TEST_ENDPOINT:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

.field public static final enum WIKI_URL:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const-string v1, "IAP_DOUBLE_GAIN_ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_DOUBLE_GAIN_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const-string v1, "IAP_GREEN_PAPER_ENABLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_GREEN_PAPER_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const-string v1, "IAP_ACCELERATOR_ENABLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_ACCELERATOR_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const-string v1, "ADS_ENABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->ADS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const-string v1, "WIKI_URL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->WIKI_URL:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const-string v1, "CN_STORE_LINK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->CN_STORE_LINK:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const-string v1, "IAP_GREEN_PAPER_MAX_PER_HOUR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_GREEN_PAPER_MAX_PER_HOUR:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    new-instance v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const-string v1, "MULTIPLAYER_TEST_ENDPOINT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->MULTIPLAYER_TEST_ENDPOINT:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-static {}, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->c()[Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->a:[Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

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

.method public static synthetic c()[Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_DOUBLE_GAIN_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_GREEN_PAPER_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_ACCELERATOR_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->ADS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->WIKI_URL:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->CN_STORE_LINK:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_GREEN_PAPER_MAX_PER_HOUR:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->MULTIPLAYER_TEST_ENDPOINT:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->a:[Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    return-object v0
.end method
