.class public Lcom/prineside/tdi2/managers/TrophyManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/TrophyManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;,
        Lcom/prineside/tdi2/managers/TrophyManager$Serializer;
    }
.end annotation


# instance fields
.field public final a:[Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/TrophyType;->values:[Lcom/prineside/tdi2/enums/TrophyType;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/TrophyManager;->a:[Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/enums/TrophyType;->values:[Lcom/prineside/tdi2/enums/TrophyType;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/TrophyManager;->a:[Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    new-instance v2, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;-><init>(Lcom/prineside/tdi2/managers/TrophyManager;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/TrophyManager;->reload()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/TrophyManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/TrophyManager;->reload()V

    return-void
.end method


# virtual methods
.method public getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TrophyManager;->a:[Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getConfigs()[Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TrophyManager;->a:[Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    return-object v0
.end method

.method public final reload()V
    .locals 13

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "res/trophies.json"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    :try_start_0
    iget-object v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/prineside/tdi2/enums/TrophyType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TrophyType;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->a(Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;Z)Z

    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    const-class v7, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const-string v7, "gameValues"

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v9, v8, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v9}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v9

    new-instance v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v11

    invoke-direct {v10, v9, v11, v12}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;-><init>(Lcom/prineside/tdi2/enums/GameValueType;D)V

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-static {v5, v4, v6}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->b(Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;Lcom/prineside/tdi2/enums/TrophyType;Lcom/badlogic/gdx/utils/Array;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to load game value config \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TrophyManager"

    invoke-static {v5, v3, v4}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/TrophyManager;->a:[Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    array-length v0, v0

    if-ne v2, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->requireRecalculation()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded only "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TrophyManager;->a:[Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trophy configs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public renderPreviews(Ljava/lang/String;IF)V
    .locals 21

    move/from16 v0, p2

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v0, v3}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    new-instance v2, Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    int-to-float v0, v0

    const/high16 v4, 0x42860000    # 67.0f

    invoke-direct {v2, v4, v0, v0}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;-><init>(FFF)V

    iget-object v0, v2, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    const v4, 0x3ea3d70a    # 0.32f

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Camera;->lookAt(FFF)V

    const v4, 0x3c23d70a    # 0.01f

    iput v4, v2, Lcom/badlogic/gdx/graphics/Camera;->near:F

    const/high16 v4, 0x43960000    # 300.0f

    iput v4, v2, Lcom/badlogic/gdx/graphics/Camera;->far:F

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->update()V

    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/Environment;-><init>()V

    new-instance v12, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    const v8, 0x3f19999a    # 0.6f

    const v9, 0x3f19999a    # 0.6f

    const v10, 0x3f19999a    # 0.6f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    new-instance v13, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-direct {v13}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;-><init>()V

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x40000000    # 2.0f

    invoke-virtual/range {v13 .. v20}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(FFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    sget-object v5, Lcom/prineside/tdi2/enums/TrophyType;->values:[Lcom/prineside/tdi2/enums/TrophyType;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_0

    aget-object v9, v5, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".png"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "t-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13}, Lcom/prineside/tdi2/managers/AssetManager;->getSceneModel()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v14

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v13, v12

    move-object v15, v9

    invoke-direct/range {v13 .. v18}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;ZZZ)V

    invoke-virtual {v12, v9}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v9

    iget-object v13, v9, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v0, v0, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v13, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v14, -0x3d4c0000    # -90.0f

    invoke-virtual {v9, v13, v14}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    iget-object v9, v12, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v13, v0, v0, v0}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v14, Lcom/badlogic/gdx/math/Vector3;

    move/from16 v15, p3

    invoke-direct {v14, v15, v15, v15}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v9, v13, v14}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslationAndScaling(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->begin()V

    sget-object v9, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v13, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v14, v13, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v13, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v13, v13, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-interface {v9, v14, v3, v13, v0}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v9, 0x4100

    invoke-interface {v3, v9}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/RenderingManager;->modelBatch:Lcom/badlogic/gdx/graphics/g3d/ModelBatch;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->begin(Lcom/badlogic/gdx/graphics/Camera;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/RenderingManager;->modelBatch:Lcom/badlogic/gdx/graphics/g3d/ModelBatch;

    invoke-virtual {v3, v12, v4}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/RenderingManager;->modelBatch:Lcom/badlogic/gdx/graphics/g3d/ModelBatch;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->end()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getHeight()I

    move-result v9

    const/4 v12, 0x1

    invoke-static {v7, v7, v3, v9, v12}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixels(IIIIZ)[B

    move-result-object v3

    new-instance v9, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getWidth()I

    move-result v13

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getHeight()I

    move-result v14

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v9, v13, v14, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v13, v3

    invoke-static {v3, v7, v0, v13}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([BILjava/nio/Buffer;I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v10}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->end()V

    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->dispose()V

    const-string v0, "TrophyManager"

    const-string v1, "trophies rendered"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/TrophyManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/TrophyManager$1;-><init>(Lcom/prineside/tdi2/managers/TrophyManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    return-void
.end method

.method public test()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TrophyManager;->a:[Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->getTitle()Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
