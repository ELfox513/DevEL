.class public final enum Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/SecretCodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CodeValidationResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALREADY_USED:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

.field public static final enum APPLIED:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

.field public static final enum ERROR:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

.field public static final enum GAME_BUILD_MISMATCH:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

.field public static final enum NOT_EXISTS:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

.field public static final enum PROCESSING:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    const-string v1, "NOT_EXISTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->NOT_EXISTS:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    new-instance v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    const-string v1, "APPLIED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->APPLIED:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    new-instance v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    const-string v1, "ALREADY_USED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->ALREADY_USED:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    new-instance v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    const-string v1, "PROCESSING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->PROCESSING:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    new-instance v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->ERROR:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    new-instance v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    const-string v1, "GAME_BUILD_MISMATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->GAME_BUILD_MISMATCH:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    invoke-static {}, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->c()[Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->a:[Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

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

.method public static synthetic c()[Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    sget-object v1, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->NOT_EXISTS:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->APPLIED:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->ALREADY_USED:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->PROCESSING:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->ERROR:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->GAME_BUILD_MISMATCH:Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->a:[Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/SecretCodeManager$CodeValidationResultCode;

    return-object v0
.end method
