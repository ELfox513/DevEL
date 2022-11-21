.class public Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WheelOption"
.end annotation


# instance fields
.field public chance:F

.field public item:Lcom/prineside/tdi2/ItemStack;

.field public wheelMultiplier:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ItemStack;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ItemStack;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    iput p3, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;
    .locals 4

    const-string v0, "item"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "chance"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    const-string v3, "wheelMultiplier"

    invoke-virtual {p0, v3, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v2, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    invoke-direct {v2, v0, v1, p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;FI)V

    return-object v2
.end method


# virtual methods
.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    if-eqz v0, :cond_0

    const-string v0, "item"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ItemStack;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "chance"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "wheelMultiplier"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
