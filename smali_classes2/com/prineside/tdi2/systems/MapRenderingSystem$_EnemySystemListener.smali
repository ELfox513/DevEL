.class Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MapRenderingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_EnemySystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/MapRenderingSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;Lcom/prineside/tdi2/systems/MapRenderingSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;)V

    return-void
.end method


# virtual methods
.method public enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 6

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/SettingsManager;->isStainsEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    move-result-object p2

    iget-object p3, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p3}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->c(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I

    move-result p3

    aget-object p2, p2, p3

    if-nez p2, :cond_0

    new-instance p2, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    iget-object p3, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;-><init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;Lcom/prineside/tdi2/systems/MapRenderingSystem$1;)V

    iget-object p3, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p3}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    move-result-object p3

    iget-object p4, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p4}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->c(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I

    move-result p4

    aput-object p2, p3, p4

    :cond_0
    iget-object p3, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p3}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->f(Lcom/prineside/tdi2/systems/MapRenderingSystem;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object p3, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p3}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->f(Lcom/prineside/tdi2/systems/MapRenderingSystem;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result p3

    const p4, 0x3e0f5c29    # 0.14f

    mul-float v5, p3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Color;->lerp(FFFFF)Lcom/badlogic/gdx/graphics/Color;

    iget-object p3, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p3}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->f(Lcom/prineside/tdi2/systems/MapRenderingSystem;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    const/high16 p4, 0x3f000000    # 0.5f

    iput p4, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object p3, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p3}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->f(Lcom/prineside/tdi2/systems/MapRenderingSystem;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p3

    invoke-static {p2, p3}, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->b(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;F)F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {p2, p3}, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->f(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;F)F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {p2, p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->h(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;F)F

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->g(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p1

    iget-object p3, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p3}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->j(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I

    move-result p3

    aget-object p1, p1, p3

    invoke-static {p2, p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->d(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->h(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I

    move-result p1

    iget-object p2, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->g(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p2

    array-length p2, p2

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p1, p3}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->i(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->e(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->c(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I

    move-result p1

    const/16 p2, 0x400

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->k(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I

    move-result p1

    sub-int/2addr p2, p1

    const/16 p1, 0x300

    if-ltz p2, :cond_2

    iget-object p2, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    move-result-object p2

    iget-object p4, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p4}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->n(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    move-result-object p4

    iget-object p5, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p5}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->n(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    move-result-object p5

    array-length p5, p5

    invoke-static {p2, p3, p4, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    move-result-object p2

    iget-object p4, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p4}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->k(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    iget-object p5, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p5}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    move-result-object p5

    invoke-static {p2, p4, p5, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->n(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    move-result-object p2

    iget-object p4, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p4}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    move-result-object p4

    iget-object p5, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p5}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->n(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    move-result-object p5

    array-length p5, p5

    invoke-static {p2, p3, p4, p1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p2, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p2, p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p1, p3}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->l(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->c(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I

    move-result p1

    iget-object p2, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->k(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I

    move-result p2

    sub-int/2addr p1, p2

    const/16 p2, 0x301

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->m(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I

    :cond_4
    return-void
.end method
