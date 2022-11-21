.class Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;
    }
.end annotation


# instance fields
.field public materials:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;",
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

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    array-length v3, p1

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v3
.end method

.method public getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;-><init>()V

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x9

    if-ne v3, v6, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    aget-object v3, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x23

    if-ne v3, v6, :cond_4

    goto :goto_0

    :cond_4
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "newmtl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->build()Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    array-length v3, v2

    if-le v3, v5, :cond_5

    aget-object v2, v2, v5

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->a:Ljava/lang/String;

    const/16 v3, 0x2e

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->a:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v2, "default"

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->a:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->reset()V

    goto :goto_0

    :cond_6
    const-string v4, "ka"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->a([Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->b:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_7
    const-string v4, "kd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->a([Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->c:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_0

    :cond_8
    const-string v4, "ks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->a([Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->d:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_0

    :cond_9
    const-string v4, "tr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_2

    :cond_a
    const-string v4, "ns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->f:F

    goto/16 :goto_0

    :cond_b
    const-string v4, "map_d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    aget-object v2, v2, v5

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v4, "map_ka"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    aget-object v2, v2, v5

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v4, "map_kd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    aget-object v2, v2, v5

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->i:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string v4, "map_ks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    aget-object v2, v2, v5

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->k:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const-string v4, "map_ns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    aget-object v2, v2, v5

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->j:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    :goto_2
    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->e:F

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->build()Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :catch_0
    :cond_12
    :goto_3
    return-void
.end method
