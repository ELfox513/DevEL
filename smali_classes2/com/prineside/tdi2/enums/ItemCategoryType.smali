.class public final enum Lcom/prineside/tdi2/enums/ItemCategoryType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/ItemCategoryType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MAP_EDITOR:Lcom/prineside/tdi2/enums/ItemCategoryType;

.field public static final enum MATERIALS:Lcom/prineside/tdi2/enums/ItemCategoryType;

.field public static final enum OTHER:Lcom/prineside/tdi2/enums/ItemCategoryType;

.field public static final enum PACKS:Lcom/prineside/tdi2/enums/ItemCategoryType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/ItemCategoryType;

.field public static final values:[Lcom/prineside/tdi2/enums/ItemCategoryType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/ItemCategoryType;

    const-string v1, "MAP_EDITOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->MAP_EDITOR:Lcom/prineside/tdi2/enums/ItemCategoryType;

    new-instance v0, Lcom/prineside/tdi2/enums/ItemCategoryType;

    const-string v1, "OTHER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->OTHER:Lcom/prineside/tdi2/enums/ItemCategoryType;

    new-instance v0, Lcom/prineside/tdi2/enums/ItemCategoryType;

    const-string v1, "MATERIALS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->MATERIALS:Lcom/prineside/tdi2/enums/ItemCategoryType;

    new-instance v0, Lcom/prineside/tdi2/enums/ItemCategoryType;

    const-string v1, "PACKS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ItemCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->PACKS:Lcom/prineside/tdi2/enums/ItemCategoryType;

    invoke-static {}, Lcom/prineside/tdi2/enums/ItemCategoryType;->c()[Lcom/prineside/tdi2/enums/ItemCategoryType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->a:[Lcom/prineside/tdi2/enums/ItemCategoryType;

    invoke-static {}, Lcom/prineside/tdi2/enums/ItemCategoryType;->values()[Lcom/prineside/tdi2/enums/ItemCategoryType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->values:[Lcom/prineside/tdi2/enums/ItemCategoryType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/ItemCategoryType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/prineside/tdi2/enums/ItemCategoryType;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemCategoryType;->MAP_EDITOR:Lcom/prineside/tdi2/enums/ItemCategoryType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ItemCategoryType;->OTHER:Lcom/prineside/tdi2/enums/ItemCategoryType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ItemCategoryType;->MATERIALS:Lcom/prineside/tdi2/enums/ItemCategoryType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ItemCategoryType;->PACKS:Lcom/prineside/tdi2/enums/ItemCategoryType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ItemCategoryType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/ItemCategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/ItemCategoryType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/ItemCategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->a:[Lcom/prineside/tdi2/enums/ItemCategoryType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/ItemCategoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/ItemCategoryType;

    return-object v0
.end method
