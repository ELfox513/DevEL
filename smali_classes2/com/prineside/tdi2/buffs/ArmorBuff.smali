.class public Lcom/prineside/tdi2/buffs/ArmorBuff;
.super Lcom/prineside/tdi2/Buff;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/buffs/ArmorBuff$ArmorBuffFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->ARMOR:Lcom/prineside/tdi2/enums/BuffType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Buff;-><init>(Lcom/prineside/tdi2/enums/BuffType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cpy(F)Lcom/prineside/tdi2/Buff;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/buffs/ArmorBuff;->cpy(F)Lcom/prineside/tdi2/buffs/ArmorBuff;

    move-result-object p1

    return-object p1
.end method

.method public cpy(F)Lcom/prineside/tdi2/buffs/ArmorBuff;
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->ARMOR:Lcom/prineside/tdi2/buffs/ArmorBuff$ArmorBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/ArmorBuff;

    iget v1, p0, Lcom/prineside/tdi2/Buff;->duration:F

    mul-float v1, v1, p1

    iget p1, p0, Lcom/prineside/tdi2/Buff;->maxDuration:F

    cmpl-float v2, v1, p1

    if-lez v2, :cond_0

    move v1, p1

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/Buff;->setup(FF)V

    return-object v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
