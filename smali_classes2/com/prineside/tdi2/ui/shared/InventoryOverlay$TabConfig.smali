.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabConfig"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public buttonShiftX:F

.field public colorBright:Lcom/badlogic/gdx/graphics/Color;

.field public colorDark:Lcom/badlogic/gdx/graphics/Color;

.field public iconAlias:Ljava/lang/String;

.field public subcategories:[Lcom/prineside/tdi2/enums/ItemSubcategoryType;

.field public tabType:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;FLjava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;[Lcom/prineside/tdi2/enums/ItemSubcategoryType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->buttonShiftX:F

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->iconAlias:Ljava/lang/String;

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->tabType:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    iput-object p4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->colorDark:Lcom/badlogic/gdx/graphics/Color;

    iput-object p5, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->colorBright:Lcom/badlogic/gdx/graphics/Color;

    iput-object p6, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->subcategories:[Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "inventory_tab_name_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;FLjava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;[Lcom/prineside/tdi2/enums/ItemSubcategoryType;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;FLjava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;[Lcom/prineside/tdi2/enums/ItemSubcategoryType;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
