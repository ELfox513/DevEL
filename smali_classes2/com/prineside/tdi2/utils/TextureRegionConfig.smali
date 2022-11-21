.class public Lcom/prineside/tdi2/utils/TextureRegionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/badlogic/gdx/graphics/Color;

.field public static final c:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public a:Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public color:Lcom/badlogic/gdx/graphics/Color;

.field public height:F

.field public originX:F

.field public originY:F

.field public textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->b:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->c:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->x:F

    iput p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->y:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    iput p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originX:F

    iput p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originY:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    div-float/2addr p2, p4

    iput p2, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->x:F

    div-float/2addr p3, p4

    iput p3, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->y:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p4

    iput p2, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p4

    iput p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    iget p2, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p2, p2, p3

    iput p2, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originX:F

    mul-float p1, p1, p3

    iput p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originY:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput p2, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->x:F

    iput p3, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->y:F

    iput p6, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    iput p7, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    iput p4, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originX:F

    iput p5, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originY:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, p8

    mul-float p2, p2, p1

    iput p2, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->x:F

    mul-float p3, p3, p1

    iput p3, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->y:F

    mul-float p6, p6, p1

    iput p6, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    mul-float p7, p7, p1

    iput p7, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    mul-float p4, p4, p1

    iput p4, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originX:F

    mul-float p5, p5, p1

    iput p5, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originY:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p9}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p8}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/utils/TextureRegionConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, p1, Lcom/prineside/tdi2/utils/TextureRegionConfig;->x:F

    iput v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->x:F

    iget v1, p1, Lcom/prineside/tdi2/utils/TextureRegionConfig;->y:F

    iput v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->y:F

    iget v1, p1, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    iput v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    iget v1, p1, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    iput v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    iget v1, p1, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originX:F

    iput v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originX:F

    iget v1, p1, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originY:F

    iput v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originY:F

    iget-object p1, p1, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public static drawBatch(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "FFF)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static drawBatch(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "FFFFF)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v2, v1, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static drawCache(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteCache;",
            "FFF)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawCache(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/utils/TextureRegionConfig;
    .locals 10

    const-string v0, "alias"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v3, "y"

    invoke-virtual {p0, v3, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const-string v4, "w"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v6, "h"

    invoke-virtual {p0, v6, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v6

    const-string v7, "ox"

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {p0, v7, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v7

    const-string v9, "oy"

    invoke-virtual {p0, v9, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v8

    const-string v9, "rs"

    invoke-virtual {p0, v9, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v9

    cmpl-float v2, v9, v2

    if-eqz v2, :cond_0

    div-float/2addr v5, v9

    mul-float v1, v1, v5

    mul-float v3, v3, v5

    mul-float v4, v4, v5

    mul-float v6, v6, v5

    mul-float v7, v7, v5

    mul-float v8, v8, v5

    :cond_0
    const/4 v2, 0x0

    const-string v5, "c"

    invoke-virtual {p0, v5, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    :cond_1
    new-instance p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object v0, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iput v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->x:F

    iput v3, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->y:F

    iput v7, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originX:F

    iput v8, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originY:F

    iput v4, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    iput v6, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    return-object p0
.end method


# virtual methods
.method public createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    iget-object v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->x:F

    mul-float v1, v1, p3

    add-float/2addr p1, v1

    iget v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->y:F

    mul-float v1, v1, p3

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    mul-float p1, p1, p3

    iget p2, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    mul-float p2, p2, p3

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public createSprite(F)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    mul-float v1, v1, p1

    iget v2, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    mul-float p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    return-object v0
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFF)V
    .locals 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFF)V

    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFF)V
    .locals 14

    move-object v0, p0

    move-object v12, p1

    sget-object v13, Lcom/prineside/tdi2/utils/TextureRegionConfig;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/TextureRegionConfig;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v1, 0x0

    cmpl-float v1, p6, v1

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p5, v1

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->x:F

    mul-float v1, v1, p4

    add-float v3, p2, v1

    iget v1, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->y:F

    mul-float v1, v1, p4

    add-float v4, p3, v1

    iget v1, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    mul-float v5, v1, p4

    iget v1, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    mul-float v6, v1, p4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->x:F

    mul-float v1, v1, p4

    add-float v3, p2, v1

    iget v1, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->y:F

    mul-float v1, v1, p4

    add-float v4, p3, v1

    iget v1, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originX:F

    mul-float v5, v1, p4

    iget v1, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->originY:F

    mul-float v6, v1, p4

    iget v1, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    mul-float v7, v1, p4

    iget v1, v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    mul-float v8, v1, p4

    move-object v1, p1

    move/from16 v9, p5

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :goto_0
    invoke-virtual {p1, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawCache(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFF)V
    .locals 6

    iget-object v1, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->x:F

    mul-float v0, v0, p4

    add-float v2, p2, v0

    iget p2, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->y:F

    mul-float p2, p2, p4

    add-float v3, p3, p2

    iget p2, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    mul-float v4, p2, p4

    iget p2, p0, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    mul-float v5, p2, p4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method
