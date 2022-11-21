.class Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/SoundSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_EnemySystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/SoundSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/SoundSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/SoundSystem;Lcom/prineside/tdi2/systems/SoundSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;)V

    return-void
.end method


# virtual methods
.method public enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 1

    iget-object p2, p0, Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {p2, p1}, Lcom/prineside/tdi2/systems/SoundSystem;->a(Lcom/prineside/tdi2/systems/SoundSystem;F)F

    move-result p1

    iget-object p2, p0, Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-static {p2, p1}, Lcom/prineside/tdi2/systems/SoundSystem;->b(Lcom/prineside/tdi2/systems/SoundSystem;F)F

    move-result p2

    float-to-double p2, p2

    sget-object p4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p4, p4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object p5, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SHOOTING_SOUNDS_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p4, p5}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide p4

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, p4

    double-to-float p2, p2

    const p3, 0x3c23d70a    # 0.01f

    cmpl-float p3, p2, p3

    if-lez p3, :cond_3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result p4

    const/high16 p5, 0x3e800000    # 0.25f

    cmpg-float p5, p4, p5

    if-gez p5, :cond_0

    const p3, 0x3f8facc5    # 1.12246f

    goto :goto_0

    :cond_0
    const/high16 p5, 0x3f000000    # 0.5f

    cmpg-float p5, p4, p5

    if-gez p5, :cond_1

    const p3, 0x3f879c8d

    goto :goto_0

    :cond_1
    const/high16 p5, 0x3f400000    # 0.75f

    cmpg-float p4, p4, p5

    if-gez p4, :cond_2

    const p3, 0x3f71a1dc

    :cond_2
    :goto_0
    iget-object p4, p0, Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    sget-object p5, Lcom/prineside/tdi2/enums/StaticSoundType;->ENEMY_DIE:Lcom/prineside/tdi2/enums/StaticSoundType;

    const v0, 0x3f333333    # 0.7f

    mul-float p2, p2, v0

    invoke-virtual {p4, p5, p2, p3, p1}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;FFF)V

    :cond_3
    return-void
.end method

.method public enemyReachedTarget(Lcom/prineside/tdi2/Enemy;ILcom/prineside/tdi2/tiles/TargetTile;)Z
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/SoundSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->ENEMY_REACHED:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
