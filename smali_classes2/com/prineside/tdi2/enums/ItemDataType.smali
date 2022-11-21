.class public final enum Lcom/prineside/tdi2/enums/ItemDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/ItemDataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BONUS_LEVEL:Lcom/prineside/tdi2/enums/ItemDataType;

.field public static final enum BONUS_TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

.field public static final enum CASE_CONTAINS_PAPERS:Lcom/prineside/tdi2/enums/ItemDataType;

.field public static final enum CASE_ENCRYPTED:Lcom/prineside/tdi2/enums/ItemDataType;

.field public static final enum TILE_PREDEFINED_CORE_TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

.field public static final enum TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

.field public static final enum VALUE:Lcom/prineside/tdi2/enums/ItemDataType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/ItemDataType;

.field public static values:[Lcom/prineside/tdi2/enums/ItemDataType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/ItemDataType;

    const-string v1, "TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    new-instance v0, Lcom/prineside/tdi2/enums/ItemDataType;

    const-string v1, "VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->VALUE:Lcom/prineside/tdi2/enums/ItemDataType;

    new-instance v0, Lcom/prineside/tdi2/enums/ItemDataType;

    const-string v1, "CASE_ENCRYPTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->CASE_ENCRYPTED:Lcom/prineside/tdi2/enums/ItemDataType;

    new-instance v0, Lcom/prineside/tdi2/enums/ItemDataType;

    const-string v1, "CASE_CONTAINS_PAPERS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->CASE_CONTAINS_PAPERS:Lcom/prineside/tdi2/enums/ItemDataType;

    new-instance v0, Lcom/prineside/tdi2/enums/ItemDataType;

    const-string v1, "TILE_PREDEFINED_CORE_TYPE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->TILE_PREDEFINED_CORE_TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    new-instance v0, Lcom/prineside/tdi2/enums/ItemDataType;

    const-string v1, "BONUS_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->BONUS_TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    new-instance v0, Lcom/prineside/tdi2/enums/ItemDataType;

    const-string v1, "BONUS_LEVEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->BONUS_LEVEL:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-static {}, Lcom/prineside/tdi2/enums/ItemDataType;->c()[Lcom/prineside/tdi2/enums/ItemDataType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->a:[Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-static {}, Lcom/prineside/tdi2/enums/ItemDataType;->values()[Lcom/prineside/tdi2/enums/ItemDataType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->values:[Lcom/prineside/tdi2/enums/ItemDataType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/ItemDataType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/prineside/tdi2/enums/ItemDataType;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->VALUE:Lcom/prineside/tdi2/enums/ItemDataType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->CASE_ENCRYPTED:Lcom/prineside/tdi2/enums/ItemDataType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->CASE_CONTAINS_PAPERS:Lcom/prineside/tdi2/enums/ItemDataType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->TILE_PREDEFINED_CORE_TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->BONUS_TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->BONUS_LEVEL:Lcom/prineside/tdi2/enums/ItemDataType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ItemDataType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/ItemDataType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/ItemDataType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->a:[Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/ItemDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/ItemDataType;

    return-object v0
.end method
