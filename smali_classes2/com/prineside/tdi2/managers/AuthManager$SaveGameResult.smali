.class public final enum Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SaveGameResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INVALID_SLOT_ID:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

.field public static final enum MAX_SLOTS_USED:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

.field public static final enum OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

.field public static final enum SUCCESS:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    const-string v1, "MAX_SLOTS_USED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->MAX_SLOTS_USED:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    const-string v1, "INVALID_SLOT_ID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->INVALID_SLOT_ID:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->SUCCESS:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    const-string v1, "OTHER_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    invoke-static {}, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->c()[Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->a:[Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

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

.method public static synthetic c()[Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->MAX_SLOTS_USED:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->INVALID_SLOT_ID:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->SUCCESS:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->a:[Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    return-object v0
.end method
