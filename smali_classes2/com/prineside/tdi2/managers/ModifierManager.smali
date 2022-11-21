.class public Lcom/prineside/tdi2/managers/ModifierManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/ModifierManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ModifierManager$Factories;,
        Lcom/prineside/tdi2/managers/ModifierManager$Serializer;
    }
.end annotation


# instance fields
.field public final F:Lcom/prineside/tdi2/managers/ModifierManager$Factories;

.field public final a:[Lcom/prineside/tdi2/Modifier$Factory;

.field public final b:[Lcom/prineside/tdi2/enums/GameValueType;

.field public final d:[Ljava/lang/String;

.field public final k:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/Modifier$Factory;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ModifierManager;->a:[Lcom/prineside/tdi2/Modifier$Factory;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/ModifierManager;->b:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/ModifierManager;->d:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ModifierManager;->k:[Ljava/lang/String;

    new-instance v0, Lcom/prineside/tdi2/managers/ModifierManager$Factories;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ModifierManager$Factories;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ModifierManager;->F:Lcom/prineside/tdi2/managers/ModifierManager$Factories;

    sget-object v2, Lcom/prineside/tdi2/enums/ModifierType;->BALANCE:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/modifiers/BalanceModifier$BalanceModifierFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/modifiers/BalanceModifier$BalanceModifierFactory;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/managers/ModifierManager$Factories;->BALANCE:Lcom/prineside/tdi2/modifiers/BalanceModifier$BalanceModifierFactory;

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ModifierType;->POWER:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/modifiers/PowerModifier$PowerModifierFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/modifiers/PowerModifier$PowerModifierFactory;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/managers/ModifierManager$Factories;->POWER:Lcom/prineside/tdi2/modifiers/PowerModifier$PowerModifierFactory;

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ModifierType;->SEARCH:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/modifiers/SearchModifier$SearchModifierFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/modifiers/SearchModifier$SearchModifierFactory;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/managers/ModifierManager$Factories;->SEARCH:Lcom/prineside/tdi2/modifiers/SearchModifier$SearchModifierFactory;

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ModifierType;->DAMAGE:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/modifiers/DamageModifier$DamageModifierFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/modifiers/DamageModifier$DamageModifierFactory;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/managers/ModifierManager$Factories;->DAMAGE:Lcom/prineside/tdi2/modifiers/DamageModifier$DamageModifierFactory;

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ModifierType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/modifiers/AttackSpeedModifier$AttackSpeedModifierFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/modifiers/AttackSpeedModifier$AttackSpeedModifierFactory;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/managers/ModifierManager$Factories;->ATTACK_SPEED:Lcom/prineside/tdi2/modifiers/AttackSpeedModifier$AttackSpeedModifierFactory;

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ModifierType;->MINING_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/modifiers/MiningSpeedModifier$MiningSpeedModifierFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/modifiers/MiningSpeedModifier$MiningSpeedModifierFactory;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/managers/ModifierManager$Factories;->MINING_SPEED:Lcom/prineside/tdi2/modifiers/MiningSpeedModifier$MiningSpeedModifierFactory;

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ModifierType;->EXPERIENCE:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/managers/ModifierManager$Factories;->EXPERIENCE:Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;

    aput-object v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ModifierType;->BOUNTY:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/modifiers/BountyModifier$BountyModifierFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/modifiers/BountyModifier$BountyModifierFactory;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/managers/ModifierManager$Factories;->BOUNTY:Lcom/prineside/tdi2/modifiers/BountyModifier$BountyModifierFactory;

    aput-object v3, v1, v2

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/prineside/tdi2/managers/ModifierManager;->a:[Lcom/prineside/tdi2/Modifier$Factory;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v4, v5, v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all modifier factories were created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ModifierManager;->d:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifier_name_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ModifierManager;->k:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifier_description_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ModifierManager;->b:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MODIFIER_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_COUNT"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v3

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Modifier;
    .locals 1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/ModifierType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ModifierType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Modifier$Factory;->create()Lcom/prineside/tdi2/Modifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Modifier;->loadFromJson(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0
.end method

.method public getCountGameValue(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ModifierManager;->b:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getDescriptionAlias(Lcom/prineside/tdi2/enums/ModifierType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ModifierManager;->k:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/ModifierType;",
            ")",
            "Lcom/prineside/tdi2/Modifier$Factory<",
            "+",
            "Lcom/prineside/tdi2/Modifier;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ModifierManager;->a:[Lcom/prineside/tdi2/Modifier$Factory;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTitleAlias(Lcom/prineside/tdi2/enums/ModifierType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ModifierManager;->d:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public setup()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Modifier$Factory;->setup()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
