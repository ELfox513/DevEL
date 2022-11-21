.class public Lcom/prineside/tdi2/systems/ParticleSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;,
        Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;,
        Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;,
        Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;,
        Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;
    }
.end annotation


# static fields
.field public static final H:[F

.field public static final I:Lcom/badlogic/gdx/math/Vector2;

.field public static final J:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final K:[F

.field public static final L:Lcom/badlogic/gdx/graphics/Color;

.field public static final M:Lcom/badlogic/gdx/math/Vector2;

.field public static final N:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public A:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public B:F

.field public C:I

.field public D:I

.field public final E:Lcom/badlogic/gdx/utils/IntIntMap;

.field public F:I

.field public final G:Lcom/badlogic/gdx/utils/IntFloatMap;

.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;",
            ">;"
        }
    .end annotation
.end field

.field public z:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/enums/LimitedParticleType;->values:[Lcom/prineside/tdi2/enums/LimitedParticleType;

    array-length v0, v0

    new-array v0, v0, [F

    sput-object v0, Lcom/prineside/tdi2/systems/ParticleSystem;->H:[F

    sget v1, Lcom/prineside/tdi2/Config;->UPDATE_DELTA_TIME:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    sget-object v1, Lcom/prineside/tdi2/enums/LimitedParticleType;->EXPLOSION_FIREBALL:Lcom/prineside/tdi2/enums/LimitedParticleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget v3, Lcom/prineside/tdi2/Config;->UPDATE_DELTA_TIME:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    aput v3, v0, v1

    sget-object v1, Lcom/prineside/tdi2/enums/LimitedParticleType;->EXPLOSION_MISSILE:Lcom/prineside/tdi2/enums/LimitedParticleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget v3, Lcom/prineside/tdi2/Config;->UPDATE_DELTA_TIME:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float v3, v3, v4

    aput v3, v0, v1

    sget-object v1, Lcom/prineside/tdi2/enums/LimitedParticleType;->EXPLOSION_CANNON:Lcom/prineside/tdi2/enums/LimitedParticleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget v3, Lcom/prineside/tdi2/Config;->UPDATE_DELTA_TIME:F

    mul-float v3, v3, v4

    aput v3, v0, v1

    sget-object v1, Lcom/prineside/tdi2/enums/LimitedParticleType;->ENEMY_HIT:Lcom/prineside/tdi2/enums/LimitedParticleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget v3, Lcom/prineside/tdi2/Config;->UPDATE_DELTA_TIME:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v3, v3, v4

    aput v3, v0, v1

    sget-object v1, Lcom/prineside/tdi2/enums/LimitedParticleType;->ENEMY_DEAD:Lcom/prineside/tdi2/enums/LimitedParticleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget v3, Lcom/prineside/tdi2/Config;->UPDATE_DELTA_TIME:F

    mul-float v3, v3, v2

    aput v3, v0, v1

    sget-object v1, Lcom/prineside/tdi2/enums/LimitedParticleType;->RESOURCE_MINED:Lcom/prineside/tdi2/enums/LimitedParticleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget v2, Lcom/prineside/tdi2/Config;->UPDATE_DELTA_TIME:F

    mul-float v2, v2, v4

    aput v2, v0, v1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/ParticleSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/ParticleSystem;->J:Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x14

    new-array v0, v0, [F

    sput-object v0, Lcom/prineside/tdi2/systems/ParticleSystem;->K:[F

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/ParticleSystem;->L:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/ParticleSystem;->M:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/ParticleSystem;->N:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-class v0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v2, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v3, v4, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v2, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->b:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/prineside/tdi2/systems/ParticleSystem$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/systems/ParticleSystem$1;-><init>(Lcom/prineside/tdi2/systems/ParticleSystem;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->t:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/prineside/tdi2/systems/ParticleSystem$2;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/systems/ParticleSystem$2;-><init>(Lcom/prineside/tdi2/systems/ParticleSystem;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->u:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/prineside/tdi2/systems/ParticleSystem$3;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/systems/ParticleSystem$3;-><init>(Lcom/prineside/tdi2/systems/ParticleSystem;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->v:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/prineside/tdi2/systems/ParticleSystem$4;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/systems/ParticleSystem$4;-><init>(Lcom/prineside/tdi2/systems/ParticleSystem;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->w:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/prineside/tdi2/systems/ParticleSystem$5;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/systems/ParticleSystem$5;-><init>(Lcom/prineside/tdi2/systems/ParticleSystem;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->x:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->y:Lcom/badlogic/gdx/utils/IntMap;

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->E:Lcom/badlogic/gdx/utils/IntIntMap;

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->G:Lcom/badlogic/gdx/utils/IntFloatMap;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "coin-small"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->A:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->z:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setUseIntegerPositions(Z)V

    return-void
.end method

.method public static synthetic a()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/ParticleSystem;->L:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static freeParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V
    .locals 1

    instance-of v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->free()V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/prineside/tdi2/utils/PooledCustomEffect;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/prineside/tdi2/utils/PooledCustomEffect;

    invoke-interface {p0}, Lcom/prineside/tdi2/utils/PooledCustomEffect;->free()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addCoinParticle(FFI)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->state:Lcom/prineside/tdi2/systems/StateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->v:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/high16 p1, 0x42800000    # 64.0f

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result p2

    const/high16 v1, 0x42000000    # 32.0f

    mul-float p2, p2, v1

    add-float/2addr p2, p1

    iput p2, v0, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->b:F

    const/4 p1, 0x0

    iput p1, v0, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->c:F

    iput p3, v0, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->d:I

    iget-object p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addDamageParticle(FFIF)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->state:Lcom/prineside/tdi2/systems/StateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->w:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->a:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v2, 0x41800000    # 16.0f

    add-float/2addr v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x42a00000    # 80.0f

    iput v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->c:F

    const/4 v1, 0x0

    iput v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->d:F

    iput p3, v0, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->f:I

    iput p4, v0, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->e:F

    iget-object p4, v0, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->b:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    int-to-double v2, p3

    const/4 p3, 0x0

    invoke-static {v2, v3, p3}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p3

    invoke-virtual {p4, p3, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getX()F

    move-result p3

    neg-float p3, p3

    add-float/2addr p3, p1

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getY()F

    move-result p1

    neg-float p1, p1

    add-float/2addr p1, p2

    invoke-virtual {p4, p3, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->translate(FF)V

    iget p1, v0, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->e:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public addEnemyHitParticle(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Enemy;FLcom/prineside/tdi2/Projectile;)V
    .locals 6

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getHitParticle()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    move-result-object p4

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr p1, v0

    sget-object v0, Lcom/prineside/tdi2/systems/ParticleSystem;->N:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/prineside/tdi2/systems/ParticleSystem;->M:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v0, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p4, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getAngle()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    const/high16 v3, 0x42700000    # 60.0f

    sub-float v4, p1, v3

    add-float/2addr p1, v3

    invoke-virtual {v2, v4, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColors()[F

    move-result-object v2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v4, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/4 v5, 0x0

    aput v4, v2, v5

    iget v4, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/4 v5, 0x1

    aput v4, v2, v5

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/4 v4, 0x2

    aput v3, v2, v4

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getEmission()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object p1

    iget p2, p2, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr p3, p2

    const/high16 p2, 0x42480000    # 50.0f

    mul-float p3, p3, p2

    float-to-int p2, p3

    const/4 p3, 0x3

    if-ge p2, p3, :cond_0

    const/4 p2, 0x3

    :cond_0
    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/LimitedParticleType;->ENEMY_HIT:Lcom/prineside/tdi2/enums/LimitedParticleType;

    iget p3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p4, p2, p3, v0}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Lcom/prineside/tdi2/enums/LimitedParticleType;FF)V

    return-void
.end method

.method public addFlashParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V
    .locals 10

    sget-object v9, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/prineside/tdi2/systems/ParticleSystem;->addFlashParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFLcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public addFlashParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->x:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;

    const/4 v2, 0x0

    iput v2, v1, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->time:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    iput-object v2, v1, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v2, v1, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v3, p9

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, v1, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->vertices:[F

    sub-float v5, p2, p4

    sub-float v6, p3, p5

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v4, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v13, p8

    invoke-static/range {v3 .. v13}, Lcom/prineside/tdi2/utils/DrawUtils;->bakeVertices([FLcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addOpaqueParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/ParticleSystem;->willParticleBeSkipped()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/prineside/tdi2/systems/ParticleSystem;->freeParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addOrbParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FIIII)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->state:Lcom/prineside/tdi2/systems/StateSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x1f

    add-int v6, v5, v1

    mul-int/lit8 v6, v6, 0x1f

    add-int/2addr v6, v2

    mul-int/lit8 v6, v6, 0x1f

    add-int/2addr v6, v3

    mul-int/lit8 v6, v6, 0x1f

    add-int/2addr v6, v4

    iget-object v5, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->E:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v5

    const/4 v7, 0x4

    if-ge v5, v7, :cond_1

    iget-object v7, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->t:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;

    iget-object v8, v7, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->e:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v11

    const/high16 v12, 0x43b40000    # 360.0f

    mul-float v11, v11, v12

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v11

    const/high16 v13, 0x42800000    # 64.0f

    mul-float v11, v11, v13

    const v14, 0x3f4ccccd    # 0.8f

    mul-float v11, v11, v14

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    mul-int/lit16 v1, v1, 0x80

    add-int/lit8 v1, v1, 0x40

    int-to-float v1, v1

    mul-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, 0x40

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v9, v10}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v2

    mul-float v2, v2, v12

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v2

    mul-float v2, v2, v13

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->f:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v9, v10}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v2

    mul-float v2, v2, v12

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v2

    mul-float v2, v2, v13

    const v8, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    mul-int/lit16 v2, v3, 0x80

    add-int/lit8 v2, v2, 0x40

    int-to-float v2, v2

    mul-int/lit16 v3, v4, 0x80

    add-int/lit8 v3, v3, 0x40

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->c:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v7, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->e:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v1, p1

    invoke-static {v7, v1}, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->b(Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v1, p2

    iput v1, v7, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->b:F

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->E:Lcom/badlogic/gdx/utils/IntIntMap;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Lcom/prineside/tdi2/enums/LimitedParticleType;FF)V
    .locals 2

    const/high16 v0, 0x42800000    # 64.0f

    div-float/2addr p3, v0

    float-to-int p3, p3

    const/16 v1, 0x1f

    add-int/2addr p3, v1

    mul-int/lit8 p3, p3, 0x1f

    div-float/2addr p4, v0

    float-to-int p4, p4

    add-int/2addr p3, p4

    mul-int/lit8 p3, p3, 0x1f

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->G:Lcom/badlogic/gdx/utils/IntFloatMap;

    const/4 v0, 0x0

    invoke-virtual {p4, p3, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result p4

    const/4 v1, 0x1

    cmpg-float p4, p4, v0

    if-gtz p4, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->G:Lcom/badlogic/gdx/utils/IntFloatMap;

    sget-object p4, Lcom/prineside/tdi2/systems/ParticleSystem;->H:[F

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p4, p2

    invoke-virtual {p1, p3, p2}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    iget p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->C:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->C:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/prineside/tdi2/systems/ParticleSystem;->freeParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    iget p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->D:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->D:I

    :goto_0
    return-void
.end method

.method public addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/ParticleSystem;->willParticleBeSkipped()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/prineside/tdi2/systems/ParticleSystem;->freeParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addShatterParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFF)V
    .locals 10

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/prineside/tdi2/systems/ParticleSystem;->addShatterParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Interpolation;Z)V

    return-void
.end method

.method public addShatterParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Interpolation;Z)V
    .locals 37

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p7

    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p8, :cond_1

    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    goto :goto_0

    :cond_1
    move-object/from16 v3, p8

    :goto_0
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, p4, v4

    sub-float v6, p2, v5

    sub-float v5, p3, v5

    mul-float v7, p4, p6

    if-eqz p9, :cond_2

    iget-object v8, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    goto :goto_1

    :cond_2
    iget-object v8, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    :goto_1
    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v9

    mul-float v9, v9, v4

    const/high16 v10, 0x3e800000    # 0.25f

    add-float/2addr v9, v10

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v11

    mul-float v11, v11, v4

    add-float/2addr v11, v10

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v12

    mul-float v12, v12, v4

    add-float/2addr v12, v10

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v13

    mul-float v13, v13, v4

    add-float/2addr v13, v10

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v14

    mul-float v14, v14, v4

    add-float/2addr v14, v10

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v15

    mul-float v15, v15, v4

    add-float/2addr v15, v10

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v18

    sub-float v19, v16, v10

    mul-float v20, v19, v14

    add-float v20, v10, v20

    sub-float v21, v18, v17

    mul-float v22, v21, v15

    add-float v22, v17, v22

    mul-float v23, v21, v9

    add-float v23, v17, v23

    mul-float v24, v19, v11

    add-float v24, v10, v24

    mul-float v21, v21, v12

    add-float v21, v17, v21

    mul-float v19, v19, v13

    add-float v19, v10, v19

    iget-object v4, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->u:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;

    move/from16 p2, v13

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->g(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->h(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v4, v3}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->i(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;Lcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v13

    const/16 v25, 0x0

    move/from16 p3, v12

    const/4 v12, 0x0

    aput v12, v13, v25

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v13

    mul-float v9, v9, v7

    const/16 v26, 0x1

    aput v9, v13, v26

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v13

    const/16 v27, 0x2

    aput v12, v13, v27

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v13

    const/16 v28, 0x3

    aput v7, v13, v28

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v13

    mul-float v11, v11, v7

    const/16 v29, 0x4

    aput v11, v13, v29

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v13

    const/16 v30, 0x5

    aput v7, v13, v30

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v13

    mul-float v14, v14, v7

    const/16 v31, 0x6

    aput v14, v13, v31

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v13

    mul-float v15, v15, v7

    const/16 v32, 0x7

    aput v15, v13, v32

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v13

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/math/Polygon;->setVertices([F)V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v12

    aput v10, v12, v25

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v12

    aput v23, v12, v26

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v12

    aput v10, v12, v27

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v12

    aput v18, v12, v28

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v12

    aput v24, v12, v29

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v12

    aput v18, v12, v30

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v12

    aput v20, v12, v31

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v12

    aput v22, v12, v32

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v12

    invoke-virtual {v12, v6, v5}, Lcom/badlogic/gdx/math/Polygon;->setPosition(FF)V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v12

    move/from16 p6, v10

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v10, v7, v13

    invoke-virtual {v12, v10, v10}, Lcom/badlogic/gdx/math/Polygon;->setOrigin(FF)V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/math/Polygon;->setRotation(F)V

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v12

    mul-float v12, v12, v13

    const v33, 0x3f19999a    # 0.6f

    add-float v12, v12, v33

    invoke-static {v4, v12}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->b(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;F)F

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v12

    mul-float v12, v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    invoke-static {v4, v12}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->c(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;F)F

    const/4 v12, 0x0

    invoke-static {v4, v12}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->e(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;F)F

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->f(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v13

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v34

    const/high16 v35, 0x43800000    # 256.0f

    mul-float v34, v34, v35

    const/high16 v36, 0x43000000    # 128.0f

    move/from16 p9, v9

    add-float v9, v34, v36

    invoke-virtual {v13, v12, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v12

    const/high16 v13, 0x42700000    # 60.0f

    mul-float v12, v12, v13

    const/high16 v34, 0x41700000    # 15.0f

    add-float v12, v12, v34

    add-float/2addr v12, v1

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->u:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->g(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->h(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v4, v3}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->i(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;Lcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v14, v9, v25

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v15, v9, v26

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v11, v9, v27

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v7, v9, v28

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v7, v9, v29

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v7, v9, v30

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v7, v9, v31

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    mul-float v12, v7, p3

    aput v12, v9, v32

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v9

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/math/Polygon;->setVertices([F)V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v20, v9, v25

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v22, v9, v26

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v24, v9, v27

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v18, v9, v28

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v16, v9, v29

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v18, v9, v30

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v16, v9, v31

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v21, v9, v32

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v9

    invoke-virtual {v9, v6, v5}, Lcom/badlogic/gdx/math/Polygon;->setPosition(FF)V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v9

    invoke-virtual {v9, v10, v10}, Lcom/badlogic/gdx/math/Polygon;->setOrigin(FF)V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/math/Polygon;->setRotation(F)V

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v9

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v9, v9, v11

    add-float v9, v9, v33

    invoke-static {v4, v9}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->b(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;F)F

    const/4 v9, 0x0

    invoke-static {v4, v9}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->e(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;F)F

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->f(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v11

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v18

    mul-float v18, v18, v35

    add-float v13, v18, v36

    invoke-virtual {v11, v9, v13}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v11

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v9

    const/high16 v13, 0x42700000    # 60.0f

    mul-float v9, v9, v13

    add-float v9, v9, v34

    const/high16 v13, 0x43870000    # 270.0f

    add-float/2addr v9, v13

    add-float/2addr v9, v1

    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->u:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->g(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->h(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v4, v3}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->i(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;Lcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v7, v9, v25

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v12, v9, v26

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v7, v9, v27

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    const/4 v11, 0x0

    aput v11, v9, v28

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    mul-float v7, v7, p2

    aput v7, v9, v29

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v11, v9, v30

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v14, v9, v31

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v15, v9, v32

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v9

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/math/Polygon;->setVertices([F)V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v16, v9, v25

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v21, v9, v26

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v16, v9, v27

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v17, v9, v28

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v19, v9, v29

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v17, v9, v30

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v20, v9, v31

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v9

    aput v22, v9, v32

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v9

    invoke-virtual {v9, v6, v5}, Lcom/badlogic/gdx/math/Polygon;->setPosition(FF)V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v9

    invoke-virtual {v9, v10, v10}, Lcom/badlogic/gdx/math/Polygon;->setOrigin(FF)V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/math/Polygon;->setRotation(F)V

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v9

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v9, v9, v11

    add-float v9, v9, v33

    invoke-static {v4, v9}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->b(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;F)F

    const/4 v9, 0x0

    invoke-static {v4, v9}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->e(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;F)F

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->f(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v11

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v12

    mul-float v12, v12, v35

    add-float v12, v12, v36

    invoke-virtual {v11, v9, v12}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v11

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v9

    const/high16 v12, 0x42700000    # 60.0f

    mul-float v9, v9, v12

    add-float v9, v9, v34

    const/high16 v12, 0x43340000    # 180.0f

    add-float/2addr v9, v12

    add-float/2addr v9, v1

    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->u:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->g(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->h(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v4, v3}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->i(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;Lcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput v14, v2, v25

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput v15, v2, v26

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput v7, v2, v27

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    const/4 v3, 0x0

    aput v3, v2, v28

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput v3, v2, v29

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput v3, v2, v30

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput v3, v2, v31

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput p9, v2, v32

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v2

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Polygon;->setVertices([F)V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput v20, v2, v25

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput v22, v2, v26

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput v19, v2, v27

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput v17, v2, v28

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput p6, v2, v29

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput v17, v2, v30

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput p6, v2, v31

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F

    move-result-object v2

    aput v23, v2, v32

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/math/Polygon;->setPosition(FF)V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v2

    invoke-virtual {v2, v10, v10}, Lcom/badlogic/gdx/math/Polygon;->setOrigin(FF)V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Polygon;->setRotation(F)V

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    add-float v2, v2, v33

    invoke-static {v4, v2}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->b(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;F)F

    const/4 v2, 0x0

    invoke-static {v4, v2}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->e(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;F)F

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->f(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v5

    mul-float v5, v5, v35

    add-float v5, v5, v36

    invoke-virtual {v3, v2, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v3

    const/high16 v5, 0x42700000    # 60.0f

    mul-float v3, v3, v5

    add-float v3, v3, v34

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v3, v5

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public addXpOrbParticle(FIIII)V
    .locals 10

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    const/4 v4, 0x4

    if-le p1, v4, :cond_2

    div-int/lit8 p1, p1, 0x2

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float v1, v1, v5

    add-int/2addr v3, v0

    const/4 v5, 0x7

    if-ne v3, v5, :cond_1

    if-le p1, v4, :cond_2

    const/4 p1, 0x4

    :cond_2
    :goto_0
    if-ge v2, p1, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ModifierManager;->F:Lcom/prineside/tdi2/managers/ModifierManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ModifierManager$Factories;->BALANCE:Lcom/prineside/tdi2/modifiers/BalanceModifier$BalanceModifierFactory;

    iget-object v4, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier$BalanceModifierFactory;->orbTexture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v3, p0

    move v5, v1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/prineside/tdi2/systems/ParticleSystem;->addOrbParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FIIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(IFF)Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->y:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    sget-object v3, Lcom/prineside/tdi2/systems/ParticleSystem;->J:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2, v3, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->y:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setUseIntegerPositions(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->y:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->z:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    int-to-double v3, p1

    invoke-static {v3, v4, v0}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {v2, p1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    :goto_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getX()F

    move-result p1

    neg-float p1, p1

    add-float/2addr p1, p2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getY()F

    move-result p2

    neg-float p2, p2

    add-float/2addr p2, p3

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->translate(FF)V

    return-object v2
.end method

.method public final c(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/utils/DelayedRemovalArray;F)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;",
            ">;F)V"
        }
    .end annotation

    iget v0, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;

    aget-object v1, v1, v0

    sget-object v2, Lcom/prineside/tdi2/systems/ParticleSystem;->K:[F

    invoke-virtual {v1, p1, v2, p3}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;[FF)V

    invoke-static {v1}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->d(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)F

    move-result v2

    invoke-static {v1}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->a(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->u:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_2
    return-void
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v1, "Particles count"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DebugManager;->unregisterValue(Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v1, "Limited particles added/skipped"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DebugManager;->unregisterValue(Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v1, "Particles remove queue"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DebugManager;->unregisterValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->t:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->v:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->y:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->z:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem;->A:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameOver()Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v13, p2

    goto :goto_0

    :cond_0
    move/from16 v13, p3

    :goto_0
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/16 v14, 0x303

    const/16 v15, 0x302

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual {v12, v15, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, v12, v1, v13}, Lcom/prineside/tdi2/systems/ParticleSystem;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/utils/DelayedRemovalArray;F)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual {v12, v15, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :cond_1
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v1, v2

    :goto_1
    const/16 v3, 0x23

    const/high16 v16, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    if-ltz v1, :cond_4

    iget-object v4, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->reset()V

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem;->freeParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_3

    mul-float v3, p2, v16

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->update(F)V

    goto :goto_2

    :cond_3
    mul-float v3, v13, v16

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->update(F)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->b:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v1, v2

    :goto_3
    if-ltz v1, :cond_7

    iget-object v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->b:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->reset()V

    invoke-static {v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->freeParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_6

    mul-float v4, p2, v16

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->update(F)V

    goto :goto_4

    :cond_6
    mul-float v4, v13, v16

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->update(F)V

    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    :goto_5
    iget-object v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v10, 0x3f800000    # 1.0f

    if-ge v1, v3, :cond_9

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;

    aget-object v2, v2, v1

    sget-object v3, Lcom/prineside/tdi2/systems/ParticleSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v2, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->f:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget-object v5, v2, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->e:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    const/high16 v5, 0x43c00000    # 384.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v2, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->d:Lcom/badlogic/gdx/math/Vector2;

    neg-float v5, v13

    mul-float v5, v5, v10

    invoke-virtual {v4, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->mulAdd(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v2, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v3, v13}, Lcom/badlogic/gdx/math/Vector2;->mulAdd(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, v2, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->e:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v2, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v4, v13}, Lcom/badlogic/gdx/math/Vector2;->mulAdd(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, v2, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->e:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v2, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->f:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    iget-object v3, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->t:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v17, 0x3fc00000    # 1.5f

    if-ge v1, v3, :cond_b

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;

    aget-object v2, v2, v1

    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    iget v4, v2, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->c:F

    div-float v4, v4, v17

    sub-float v4, v10, v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result v3

    iget v4, v2, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->b:F

    mul-float v3, v3, v4

    iget-object v4, v2, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v3, v3, v13

    add-float/2addr v5, v3

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v2, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->c:F

    add-float/2addr v3, v13

    iput v3, v2, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->c:F

    cmpl-float v3, v3, v17

    if-ltz v3, :cond_a

    iget-object v3, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->v:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    :goto_7
    iget-object v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_d

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;

    aget-object v2, v2, v1

    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    iget v4, v2, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->d:F

    div-float v4, v4, v17

    sub-float v4, v10, v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result v3

    iget v4, v2, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->c:F

    mul-float v3, v3, v4

    iget-object v4, v2, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v3, v3, v13

    sub-float/2addr v5, v3

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v2, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->d:F

    add-float/2addr v3, v13

    iput v3, v2, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->d:F

    cmpl-float v3, v3, v17

    if-ltz v3, :cond_c

    iget-object v3, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->w:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    :goto_8
    iget-object v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const v18, 0x3e2e147b    # 0.17f

    if-ge v1, v3, :cond_f

    iget-object v3, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;

    aget-object v3, v3, v1

    iget v4, v3, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->time:F

    add-float/2addr v4, v13

    iput v4, v3, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->time:F

    cmpl-float v4, v4, v18

    if-ltz v4, :cond_e

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    iget-object v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->x:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/DebugManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v2, "Particles count"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->a:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_10
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/DebugManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v2, "Limited particles added/skipped"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->C:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->D:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_11
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_12

    iget-object v3, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    aget-object v3, v3, v2

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_12
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->B:F

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v3, v13, v2

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->B:F

    const/4 v9, 0x0

    cmpg-float v3, v1, v9

    if-gez v3, :cond_13

    add-float/2addr v1, v2

    iput v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->B:F

    :cond_13
    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne v1, v2, :cond_14

    const v1, 0x3e8f5c29    # 0.28f

    invoke-virtual {v12, v10, v10, v10, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :cond_14
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v8, 0x0

    :goto_a
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v2, :cond_16

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;

    aget-object v1, v1, v8

    iget-object v2, v1, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v4, v1, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3, v2, v5, v4}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    iget-object v4, v1, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v6, v1, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v5, v4, v7, v6}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v4

    div-float/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/StrictMath;->min(FF)F

    move-result v2

    cmpl-float v3, v2, v10

    if-lez v3, :cond_15

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_15
    move/from16 v19, v2

    :goto_b
    invoke-static {v1}, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->a(Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    iget-object v3, v1, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v1, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->b:F

    mul-float v1, v7, v16

    sub-float/2addr v4, v1

    iget v1, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v3, v7, v16

    sub-float v5, v1, v3

    mul-float v6, v7, v16

    mul-float v20, v7, v16

    iget v3, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->B:F

    move-object/from16 v1, p1

    move/from16 v21, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v20

    move/from16 v20, v7

    move/from16 v22, v8

    move/from16 v8, v20

    const/4 v14, 0x0

    move/from16 v9, v19

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v10, v19

    const/4 v14, 0x0

    move/from16 v11, v21

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    add-int/lit8 v8, v22, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/16 v14, 0x303

    const/16 v15, 0x302

    goto :goto_a

    :cond_16
    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v1, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->isFlyingCoinsEnabled()Z

    move-result v1

    const v7, 0x3e99999a    # 0.3f

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v11, 0x0

    :goto_c
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v2, :cond_18

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;

    aget-object v8, v1, v11

    iget v1, v8, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->c:F

    sub-float v2, v17, v1

    cmpg-float v2, v2, v7

    if-gez v2, :cond_17

    sub-float v1, v17, v1

    div-float v10, v1, v7

    goto :goto_d

    :cond_17
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_d
    invoke-virtual {v12, v15, v15, v15, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->A:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, v8, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x42080000    # 34.0f

    sub-float/2addr v3, v4

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v4, 0x41400000    # 12.0f

    sub-float v4, v1, v4

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget v1, v8, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->d:I

    iget-object v2, v8, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v4, 0x40e00000    # 7.0f

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v3, v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->b(IFF)Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v1

    invoke-virtual {v1, v12, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_18
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_19
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v11, 0x0

    :goto_e
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v2, :cond_1b

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;

    aget-object v1, v1, v11

    iget v2, v1, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->time:F

    sub-float v2, v18, v2

    div-float v2, v2, v18

    sget-object v3, Lcom/prineside/tdi2/systems/ParticleSystem;->L:Lcom/badlogic/gdx/graphics/Color;

    iget-object v4, v1, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iput v2, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1a

    iget-object v4, v1, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->vertices:[F

    mul-int/lit8 v5, v3, 0x5

    add-int/lit8 v5, v5, 0x2

    aput v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1a
    iget-object v2, v1, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->vertices:[F

    const/16 v3, 0x14

    invoke-virtual {v12, v2, v1, v14, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DAMAGE_PARTICLES_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1e

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v11, 0x0

    :goto_10
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v2, :cond_1d

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;

    aget-object v1, v1, v11

    iget v2, v1, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->d:F

    sub-float v3, v17, v2

    cmpg-float v3, v3, v7

    if-gez v3, :cond_1c

    sub-float v2, v17, v2

    div-float v10, v2, v7

    goto :goto_11

    :cond_1c
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_11
    iget-object v2, v1, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->b:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v3, v1, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, v1, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, v1, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->b:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->translate(FF)V

    iget-object v1, v1, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->b:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1, v12, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_1d
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1e
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->G:Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntFloatMap;->keys()Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    move-result-object v1

    :cond_1f
    :goto_12
    iget-boolean v2, v1, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->hasNext:Z

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->next()I

    move-result v2

    iget-object v3, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->G:Lcom/badlogic/gdx/utils/IntFloatMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v3

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1f

    sub-float/2addr v3, v13

    iget-object v5, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->G:Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-virtual {v5, v2, v3}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    goto :goto_12

    :cond_20
    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v1, :cond_21

    iget v1, v1, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    iget v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->F:I

    if-eq v1, v2, :cond_21

    iput v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->F:I

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->E:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    :cond_21
    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_22

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->b:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_24

    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    const/16 v1, 0x303

    const/16 v2, 0x302

    invoke-virtual {v12, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, v12, v1, v13}, Lcom/prineside/tdi2/systems/ParticleSystem;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/utils/DelayedRemovalArray;F)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->b:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v1, :cond_23

    iget-object v2, v0, Lcom/prineside/tdi2/systems/ParticleSystem;->b:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    aget-object v2, v2, v11

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_23
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_24
    return-void
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Particle"

    return-object v0
.end method

.method public setup()V
    .locals 0

    return-void
.end method

.method public willParticleBeSkipped()Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->state:Lcom/prineside/tdi2/systems/StateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    return v0
.end method
