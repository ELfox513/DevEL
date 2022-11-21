.class public Lcom/prineside/tdi2/managers/AbilityManager$Factories;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/AbilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factories"
.end annotation


# instance fields
.field public BALL_LIGHTNING:Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;

.field public BLIZZARD:Lcom/prineside/tdi2/abilities/BlizzardAbility$BlizzardAbilityFactory;

.field public BULLET_WALL:Lcom/prineside/tdi2/abilities/BulletWallAbility$BulletWallAbilityFactory;

.field public FIREBALL:Lcom/prineside/tdi2/abilities/FireballAbility$FireballAbilityFactory;

.field public FIRESTORM:Lcom/prineside/tdi2/abilities/FirestormAbility$FirestormAbilityFactory;

.field public LOIC:Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;

.field public MAGNET:Lcom/prineside/tdi2/abilities/MagnetAbility$MagnetAbilityFactory;

.field public NUKE:Lcom/prineside/tdi2/abilities/NukeAbility$NukeAbilityFactory;

.field public OVERLOAD:Lcom/prineside/tdi2/abilities/OverloadAbility$OverloadAbilityFactory;

.field public SMOKE_BOMB:Lcom/prineside/tdi2/abilities/SmokeBombAbility$SmokeBombAbilityFactory;

.field public THUNDER:Lcom/prineside/tdi2/abilities/ThunderAbility$ThunderAbilityFactory;

.field public WINDSTORM:Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
