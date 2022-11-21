.class Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LegConfig"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public h:Lcom/badlogic/gdx/math/Vector2;

.field public i:Lcom/badlogic/gdx/math/Vector2;

.field public j:Lcom/badlogic/gdx/math/Vector2;

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public final r:Lcom/badlogic/gdx/math/Vector2;

.field public final synthetic s:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;IFFFFF)V
    .locals 3

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->s:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->a:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->b:F

    const v1, 0x4233eb84    # 44.979996f

    iput v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->c:F

    const v1, 0x43196666    # 153.4f

    iput v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->d:F

    mul-float v2, p1, v1

    mul-float v2, v2, p1

    mul-float v2, v2, v1

    iput v2, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->e:F

    mul-float p1, v0, v1

    mul-float p1, p1, v0

    mul-float p1, p1, v1

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->f:F

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->h:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->i:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1, v0, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->j:Lcom/badlogic/gdx/math/Vector2;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->o:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->p:F

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->q:F

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->r:Lcom/badlogic/gdx/math/Vector2;

    iput p2, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->g:I

    iget-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->h:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p3, p4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iput p5, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->k:F

    iput p6, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->l:F

    iput p7, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->n:F

    invoke-static {p5, p6}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->m:F

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;FFF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->c(FFF)V

    return-void
.end method


# virtual methods
.method public b(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 7

    invoke-virtual {p0, p2, p3, p4}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->g(FFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->METAPHOR_BOSS:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$MetaphorBossEnemyFactory;

    iget-object v1, p3, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$MetaphorBossEnemyFactory;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object p2, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->j:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p3, v2

    mul-float p3, p3, p5

    add-float v4, v2, p3

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v3

    mul-float p2, p2, p5

    add-float v5, v3, p2

    iget v6, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->c:F

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFF)V

    return-void
.end method

.method public final c(FFF)V
    .locals 8

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    const v1, 0x3a83126f    # 0.001f

    add-float v6, v0, v1

    iget v7, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->n:F

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->d(FFFFF)V

    return-void
.end method

.method public final d(FFFFF)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->k:F

    iget v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->l:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p4

    add-float/2addr v0, v1

    iget p4, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->d:F

    mul-float p4, p4, p5

    const/4 p5, 0x0

    invoke-static {p5, p5, v0, p4}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p4

    iget-object p5, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->i:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->h:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->e(FFF)F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->o:F

    return-void
.end method

.method public final e(FFF)F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->r:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->h:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->r:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->r:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr p1, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->i:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {p1, p2, v1, v0}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result p1

    sub-float/2addr p1, p3

    return p1
.end method

.method public final f(F)F
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->k:F

    invoke-static {v0, p1}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result p1

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->m:F

    div-float v1, p1, v0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    neg-float p1, p1

    neg-float v0, v0

    div-float v1, p1, v0

    :cond_0
    return v1
.end method

.method public final g(FFF)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->r:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->h:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->r:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object p3, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->r:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->r:Lcom/badlogic/gdx/math/Vector2;

    return-object p1
.end method

.method public h(FFFF)V
    .locals 11

    iget v5, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->n:F

    invoke-virtual {p0, p2, p3, p4}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->e(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->f(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v7, 0x0

    cmpg-float v3, v0, v7

    if-gez v3, :cond_0

    const v3, 0x3f7fbe77    # 0.999f

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v4

    mul-float v4, v4, v1

    sub-float/2addr v3, v4

    goto :goto_0

    :cond_0
    cmpl-float v3, v0, v6

    if-lez v3, :cond_1

    const v3, 0x3a83126f    # 0.001f

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v4

    mul-float v4, v4, v1

    add-float/2addr v3, v4

    goto :goto_0

    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->i:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v8, 0x1

    cmpl-float v1, v1, v8

    if-nez v1, :cond_2

    const v1, 0x3b03126f    # 0.002f

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v3

    const v4, 0x3f7ef9db    # 0.996f

    mul-float v3, v3, v4

    add-float/2addr v3, v1

    :cond_2
    cmpl-float v1, v3, v2

    if-nez v1, :cond_4

    invoke-virtual {p0, p2, p3, p4}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->g(FFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget-object v4, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->i:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v10, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v9, v4, v10, v1}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v1

    iget v4, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->e:F

    const v9, 0x3e4ccccd    # 0.2f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_3

    :goto_1
    mul-float v9, v9, v0

    move v4, v9

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->f:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_2
    cmpl-float v1, v4, v2

    if-eqz v1, :cond_5

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->d(FFFFF)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->e(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->f(F)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->q:F

    goto :goto_3

    :cond_5
    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->q:F

    :goto_3
    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->j:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v1, v1, v8

    if-nez v1, :cond_6

    iget-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->i:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->o:F

    cmpl-float v2, v1, v7

    if-eqz v2, :cond_8

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float p1, p1, v2

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->o:F

    cmpg-float p1, v1, v7

    if-gtz p1, :cond_7

    iget-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->i:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iput v7, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->o:F

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->i:Lcom/badlogic/gdx/math/Vector2;

    sub-float/2addr v6, v1

    invoke-virtual {v0, p1, v6}, Lcom/badlogic/gdx/math/Vector2;->lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    :cond_8
    :goto_4
    invoke-virtual {p0, p2, p3, p4}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->g(FFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget p2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object p3, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->j:Lcom/badlogic/gdx/math/Vector2;

    iget p4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {p2, p1, p4, p3}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result p1

    iget p2, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->d:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->p:F

    return-void
.end method
