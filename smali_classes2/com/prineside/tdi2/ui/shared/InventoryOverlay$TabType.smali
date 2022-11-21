.class public final enum Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CRAFTING:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

.field public static final enum ITEMS_MAP_EDITOR:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

.field public static final enum ITEMS_MATERIALS:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

.field public static final enum ITEMS_OTHER:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

.field public static final enum PACKS:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

.field public static final synthetic a:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

.field public static final values:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const-string v1, "ITEMS_MATERIALS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_MATERIALS:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const-string v1, "ITEMS_MAP_EDITOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_MAP_EDITOR:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const-string v1, "ITEMS_OTHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_OTHER:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const-string v1, "CRAFTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->CRAFTING:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const-string v1, "PACKS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->PACKS:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->c()[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->a:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->values()[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->values:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    sget-object v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_MATERIALS:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_MAP_EDITOR:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->ITEMS_OTHER:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->CRAFTING:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->PACKS:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->a:[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    return-object v0
.end method
