.class public Lcom/prineside/tdi2/managers/AbilityManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/AbilityManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/AbilityManager$Factories;,
        Lcom/prineside/tdi2/managers/AbilityManager$Serializer;
    }
.end annotation


# instance fields
.field public final F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

.field public final a:[Lcom/prineside/tdi2/Ability$Factory;

.field public final b:[Lcom/prineside/tdi2/enums/GameValueType;

.field public final d:[Lcom/prineside/tdi2/enums/GameValueType;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/AbilityManager$Factories;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->values:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/Ability$Factory;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/AbilityManager;->b:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/AbilityManager;->d:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/prineside/tdi2/managers/AbilityManager;->b:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ABILITY_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_MAX_PER_GAME"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v5, p0, Lcom/prineside/tdi2/managers/AbilityManager;->d:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_ENERGY_COST"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v4

    aput-object v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->FIREBALL:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    new-instance v5, Lcom/prineside/tdi2/abilities/FireballAbility$FireballAbilityFactory;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/abilities/FireballAbility$FireballAbilityFactory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    iput-object v5, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->FIREBALL:Lcom/prineside/tdi2/abilities/FireballAbility$FireballAbilityFactory;

    aput-object v5, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->BLIZZARD:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    new-instance v5, Lcom/prineside/tdi2/abilities/BlizzardAbility$BlizzardAbilityFactory;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/abilities/BlizzardAbility$BlizzardAbilityFactory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    iput-object v5, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->BLIZZARD:Lcom/prineside/tdi2/abilities/BlizzardAbility$BlizzardAbilityFactory;

    aput-object v5, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->WINDSTORM:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    new-instance v5, Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    iput-object v5, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->WINDSTORM:Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;

    aput-object v5, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->THUNDER:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    new-instance v5, Lcom/prineside/tdi2/abilities/ThunderAbility$ThunderAbilityFactory;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/abilities/ThunderAbility$ThunderAbilityFactory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    iput-object v5, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->THUNDER:Lcom/prineside/tdi2/abilities/ThunderAbility$ThunderAbilityFactory;

    aput-object v5, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->SMOKE_BOMB:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    new-instance v5, Lcom/prineside/tdi2/abilities/SmokeBombAbility$SmokeBombAbilityFactory;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/abilities/SmokeBombAbility$SmokeBombAbilityFactory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    iput-object v5, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->SMOKE_BOMB:Lcom/prineside/tdi2/abilities/SmokeBombAbility$SmokeBombAbilityFactory;

    aput-object v5, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->FIRESTORM:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    new-instance v5, Lcom/prineside/tdi2/abilities/FirestormAbility$FirestormAbilityFactory;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/abilities/FirestormAbility$FirestormAbilityFactory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    iput-object v5, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->FIRESTORM:Lcom/prineside/tdi2/abilities/FirestormAbility$FirestormAbilityFactory;

    aput-object v5, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->MAGNET:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    new-instance v5, Lcom/prineside/tdi2/abilities/MagnetAbility$MagnetAbilityFactory;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/abilities/MagnetAbility$MagnetAbilityFactory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    iput-object v5, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->MAGNET:Lcom/prineside/tdi2/abilities/MagnetAbility$MagnetAbilityFactory;

    aput-object v5, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->BULLET_WALL:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    new-instance v5, Lcom/prineside/tdi2/abilities/BulletWallAbility$BulletWallAbilityFactory;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/abilities/BulletWallAbility$BulletWallAbilityFactory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    iput-object v5, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->BULLET_WALL:Lcom/prineside/tdi2/abilities/BulletWallAbility$BulletWallAbilityFactory;

    aput-object v5, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->BALL_LIGHTNING:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    new-instance v5, Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    iput-object v5, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->BALL_LIGHTNING:Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;

    aput-object v5, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->LOIC:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    new-instance v5, Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    iput-object v5, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->LOIC:Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;

    aput-object v5, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->NUKE:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    new-instance v5, Lcom/prineside/tdi2/abilities/NukeAbility$NukeAbilityFactory;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/abilities/NukeAbility$NukeAbilityFactory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    iput-object v5, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->NUKE:Lcom/prineside/tdi2/abilities/NukeAbility$NukeAbilityFactory;

    aput-object v5, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->OVERLOAD:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    new-instance v5, Lcom/prineside/tdi2/abilities/OverloadAbility$OverloadAbilityFactory;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/abilities/OverloadAbility$OverloadAbilityFactory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    iput-object v5, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->OVERLOAD:Lcom/prineside/tdi2/abilities/OverloadAbility$OverloadAbilityFactory;

    aput-object v5, v0, v3

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->values:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v4, v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all ability factories were created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public getEnergyCostGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->d:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/AbilityType;",
            ")",
            "Lcom/prineside/tdi2/Ability$Factory<",
            "+",
            "Lcom/prineside/tdi2/Ability;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMaxPerGameGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->b:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isAnyAbilityOpened()Z
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->values:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/AbilityManager;->getMaxPerGameGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AbilityManager;->a:[Lcom/prineside/tdi2/Ability$Factory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Ability$Factory;->setup()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public test()V
    .locals 10

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->values:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_9

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/AbilityManager;->getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;

    move-result-object v5

    iget-object v6, v5, Lcom/prineside/tdi2/Ability$Factory;->abilityType:Lcom/prineside/tdi2/enums/AbilityType;

    if-ne v6, v4, :cond_8

    invoke-virtual {v5}, Lcom/prineside/tdi2/Ability$Factory;->create()Lcom/prineside/tdi2/Ability;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lcom/prineside/tdi2/Ability$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/prineside/tdi2/Ability$Factory;->getDarkerColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Ability$Factory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/prineside/tdi2/Ability$Factory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/Ability$Factory;->getDescription(Lcom/prineside/tdi2/GameValueProvider;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/Ability$Factory;->getDescription(Lcom/prineside/tdi2/GameValueProvider;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/prineside/tdi2/Ability$Factory;->getIconDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    :goto_1
    const/16 v6, 0x14

    if-ge v4, v6, :cond_1

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/Ability$Factory;->getPriceInGreenPapers(I)I

    sget-object v6, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    invoke-virtual {v5, v9, v4}, Lcom/prineside/tdi2/Ability$Factory;->getPriceInResources(Lcom/prineside/tdi2/enums/ResourceType;I)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " factory.getIconDrawable() is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " factory.getDescription() is null or empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " factory.getTitle() is null or empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " factory.getDarkerColor() is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " factory.getColor() is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " factory.create() is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " factory.abilityType wrong ability type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/prineside/tdi2/Ability$Factory;->abilityType:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-void
.end method
