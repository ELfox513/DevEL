.class public final enum Lcom/prineside/tdi2/enums/ItemSortingType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/ItemSortingType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum KIND:Lcom/prineside/tdi2/enums/ItemSortingType;

.field public static final enum RARITY:Lcom/prineside/tdi2/enums/ItemSortingType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/ItemSortingType;

.field public static final values:[Lcom/prineside/tdi2/enums/ItemSortingType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/ItemSortingType;

    const-string v1, "RARITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemSortingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->RARITY:Lcom/prineside/tdi2/enums/ItemSortingType;

    new-instance v0, Lcom/prineside/tdi2/enums/ItemSortingType;

    const-string v1, "KIND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemSortingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->KIND:Lcom/prineside/tdi2/enums/ItemSortingType;

    invoke-static {}, Lcom/prineside/tdi2/enums/ItemSortingType;->c()[Lcom/prineside/tdi2/enums/ItemSortingType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->a:[Lcom/prineside/tdi2/enums/ItemSortingType;

    invoke-static {}, Lcom/prineside/tdi2/enums/ItemSortingType;->values()[Lcom/prineside/tdi2/enums/ItemSortingType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->values:[Lcom/prineside/tdi2/enums/ItemSortingType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/ItemSortingType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/prineside/tdi2/enums/ItemSortingType;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSortingType;->RARITY:Lcom/prineside/tdi2/enums/ItemSortingType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSortingType;->KIND:Lcom/prineside/tdi2/enums/ItemSortingType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ItemSortingType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/ItemSortingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/ItemSortingType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/ItemSortingType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->a:[Lcom/prineside/tdi2/enums/ItemSortingType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/ItemSortingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/ItemSortingType;

    return-object v0
.end method
