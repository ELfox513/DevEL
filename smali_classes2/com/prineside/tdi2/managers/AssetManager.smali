.class public Lcom/prineside/tdi2/managers/AssetManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/AssetManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;,
        Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;,
        Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;,
        Lcom/prineside/tdi2/managers/AssetManager$Serializer;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ResourcePack;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public q:Lcom/badlogic/gdx/graphics/g3d/Model;

.field public r:Lcom/badlogic/gdx/graphics/g3d/Material;

.field public s:Lcom/badlogic/gdx/graphics/g3d/Material;

.field public t:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public u:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public v:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public w:Lcom/badlogic/gdx/graphics/Texture;

.field public final x:[Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;

.field public final y:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/AssetManager;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 25

    move-object/from16 v1, p0

    const-string v2, "default"

    invoke-direct/range {p0 .. p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;-><init>()V

    iput-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/prineside/tdi2/ResourcePack;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v4, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v4, v1, Lcom/prineside/tdi2/managers/AssetManager;->d:Lcom/badlogic/gdx/utils/IntMap;

    new-instance v4, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v4, v1, Lcom/prineside/tdi2/managers/AssetManager;->y:Lcom/badlogic/gdx/utils/IntMap;

    new-instance v4, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v4, v1, Lcom/prineside/tdi2/managers/AssetManager;->z:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    :try_start_0
    new-instance v3, Lcom/prineside/tdi2/ResourcePack;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/prineside/tdi2/ResourcePack;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException; {:try_start_0 .. :try_end_0} :catch_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "resourcepacks"

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    const/4 v5, 0x0

    const-string v6, "AssetManager"

    if-nez v3, :cond_0

    const-string v0, "External resource packs dir not found"

    invoke-static {v6, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const-string v3, "External resource packs dir found"

    invoke-static {v6, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v7, v3

    if-ge v0, v7, :cond_3

    add-int/lit8 v7, v0, 0x1

    move v8, v7

    :goto_1
    array-length v9, v3

    if-ge v8, v9, :cond_2

    aget-object v9, v3, v0

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v3, v8

    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_1

    aget-object v9, v3, v0

    aget-object v10, v3, v8

    aput-object v10, v3, v0

    aput-object v9, v3, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_0

    :cond_3
    array-length v7, v3

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v9, v3, v8

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    :try_start_1
    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v10, Lcom/prineside/tdi2/ResourcePack;

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Lcom/prineside/tdi2/ResourcePack;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loaded resource pack: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to load resource pack: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/prineside/tdi2/ResourcePack;

    const/16 v0, 0xb8

    const/4 v0, 0x1

    const/16 v3, 0xb8

    const/4 v7, 0x0

    :goto_5
    iget-object v8, v1, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v9, :cond_8

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/ResourcePack;

    invoke-virtual {v8}, Lcom/prineside/tdi2/ResourcePack;->getLoadedAtlases()Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    iget v9, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v9, :cond_7

    mul-int/lit8 v3, v3, 0x1f

    iget-object v7, v8, Lcom/prineside/tdi2/ResourcePack;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/prineside/tdi2/utils/PMath;->hash(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v3, v7

    mul-int/lit8 v3, v3, 0x1f

    iget v7, v8, Lcom/prineside/tdi2/ResourcePack;->version:I

    invoke-static {v7}, Lcom/prineside/tdi2/utils/PMath;->hash(I)I

    move-result v7

    add-int/2addr v3, v7

    const/4 v7, 0x1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    if-eqz v7, :cond_15

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v9

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v7, "cache/atlas-merged.dat"

    invoke-interface {v0, v7}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v11, "cache/atlas-merged-hash.txt"

    invoke-interface {v0, v11}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    :try_start_2
    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_9

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v0, "loaded merged atlas from cache"

    invoke-static {v6, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v0, 0x0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v13, v0

    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cached atlas hash mismatch: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", need "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const/4 v0, 0x1

    const/4 v12, 0x0

    goto :goto_8

    :cond_a
    const-string v0, "cached atlas not found"

    invoke-static {v6, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v13, v0

    const/4 v0, 0x1

    const/4 v12, 0x0

    :goto_7
    const-string v14, "failed to load cached merged atlas"

    invoke-static {v6, v14, v13}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    const-string v13, "ms"

    const v14, 0x3a83126f    # 0.001f

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack;->getLoadedAtlases()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v12

    invoke-interface {v12}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v12

    invoke-interface {v12}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    :cond_b
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v12

    invoke-interface {v12}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v12

    sget-object v15, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    sget-object v15, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/graphics/Pixmap;->setFilter(Lcom/badlogic/gdx/graphics/Pixmap$Filter;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack;->getLoadedAtlases()Lcom/badlogic/gdx/utils/Array;

    move-result-object v15

    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v15

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loaded old main pixmap at "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v15

    sub-long v4, v15, v9

    long-to-float v4, v4

    mul-float v4, v4, v14

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_9
    iget-object v4, v1, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v5, :cond_f

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/ResourcePack;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ResourcePack;->getLoadedAtlases()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Lcom/prineside/tdi2/ResourcePack;->getLoadedAtlases()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectSet;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v15

    invoke-interface {v15}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v15

    if-nez v15, :cond_c

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v15

    invoke-interface {v15}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    :cond_c
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v5

    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v5

    sget-object v15, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v5, v15}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    invoke-virtual {v4}, Lcom/prineside/tdi2/ResourcePack;->getTextureRegions()Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v8, v15, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v8, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v15, v15, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v2, v15}, Lcom/prineside/tdi2/ResourcePack;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v15

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v17

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v18

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v19

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v20

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v21

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v22

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v23

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v24

    move-object v15, v12

    move-object/from16 v16, v5

    invoke-virtual/range {v15 .. v24}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    goto :goto_a

    :cond_d
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_f
    invoke-static {v7, v12}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    const/4 v4, 0x0

    invoke-virtual {v11, v0, v4, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache saved at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v3

    sub-long/2addr v3, v9

    long-to-float v3, v3

    mul-float v3, v3, v14

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-eqz v12, :cond_14

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v4, 0x0

    invoke-direct {v0, v12, v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v3, v3}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack;->getLoadedAtlases()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack;->getTextureRegions()Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v5, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_b

    :cond_11
    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack;->getTextureRegionSets()Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_c

    :cond_13
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_d

    :cond_14
    const/4 v4, 0x0

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "merged resource pack atlasses in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v2

    sub-long/2addr v2, v9

    long-to-float v2, v2

    mul-float v2, v2, v14

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_e
    iget-object v2, v1, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_16

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ResourcePack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_15
    const/4 v4, 0x0

    :cond_16
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    iget-object v5, v1, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v7, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v7, :cond_19

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ResourcePack;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/prineside/tdi2/ResourcePack;->getTextureRegions()Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v5

    :cond_17
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_19
    new-array v2, v3, [Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;

    iput-object v2, v1, Lcom/prineside/tdi2/managers/AssetManager;->x:[Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;

    const v2, 0xe000

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;-><init>(Lcom/prineside/tdi2/managers/AssetManager$1;)V

    iget-object v8, v1, Lcom/prineside/tdi2/managers/AssetManager;->x:[Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;

    add-int/lit8 v9, v5, 0x1

    aput-object v4, v8, v5

    add-int/lit8 v5, v2, 0x1

    int-to-char v5, v5

    iput-char v2, v4, Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;->a:C

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v4, Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->d(Ljava/lang/CharSequence;)I

    move-result v2

    iget-object v8, v1, Lcom/prineside/tdi2/managers/AssetManager;->y:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "already has region hash: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    iget-object v3, v1, Lcom/prineside/tdi2/managers/AssetManager;->y:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v5

    move v5, v9

    goto :goto_11

    :cond_1b
    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "blank"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->blank:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "tile-outline-active"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->tileOutlineActive:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "tile-outline-hover"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->tileOutlineHover:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "gate-outline-vertical-active"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->gateOutlineVerticalActive:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "gate-outline-vertical-hover"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->gateOutlineVerticalHover:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "gate-outline-horizontal-active"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->gateOutlineHorizontalActive:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "gate-outline-horizontal-hover"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->gateOutlineHorizontalHover:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "crosshair-small"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->crosshairSmall:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "muzzle-flash-1"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlash1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "muzzle-flash-2"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlash2:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "muzzle-flash-compensator-1"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlashCompensator1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "muzzle-flash-compensator-2"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlashCompensator2:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "muzzle-flash-small"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlashSmall:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "flying-paper-1-1"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "flying-paper-1-2"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_2:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "flying-paper-1-3"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_3:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "flying-paper-1-4"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_4:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "flying-paper-5-1"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper5_1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "flying-paper-20-1"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper20_1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "flying-paper-100-1"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper100_1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "small-circle"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->smallCircle:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "particle-pentagon"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->particlePentagon:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "icon-smoke-bomb"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->iconSmokeBomb:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    const-string v2, "enemy-dialog"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->enemyDialog:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    return-void

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load default resource pack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :goto_12
    throw v2

    :goto_13
    goto :goto_12
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/AssetManager;Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/AssetManager;->f(Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;[B)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/AssetManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AssetManager;->c()V

    return-void
.end method

.method public static clearCacheDir()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "cache"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->deleteDirectory()Z

    const-string v0, "AssetManager"

    const-string v1, "cache dir removed"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static localOrInternalFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addRegionCharsToFont(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;I)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->x:[Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const/4 v5, 0x2

    new-instance v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    iget-char v7, v4, Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;->a:C

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    iput v2, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    iput v2, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    iget-object v7, v4, Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v7

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget-object v7, v4, Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v7

    iget-char v8, v4, Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;->a:C

    invoke-virtual {v7, v8, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v7

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v7, v6, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyphRegion(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput p2, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iput p2, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v4, v4, 0x4

    iput v4, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    iput v4, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    iput v5, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    const/16 v1, 0x15

    const/16 v2, 0x18

    const/16 v3, 0x1e

    const/16 v4, 0x24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(IIII)V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, v3, Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;->resourcePack:Lcom/prineside/tdi2/ResourcePack;

    iget v5, v5, Lcom/prineside/tdi2/ResourcePack;->fontResolution:F

    div-float/2addr v4, v5

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getFontScaleMultiplier(I)F

    move-result v5

    mul-float v4, v4, v5

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=== fixing font scale of size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", changing font scale from "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AssetManager"

    invoke-static {v5, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/CharSequence;)I
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->e(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ResourcePack;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ResourcePack;->dispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;II)I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    if-ge p2, p3, :cond_0

    const/16 v1, 0x1f

    mul-int v1, v1, v0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final f(Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;[B)V
    .locals 13

    array-length v0, p2

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;->src:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssetManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v2, 0x0

    array-length v3, p2

    invoke-direct {v0, p2, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>([BII)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v12

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v2

    :cond_0
    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    if-ne v2, v4, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v6, v0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v4, "texture is not pot"

    invoke-static {v1, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v11

    move-object v2, v1

    move-object v3, v0

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    move-object v6, v1

    :goto_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/AssetManager$1;

    move-object v4, v1

    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move v9, v12

    invoke-direct/range {v4 .. v9}, Lcom/prineside/tdi2/managers/AssetManager$1;-><init>(Lcom/prineside/tdi2/managers/AssetManager;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;II)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public getBannerTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->w:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "res/get-banner.png"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->w:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->w:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ResourcePack;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/ResourcePack;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank texture was not found in any of loaded resource packs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getBlendedMaterial()Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AssetManager;->getSceneModel()Lcom/badlogic/gdx/graphics/g3d/Model;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->s:Lcom/badlogic/gdx/graphics/g3d/Material;

    return-object v0
.end method

.method public getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ResourcePack;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ResourcePack;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' was not found in any of loaded resource packs"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 4

    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-=+[]\\/?.,`:;\'\"<>| "

    const-string v1, "font-debug"

    const-string v2, "resourcepacks/default/debug.fnt"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager;->t:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-nez p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager;->t:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager;->t:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setFixedWidthGlyphs(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager;->t:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager;->u:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-nez p1, :cond_2

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager;->u:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager;->u:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setFixedWidthGlyphs(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager;->u:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object p1
.end method

.method public getDebugLabelStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    return-object p1

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(IZ)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object p1

    return-object p1
.end method

.method public getFont(IZ)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ResourcePack;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/prineside/tdi2/ResourcePack;->getFont(IZ)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font with size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was not found in any of loaded resource packs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public getFontScaleMultiplier(I)F
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isLargeFontsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x15

    if-gt p1, v0, :cond_0

    const p1, 0x3faa3d71    # 1.33f

    return p1

    :cond_0
    const/16 v0, 0x18

    if-gt p1, v0, :cond_1

    const p1, 0x3f99999a    # 1.2f

    return p1

    :cond_1
    const p1, 0x3f8ccccd    # 1.1f

    return p1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->d:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->d:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object p1

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager;->d:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getMenuXmSoundTrack()Lcom/prineside/tdi2/ibxm/Module;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ResourcePack;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/ResourcePack;->getMenuXmSoundTrack()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNormalMaterial()Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AssetManager;->getSceneModel()Lcom/badlogic/gdx/graphics/g3d/Model;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->r:Lcom/badlogic/gdx/graphics/g3d/Material;

    return-object v0
.end method

.method public getOverlayBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x171717aa

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSceneModel()Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->q:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-nez v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isThreeDeeModelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/UBJsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/UBJsonReader;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;-><init>(Lcom/badlogic/gdx/utils/BaseJsonReader;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "models/scene.g3db"

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;->loadModel(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->q:Lcom/badlogic/gdx/graphics/g3d/Model;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/AssetManager;->q:Lcom/badlogic/gdx/graphics/g3d/Model;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    const-string v4, "normal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/prineside/tdi2/managers/AssetManager;->r:Lcom/badlogic/gdx/graphics/g3d/Material;

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    const-string v4, "blended"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v2, p0, Lcom/prineside/tdi2/managers/AssetManager;->s:Lcom/badlogic/gdx/graphics/g3d/Material;

    :cond_2
    :goto_1
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->remove(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager;->r:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    invoke-direct {v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;-><init>(JI)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    :cond_4
    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager;->s:Lcom/badlogic/gdx/graphics/g3d/Material;

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    const/16 v3, 0x302

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager;->s:Lcom/badlogic/gdx/graphics/g3d/Material;

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager;->s:Lcom/badlogic/gdx/graphics/g3d/Material;

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    invoke-direct {v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;-><init>(JI)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->s:Lcom/badlogic/gdx/graphics/g3d/Material;

    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->s:Lcom/badlogic/gdx/graphics/g3d/Material;

    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->s:Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->createAmbient(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->q:Lcom/badlogic/gdx/graphics/g3d/Model;

    return-object v0
.end method

.method public getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;
    .locals 10

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    const v3, 0x3e8f5c29    # 0.28f

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e3e3eff

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v9

    invoke-interface {v9, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-object p1
.end method

.method public getSmallDebugFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->v:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "resourcepacks/default/debug.fnt"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    const-string v4, "font-debug"

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/AssetManager;->v:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    const v3, 0x3f2aacda    # 0.6667f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AssetManager;->v:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    iput-boolean v0, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->v:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setUseIntegerPositions(Z)V

    :goto_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->v:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    aget-object v3, v3, v2

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->v:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method public getSmallDebugLabelStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AssetManager;->getSmallDebugFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object v0
.end method

.method public getSound(Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/StaticSound;
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ResourcePack;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/ResourcePack;->hasSounds()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ResourcePack;->getSound(Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/StaticSound;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;Z)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    return-object p1
.end method

.method public getTextureRegion(Ljava/lang/String;Z)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ResourcePack;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ResourcePack;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Texture region \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' was not found in any of loaded resource packs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getTextureRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ResourcePack;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ResourcePack;->getTextureRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Texture region \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' was not found in any of loaded resource packs"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadWebTexture(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->loadWebTexture(Ljava/lang/String;Z)Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    move-result-object p1

    return-object p1
.end method

.method public loadWebTexture(Ljava/lang/String;Z)Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager;->z:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;-><init>()V

    iput-object p1, v0, Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;->src:Ljava/lang/String;

    const-string v1, "placeholder"

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager;->z:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache/webtxt/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/prineside/tdi2/utils/StringFormatter;->md5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez p2, :cond_1

    :try_start_0
    sget-object p2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {p2, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {p2, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0xa4cb800

    cmp-long p2, v4, v2

    if-gez p2, :cond_2

    new-instance p2, Ljava/lang/Thread;

    new-instance v2, Lcom/prineside/tdi2/managers/AssetManager$2;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/prineside/tdi2/managers/AssetManager$2;-><init>(Lcom/prineside/tdi2/managers/AssetManager;Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-static {p2}, Lcom/prineside/tdi2/Logger;->handleThreadExceptionsForgiving(Ljava/lang/Thread;)V

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v2, "GET"

    invoke-direct {p2, v2}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v3, Lcom/prineside/tdi2/managers/AssetManager$3;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/prineside/tdi2/managers/AssetManager$3;-><init>(Lcom/prineside/tdi2/managers/AssetManager;Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p2, v3}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    :goto_1
    return-object v0
.end method

.method public replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10

    sget-object v0, Lcom/prineside/tdi2/managers/AssetManager;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x3c

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_4

    :cond_0
    if-eqz v4, :cond_6

    const/16 v4, 0x40

    if-ne v5, v4, :cond_5

    add-int/lit8 v4, v2, 0x1

    move v5, v4

    :goto_1
    const/4 v6, -0x1

    if-ge v5, v0, :cond_2

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    :goto_2
    const-string v8, "<@"

    if-eq v5, v6, :cond_4

    invoke-virtual {p0, p1, v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->e(Ljava/lang/CharSequence;II)I

    move-result v4

    iget-object v6, p0, Lcom/prineside/tdi2/managers/AssetManager;->y:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;

    if-eqz v4, :cond_3

    sget-object v2, Lcom/prineside/tdi2/managers/AssetManager;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    iget-char v3, v4, Lcom/prineside/tdi2/managers/AssetManager$RegionAliasCharPair;->a:C

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v5

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/prineside/tdi2/managers/AssetManager;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/prineside/tdi2/managers/AssetManager;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_3

    :cond_5
    sget-object v4, Lcom/prineside/tdi2/managers/AssetManager;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_3

    :cond_6
    sget-object v4, Lcom/prineside/tdi2/managers/AssetManager;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_3
    const/4 v4, 0x0

    :goto_4
    add-int/2addr v2, v7

    goto :goto_0

    :cond_7
    if-nez v3, :cond_8

    return-object p1

    :cond_8
    sget-object p1, Lcom/prineside/tdi2/managers/AssetManager;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object p1
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    new-instance v1, Lcom/prineside/tdi2/managers/AssetManager$4;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/AssetManager$4;-><init>(Lcom/prineside/tdi2/managers/AssetManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->addListener(Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AssetManager;->c()V

    return-void
.end method

.method public test()V
    .locals 0

    return-void
.end method
