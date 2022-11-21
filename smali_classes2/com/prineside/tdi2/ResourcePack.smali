.class public Lcom/prineside/tdi2/ResourcePack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;,
        Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;,
        Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;
    }
.end annotation


# static fields
.field public static final B:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCE_PACKS_DIR:Ljava/lang/String; = "resourcepacks"


# instance fields
.field public final A:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field public a:Z

.field public b:Z

.field public d:Ljava/lang/String;

.field public fontResolution:F

.field public k:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final p:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

.field public r:Z

.field public s:[Lcom/prineside/StaticSound;

.field public t:Lcom/prineside/tdi2/ibxm/Module;

.field public u:Z

.field public final v:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field public version:I

.field public final w:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;",
            ">;>;"
        }
    .end annotation
.end field

.field public final x:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;",
            ">;"
        }
    .end annotation
.end field

.field public y:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/ResourcePack$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/ResourcePack$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ResourcePack;->B:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcom/prineside/tdi2/ResourcePack;->version:I

    const/high16 v3, 0x42000000    # 32.0f

    iput v3, v1, Lcom/prineside/tdi2/ResourcePack;->fontResolution:F

    new-instance v3, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/ResourcePack;->p:Lcom/badlogic/gdx/utils/IntMap;

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->values:[Lcom/prineside/tdi2/enums/StaticSoundType;

    array-length v3, v3

    new-array v3, v3, [Lcom/prineside/StaticSound;

    iput-object v3, v1, Lcom/prineside/tdi2/ResourcePack;->s:[Lcom/prineside/StaticSound;

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/ResourcePack;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/ResourcePack;->w:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    const-class v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v3, v1, Lcom/prineside/tdi2/ResourcePack;->x:Lcom/badlogic/gdx/utils/Array;

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/ResourcePack;->A:Lcom/badlogic/gdx/utils/ObjectMap;

    move/from16 v3, p2

    iput-boolean v3, v1, Lcom/prineside/tdi2/ResourcePack;->a:Z

    iput-object v0, v1, Lcom/prineside/tdi2/ResourcePack;->name:Ljava/lang/String;

    const-string v3, "[^-_.a-z0-9]+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resourcepacks/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/pack.json"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v1, Lcom/prineside/tdi2/ResourcePack;->a:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v5, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v5, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    :goto_0
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6

    if-eqz v6, :cond_28

    new-instance v3, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    const-string v5, "version"

    invoke-virtual {v3, v5, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v1, Lcom/prineside/tdi2/ResourcePack;->version:I

    const-string v5, "atlases"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "\'"

    const-string v8, "/"

    const-string v9, "ResourcePack"

    if-eqz v6, :cond_19

    iput-boolean v2, v1, Lcom/prineside/tdi2/ResourcePack;->u:Z

    invoke-static {}, Lcom/prineside/tdi2/Config;->getMaxTextureSize()I

    move-result v6

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/utils/JsonValue;

    const/16 v14, 0x100

    const-string v15, "textureSize"

    invoke-virtual {v13, v15, v14}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "skipping variant ("

    const-string v2, ")"

    if-le v14, v6, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v13, v15}, Lcom/badlogic/gdx/utils/JsonValue;->toJson(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ") - texture size not supported ("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v16

    const-wide v18, 0x7fffffffffffffffL

    cmp-long v10, v16, v18

    if-eqz v10, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v10, v16, v18

    if-gtz v10, :cond_3

    :cond_2
    const-wide/32 v16, 0x40000000

    :cond_3
    move-object v14, v5

    move v10, v6

    move-wide/from16 v5, v16

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->gc()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    move/from16 v18, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    sub-long v19, v0, v10

    move-object/from16 v21, v3

    move-object/from16 v16, v4

    sub-long v3, v5, v19

    move-object/from16 v22, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v14

    const-string v14, "memory: f "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " t "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " m "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " (assume "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ramRequired"

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v5, v0

    cmp-long v1, v5, v3

    if-lez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/utils/JsonValue;->toJson(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") - not enough ram ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v4, v16

    move-object/from16 v11, v17

    move/from16 v6, v18

    move-object/from16 v3, v21

    move-object/from16 v12, v22

    move-object/from16 v5, v23

    goto/16 :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "atlas"

    invoke-virtual {v13, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p0

    iget-boolean v3, v4, Lcom/prineside/tdi2/ResourcePack;->a:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    :goto_4
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    const/4 v10, 0x0

    invoke-direct {v5, v3, v6, v10}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->getPages()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    const/4 v6, 0x0

    :goto_5
    iget v10, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v10, :cond_6

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    new-instance v11, Lcom/badlogic/gdx/graphics/Texture;

    iget-object v12, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->textureFile:Lcom/badlogic/gdx/files/FileHandle;

    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iget-boolean v14, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->useMipMaps:Z

    invoke-direct {v11, v12, v13, v14}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    iput-object v11, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    sub-long/2addr v10, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocated "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v10, v19

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "kb to load the texture"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v12

    sub-long/2addr v12, v10

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    if-ge v10, v6, :cond_e

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v15, v4, Lcom/prineside/tdi2/ResourcePack;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    move-object/from16 v16, v5

    iget-object v5, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    if-nez v5, :cond_7

    iget-object v5, v4, Lcom/prineside/tdi2/ResourcePack;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v15, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v5, v15}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    if-eqz v5, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v19, v6

    const/4 v5, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    iget-object v5, v4, Lcom/prineside/tdi2/ResourcePack;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v15, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    move/from16 v19, v6

    new-instance v6, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-direct {v6, v14, v3}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v5, v15, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    :goto_8
    iget v6, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    const/4 v15, -0x1

    if-eq v6, v15, :cond_b

    iget-object v6, v4, Lcom/prineside/tdi2/ResourcePack;->w:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v15, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v6, v15}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v4, Lcom/prineside/tdi2/ResourcePack;->w:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v15, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    move/from16 v20, v5

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v6, v15, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_9
    move/from16 v20, v5

    :goto_9
    iget-object v5, v4, Lcom/prineside/tdi2/ResourcePack;->w:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v6, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v5, :cond_a

    iget-object v5, v4, Lcom/prineside/tdi2/ResourcePack;->w:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v6, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/Array;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-static {v5}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->a(Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v5

    if-ne v5, v3, :cond_c

    :cond_a
    iget-object v5, v4, Lcom/prineside/tdi2/ResourcePack;->w:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v6, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/Array;

    new-instance v6, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-direct {v6, v14, v3}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/16 v20, 0x1

    goto :goto_a

    :cond_b
    move/from16 v20, v5

    :cond_c
    :goto_a
    if-eqz v20, :cond_d

    add-int/lit8 v11, v11, 0x1

    :cond_d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v19

    goto/16 :goto_6

    :cond_e
    if-eqz v11, :cond_f

    iget-object v5, v4, Lcom/prineside/tdi2/ResourcePack;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "using atlas \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' with "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " regions"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v3, v5, v5}, Lcom/badlogic/gdx/graphics/GLTexture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "atlas texture size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->dispose()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipping atlas \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', no regions used"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    sub-long/2addr v5, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocated "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v12

    const-wide/16 v10, 0x400

    div-long/2addr v5, v10

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "kb to load the atlas"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    new-instance v1, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Texture atlas not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    move-object v2, v0

    move-object/from16 v21, v3

    move-object/from16 v23, v5

    move/from16 v18, v6

    move-object/from16 v17, v11

    move-object/from16 v24, v4

    move-object v4, v1

    move-object/from16 v1, v24

    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_13

    move-object v0, v2

    move/from16 v6, v18

    move-object/from16 v3, v21

    move-object/from16 v5, v23

    const/4 v2, 0x1

    move-object/from16 v24, v4

    move-object v4, v1

    move-object/from16 v1, v24

    goto/16 :goto_1

    :cond_13
    new-instance v0, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load any variant of atlas: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    move-object/from16 v11, v17

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/utils/JsonValue;->toJson(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object v4, v1

    new-instance v0, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    const-string v1, "\'atlases.atlas\' config value must be an array"

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v2, v0

    move-object/from16 v21, v3

    move-object/from16 v24, v4

    move-object v4, v1

    move-object/from16 v1, v24

    iget-object v0, v4, Lcom/prineside/tdi2/ResourcePack;->w:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    sget-object v5, Lcom/prineside/tdi2/ResourcePack;->B:Ljava/util/Comparator;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    goto :goto_d

    :cond_16
    const-string v0, "blank"

    invoke-virtual {v4, v0}, Lcom/prineside/tdi2/ResourcePack;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, v4, Lcom/prineside/tdi2/ResourcePack;->y:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v0

    iget-object v3, v4, Lcom/prineside/tdi2/ResourcePack;->y:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, v4, Lcom/prineside/tdi2/ResourcePack;->y:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    iget-object v5, v4, Lcom/prineside/tdi2/ResourcePack;->y:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, v4, Lcom/prineside/tdi2/ResourcePack;->y:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v6

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float v11, v0, v10

    add-float/2addr v6, v11

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    iget-object v5, v4, Lcom/prineside/tdi2/ResourcePack;->y:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v6

    const/high16 v11, 0x3f400000    # 0.75f

    mul-float v0, v0, v11

    add-float/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU2(F)V

    iget-object v0, v4, Lcom/prineside/tdi2/ResourcePack;->y:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v5

    mul-float v10, v10, v3

    add-float/2addr v5, v10

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    iget-object v0, v4, Lcom/prineside/tdi2/ResourcePack;->y:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v5

    mul-float v3, v3, v11

    add-float/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loaded "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/prineside/tdi2/ResourcePack;->x:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " texture atlases from resource pack \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_18
    move-object v4, v1

    new-instance v0, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    const-string v1, "\'atlases\' config value must be an array"

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object v2, v0

    move-object/from16 v21, v3

    move-object/from16 v24, v4

    move-object v4, v1

    move-object/from16 v1, v24

    :goto_e
    const-string v0, "font"

    move-object/from16 v3, v21

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "file"

    if-eqz v5, :cond_1f

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/prineside/tdi2/ResourcePack;->b:Z

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v5, "textures"

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/prineside/tdi2/ResourcePack;->d:Ljava/lang/String;

    iget-boolean v11, v4, Lcom/prineside/tdi2/ResourcePack;->a:Z

    if-eqz v11, :cond_1a

    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v11, v10}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    goto :goto_f

    :cond_1a
    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v11, v10}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    :goto_f
    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v10

    if-eqz v10, :cond_1d

    new-instance v10, Lcom/badlogic/gdx/utils/Array;

    const-class v11, Ljava/lang/String;

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v10, v4, Lcom/prineside/tdi2/ResourcePack;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v11, v4, Lcom/prineside/tdi2/ResourcePack;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/ResourcePack;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v11

    if-eqz v11, :cond_1b

    goto :goto_10

    :cond_1b
    new-instance v0, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource pack \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' has no texture region \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for font"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const-string v5, "resolution"

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v5, "resolution"

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v0

    iput v0, v4, Lcom/prineside/tdi2/ResourcePack;->fontResolution:F

    goto :goto_11

    :cond_1d
    new-instance v0, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Font file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/prineside/tdi2/ResourcePack;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    const-string v1, "\'font\' config value must contain fields \'file\' and \'texture\'"

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_11
    const-string v0, "soundTracks"

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/utils/JsonValue;

    :try_start_0
    iget-object v11, v10, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v11}, Lcom/prineside/tdi2/enums/StaticSoundType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StaticSoundType;

    move-result-object v11

    sget-object v12, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v13, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v12

    iget-object v13, v4, Lcom/prineside/tdi2/ResourcePack;->s:[Lcom/prineside/StaticSound;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    new-instance v15, Lcom/prineside/StaticSound;

    move-object/from16 v16, v0

    const-string v0, "duration"

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v15, v11, v12, v0}, Lcom/prineside/StaticSound;-><init>(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/badlogic/gdx/audio/Sound;I)V

    aput-object v15, v13, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    goto :goto_12

    :catch_0
    move-exception v0

    new-instance v1, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to load soundTrack \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_20
    const-string v0, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/prineside/tdi2/enums/StaticSoundType;->values:[Lcom/prineside/tdi2/enums/StaticSoundType;

    array-length v6, v0

    if-ne v5, v6, :cond_21

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/prineside/tdi2/ResourcePack;->r:Z

    const-string v0, "loaded all sound tracks"

    invoke-static {v9, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_21
    new-instance v1, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loaded only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sound tracks"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    :goto_13
    const-string v5, "menuXmSoundTrack"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/ibxm/Module;->fromZipInputStream(Ljava/io/InputStream;)Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    iput-object v0, v4, Lcom/prineside/tdi2/ResourcePack;->t:Lcom/prineside/tdi2/ibxm/Module;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_14

    :catch_1
    move-exception v0

    new-instance v1, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to load menu xm music \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_23
    :goto_14
    const-string v0, "colors"

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/prineside/tdi2/ResourcePack;->z:Z

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_15
    if-eqz v0, :cond_27

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x6

    const/high16 v11, 0x437f0000    # 255.0f

    const/16 v12, 0x10

    if-ne v6, v10, :cond_24

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v11

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v6

    const/4 v6, 0x0

    goto :goto_16

    :cond_24
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v13, 0x8

    if-ne v6, v13, :cond_25

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v11

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    const/16 v13, 0x8

    invoke-virtual {v5, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    move/from16 v24, v8

    move v8, v5

    move/from16 v5, v24

    :goto_16
    iget-object v10, v4, Lcom/prineside/tdi2/ResourcePack;->A:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v11, v3, v9, v5, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v10, v2, v11}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto/16 :goto_15

    :cond_25
    new-instance v0, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown color format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown color format: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    return-void

    :cond_28
    move-object v4, v1

    new-instance v0, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource pack config file not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    move-object v4, v1

    new-instance v0, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;

    const-string v1, "Illegal characters in pack name, allowed characters are -_.a-z0-9"

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ResourcePack$ResourcePackLoadingException;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :goto_17
    throw v0

    :goto_18
    goto :goto_17
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ResourcePack;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->dispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ResourcePack;->y:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    return-object v0
.end method

.method public getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ResourcePack;->z:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ResourcePack;->A:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method

.method public getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/ResourcePack;->getFont(IZ)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object p1

    return-object p1
.end method

.method public getFont(IZ)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;
    .locals 6

    iget-boolean v0, p0, Lcom/prineside/tdi2/ResourcePack;->b:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    add-int/lit16 v0, p1, 0x2710

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ResourcePack;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ResourcePack;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    return-object p1

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/ResourcePack;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/ResourcePack;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    iget-boolean v3, p0, Lcom/prineside/tdi2/ResourcePack;->a:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v4, p0, Lcom/prineside/tdi2/ResourcePack;->d:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v4, p0, Lcom/prineside/tdi2/ResourcePack;->d:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    :goto_2
    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/utils/Array;Z)V

    int-to-float v1, p1

    iget v3, p0, Lcom/prineside/tdi2/ResourcePack;->fontResolution:F

    div-float/2addr v1, v3

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/managers/AssetManager;->getFontScaleMultiplier(I)F

    move-result v3

    mul-float v1, v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=== creating new font, size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", resolution: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/prineside/tdi2/ResourcePack;->fontResolution:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", multiplier: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, p1}, Lcom/prineside/tdi2/managers/AssetManager;->getFontScaleMultiplier(I)F

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", scale: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ResourcePack"

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    iput-boolean p2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    const-string p1, "0123456789"

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setFixedWidthGlyphs(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget p2, p0, Lcom/prineside/tdi2/ResourcePack;->fontResolution:F

    float-to-int p2, p2

    invoke-virtual {p1, v2, p2}, Lcom/prineside/tdi2/managers/AssetManager;->addRegionCharsToFont(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ResourcePack;->q:Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    if-nez p1, :cond_5

    iput-object v2, p0, Lcom/prineside/tdi2/ResourcePack;->q:Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    array-length p1, p1

    if-ge v4, p1, :cond_6

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget-object p2, p0, Lcom/prineside/tdi2/ResourcePack;->q:Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p2

    iget-object p2, p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    aget-object p2, p2, v4

    aput-object p2, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/prineside/tdi2/ResourcePack;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v2, Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;->resourcePack:Lcom/prineside/tdi2/ResourcePack;

    return-object v2
.end method

.method public getLoadedAtlases()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/ResourcePack;->x:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getMenuXmSoundTrack()Lcom/prineside/tdi2/ibxm/Module;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ResourcePack;->t:Lcom/prineside/tdi2/ibxm/Module;

    return-object v0
.end method

.method public getSound(Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/StaticSound;
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ResourcePack;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ResourcePack;->s:[Lcom/prineside/StaticSound;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;
    .locals 9

    iget-boolean v0, p0, Lcom/prineside/tdi2/ResourcePack;->u:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ResourcePack;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    if-nez v0, :cond_7

    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/prineside/tdi2/ResourcePack;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v2, v4, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    if-eqz v2, :cond_6

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v1, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    const/4 v4, 0x1

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    const/4 v5, -0x1

    goto :goto_1

    :sswitch_0
    const-string v5, "rotate-180"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    const-string v8, "flip-xy"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :sswitch_2
    const-string v5, "flip-y"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "flip-x"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :cond_5
    :goto_1
    const-string v6, "ResourcePack"

    packed-switch v5, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "region modifier \""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is invalid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :pswitch_0
    invoke-virtual {v1, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->flip(ZZ)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->flip(ZZ)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->flip(ZZ)V

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stored modified region: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ResourcePack;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    return-object v1

    :cond_7
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4bce60e8 -> :sswitch_3
        -0x4bce60e7 -> :sswitch_2
        -0x2dfdbb9f -> :sswitch_1
        -0x4c41489 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTextureRegionSets()Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/ResourcePack;->w:Lcom/badlogic/gdx/utils/ObjectMap;

    return-object v0
.end method

.method public getTextureRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 2
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

    iget-boolean v0, p0, Lcom/prineside/tdi2/ResourcePack;->u:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ResourcePack;->w:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    return-object p1
.end method

.method public getTextureRegions()Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/ResourcePack;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    return-object v0
.end method

.method public hasSounds()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ResourcePack;->r:Z

    return v0
.end method
