.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;,
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;,
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->b:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    return-void
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    :goto_0
    const/16 v3, 0x2c

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    return v0

    :cond_3
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v1, v3, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getPages()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->a:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getRegions()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->b:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Lcom/badlogic/gdx/utils/ObjectMap;

    const/16 v3, 0xf

    const v4, 0x3f7d70a4    # 0.99f

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$1;

    invoke-direct {v3, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$1;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v5, "size"

    invoke-virtual {v2, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$2;

    invoke-direct {v3, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$2;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v6, "format"

    invoke-virtual {v2, v6, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$3;

    invoke-direct {v3, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$3;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v6, "filter"

    invoke-virtual {v2, v6, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$4;

    invoke-direct {v3, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$4;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v6, "repeat"

    invoke-virtual {v2, v6, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$5;

    invoke-direct {v3, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$5;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v6, "pma"

    invoke-virtual {v2, v6, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v6, v3, [Z

    const/4 v7, 0x0

    aput-boolean v7, v6, v7

    new-instance v8, Lcom/badlogic/gdx/utils/ObjectMap;

    const/16 v9, 0x7f

    invoke-direct {v8, v9, v4}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$6;

    invoke-direct {v4, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$6;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v9, "xy"

    invoke-virtual {v8, v9, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$7;

    invoke-direct {v4, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$7;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    invoke-virtual {v8, v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$8;

    invoke-direct {v4, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$8;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v5, "bounds"

    invoke-virtual {v8, v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$9;

    invoke-direct {v4, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$9;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v5, "offset"

    invoke-virtual {v8, v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$10;

    invoke-direct {v4, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$10;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v5, "orig"

    invoke-virtual {v8, v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$11;

    invoke-direct {v4, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$11;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v5, "offsets"

    invoke-virtual {v8, v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$12;

    invoke-direct {v4, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$12;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v5, "rotate"

    invoke-virtual {v8, v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$13;

    invoke-direct {v4, v1, v0, v6}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$13;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;[Z)V

    const-string v5, "index"

    invoke-virtual {v8, v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v4, v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v9, 0x0

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    :goto_3
    if-nez v5, :cond_5

    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    aget-boolean v0, v6, v7

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->b:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$14;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$14;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v10, v9

    goto :goto_3

    :cond_6
    if-nez v10, :cond_9

    new-instance v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    invoke-direct {v10}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;-><init>()V

    move-object/from16 v13, p2

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    iput-object v5, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->textureFile:Lcom/badlogic/gdx/files/FileHandle;

    :cond_7
    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8

    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v14, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    aget-object v5, v0, v7

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;

    if-eqz v5, :cond_7

    invoke-interface {v5, v10}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;->parse(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    move-object/from16 v13, p2

    new-instance v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    invoke-direct {v14}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;-><init>()V

    iput-object v10, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->page:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->name:Ljava/lang/String;

    if-eqz p3, :cond_a

    iput-boolean v3, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->flip:Z

    :cond_a
    :goto_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_d

    iget v15, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalWidth:I

    if-nez v15, :cond_b

    iget v15, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalHeight:I

    if-nez v15, :cond_b

    iget v15, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->width:I

    iput v15, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalWidth:I

    iget v15, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->height:I

    iput v15, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalHeight:I

    :cond_b
    if-eqz v11, :cond_c

    iget v15, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v15, :cond_c

    const-class v15, Ljava/lang/String;

    invoke-virtual {v11, v15}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    iput-object v15, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->names:[Ljava/lang/String;

    const-class v15, [I

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[I

    iput-object v15, v14, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->values:[[I

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_c
    iget-object v15, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v15, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_d
    aget-object v5, v0, v7

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;

    if-eqz v5, :cond_e

    invoke-interface {v5, v14}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;->parse(Ljava/lang/Object;)V

    goto :goto_8

    :cond_e
    if-nez v11, :cond_f

    new-instance v11, Lcom/badlogic/gdx/utils/Array;

    const/16 v5, 0x8

    invoke-direct {v11, v5}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    new-instance v12, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v12, v5}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    :cond_f
    aget-object v5, v0, v7

    invoke-virtual {v11, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-array v5, v15, [I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v15, :cond_10

    add-int/lit8 v16, v3, 0x1

    :try_start_2
    aget-object v17, v0, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    aput v17, v5, v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catch_0
    nop

    :goto_7
    move/from16 v3, v16

    goto :goto_6

    :cond_10
    :try_start_3
    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_8
    const/4 v3, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading texture atlas file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_9
    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method
