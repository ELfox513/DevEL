.class public abstract Lcom/prineside/tdi2/Action;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Action;
    .locals 3

    const-string v0, "t"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/ActionType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Action$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v0, Lcom/prineside/tdi2/actions/CustomAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/CustomAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/prineside/tdi2/actions/CoreUpgradeAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/CoreUpgradeAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/prineside/tdi2/actions/SellModifierAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/SellModifierAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/prineside/tdi2/actions/CustomTowerButtonAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/CustomTowerButtonAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/prineside/tdi2/actions/UseAbilityAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/UseAbilityAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/prineside/tdi2/actions/ChangeTowerAimStrategyAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/ChangeTowerAimStrategyAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/prineside/tdi2/actions/SelectGlobalTowerAbilityAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/SelectGlobalTowerAbilityAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lcom/prineside/tdi2/actions/SelectTowerAbilityAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/SelectTowerAbilityAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lcom/prineside/tdi2/actions/BuildModifierAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/BuildModifierAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_a
    new-instance v0, Lcom/prineside/tdi2/actions/SellMinerAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/SellMinerAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_b
    new-instance v0, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_c
    new-instance v0, Lcom/prineside/tdi2/actions/UpgradeMinerAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/UpgradeMinerAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_d
    new-instance v0, Lcom/prineside/tdi2/actions/BuildMinerAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/BuildMinerAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_e
    new-instance v0, Lcom/prineside/tdi2/actions/SellTowerAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/SellTowerAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_f
    new-instance v0, Lcom/prineside/tdi2/actions/GlobalUpgradeTowerAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/GlobalUpgradeTowerAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_10
    new-instance v0, Lcom/prineside/tdi2/actions/UpgradeTowerAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/UpgradeTowerAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_11
    new-instance v0, Lcom/prineside/tdi2/actions/RewardingAdAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/RewardingAdAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_12
    new-instance v0, Lcom/prineside/tdi2/actions/CallWaveAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/CallWaveAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_13
    new-instance v0, Lcom/prineside/tdi2/actions/BuildTowerAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/BuildTowerAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_14
    new-instance v0, Lcom/prineside/tdi2/actions/ScriptAction;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/actions/ScriptAction;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public affectsPlayerXp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getType()Lcom/prineside/tdi2/enums/ActionType;
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 0

    return-void
.end method
