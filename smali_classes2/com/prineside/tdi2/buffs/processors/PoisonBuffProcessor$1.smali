.class Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/prineside/tdi2/buffs/PoisonBuff;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prineside/tdi2/buffs/PoisonBuff;Lcom/prineside/tdi2/buffs/PoisonBuff;)I
    .locals 1

    iget p1, p1, Lcom/prineside/tdi2/buffs/PoisonBuff;->poisonDamage:F

    iget p2, p2, Lcom/prineside/tdi2/buffs/PoisonBuff;->poisonDamage:F

    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/buffs/PoisonBuff;

    check-cast p2, Lcom/prineside/tdi2/buffs/PoisonBuff;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor$1;->compare(Lcom/prineside/tdi2/buffs/PoisonBuff;Lcom/prineside/tdi2/buffs/PoisonBuff;)I

    move-result p1

    return p1
.end method
