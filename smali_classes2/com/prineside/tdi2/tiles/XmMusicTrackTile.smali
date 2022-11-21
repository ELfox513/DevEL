.class public Lcom/prineside/tdi2/tiles/XmMusicTrackTile;
.super Lcom/prineside/tdi2/Tile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;
    }
.end annotation


# static fields
.field public static final x:[Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public r:J
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public t:[Lcom/badlogic/gdx/graphics/Color;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public u:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public v:Ljava/lang/String;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public w:Ljava/lang/String;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->x:[Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    invoke-static {}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->generateNewId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->setId(J)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/XmMusicTrackTile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;-><init>()V

    return-void
.end method

.method public static generateNewId()J
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    sget-object v2, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/prineside/tdi2/ibxm/Module;)V
    .locals 6

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->u:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->s:Ljava/lang/String;

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->u:Z

    return-void

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/managers/MusicManager;->getModule(Ljava/lang/String;)Lcom/prineside/tdi2/ibxm/Module;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->u:Z

    return-void

    :cond_2
    :goto_0
    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->v:Ljava/lang/String;

    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->w:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->u:Z

    :cond_5
    :goto_3
    return-void
.end method

.method public drawExtras(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 8

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getIdColors()[Lcom/badlogic/gdx/graphics/Color;

    move-result-object p6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    aget-object v1, p6, v0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager$Factories;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;

    invoke-static {v1}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;->b(Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    aget-object v3, v1, v0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object p6, p6, v1

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getTitleCached()Ljava/lang/String;

    move-result-object p6

    if-nez p6, :cond_1

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager$Factories;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;

    invoke-static {p6}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;->c(Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 p6, 0x3e800000    # 0.25f

    mul-float v0, p4, p6

    add-float v2, p2, v0

    mul-float p6, p6, p5

    add-float v3, p3, p6

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float v4, p4, p2

    mul-float v5, p5, p2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_1
    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {p6}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    const p6, 0x3ea3d70a    # 0.32f

    mul-float v0, p4, p6

    add-float v2, p2, v0

    mul-float p6, p6, p5

    add-float v3, p3, p6

    const p6, 0x3eb851ec    # 0.36f

    mul-float v4, p4, p6

    mul-float v5, p5, p6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object p6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager$Factories;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;

    invoke-static {p6}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;->d(Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :goto_1
    return-void
.end method

.method public drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 6

    invoke-super/range {p0 .. p6}, Lcom/prineside/tdi2/Tile;->drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager$Factories;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;

    invoke-static {p6}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;->a(Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public fillInventoryWithInfo(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;F)V
    .locals 8

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, v0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v0, v0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public from(Lcom/prineside/tdi2/Tile;)V
    .locals 2

    check-cast p1, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {p1}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->setId(J)V

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->s:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->setTrack(Ljava/lang/String;)V

    return-void
.end method

.method public generateSeedSalt()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public generateUiIcon(F)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 6

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/TileManager$Factories;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;

    invoke-static {v3}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;->a(Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getIdColors()[Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TileManager$Factories;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;

    invoke-static {v4}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;->b(Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->s:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TileManager$Factories;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;

    invoke-static {v4}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;->c(Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v4, v4, p1

    invoke-virtual {v1, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float p1, p1, v4

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    aget-object p1, v2, v3

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "blank"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v4, 0x3eb851ec    # 0.36f

    mul-float v4, v4, p1

    invoke-virtual {v1, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v4, 0x3ea3d70a    # 0.32f

    mul-float v4, v4, p1

    invoke-virtual {v1, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager$Factories;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;

    invoke-static {v2}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;->d(Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_1
    return-object v0
.end method

.method public getDescriptionCached()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->c(Lcom/prineside/tdi2/ibxm/Module;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->r:J

    return-wide v0
.end method

.method public getIdColors()[Lcom/badlogic/gdx/graphics/Color;
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->t:[Lcom/badlogic/gdx/graphics/Color;

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->r:J

    invoke-virtual {v0, v6, v7}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    const/4 v0, 0x5

    new-array v6, v0, [Lcom/badlogic/gdx/graphics/Color;

    iput-object v6, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->t:[Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v6, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->t:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->x:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    array-length v9, v7

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v8

    aget-object v7, v7, v8

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/RandomXS128;->setState(JJ)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->t:[Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getInventorySubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SOUNDS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getModule()Lcom/prineside/tdi2/ibxm/Module;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/MusicManager;->getModule(Ljava/lang/String;)Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->c(Lcom/prineside/tdi2/ibxm/Module;)V

    return-object v0
.end method

.method public getPrestigeScore()D
    .locals 2

    const-wide v0, 0x3fb999999999999aL    # 0.1

    return-wide v0
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->KIND:Lcom/prineside/tdi2/enums/ItemSortingType;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x7530

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    return p1
.end method

.method public getTitleCached()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->c(Lcom/prineside/tdi2/ibxm/Module;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackBase64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->s:Ljava/lang/String;

    return-object v0
.end method

.method public isRoadType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 3

    const-class v0, Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->r:J

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->v:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->w:Ljava/lang/String;

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Tile;)Z
    .locals 6

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile;->sameAs(Lcom/prineside/tdi2/Tile;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->r:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->t:[Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setTrack(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->s:Ljava/lang/String;

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "track"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", has track: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->s:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "false"

    goto :goto_0

    :cond_0
    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 3

    const-class v0, Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-wide v1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->r:J

    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->v:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->w:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
