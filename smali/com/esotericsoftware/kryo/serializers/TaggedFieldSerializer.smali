.class public Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;,
        Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public h:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

.field public i:Lcom/esotericsoftware/kryo/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/IntMap<",
            "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;)V

    iput-object p3, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->j:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public getTaggedFieldSerializerConfig()Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->j:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    return-object v0
.end method

.method public initializeCachedFields()V
    .locals 9

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->f:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->b:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->a:Ljava/lang/reflect/Field;

    const-class v5, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring field without tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "kryo"

    invoke-static {v5, v4}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    aget-object v4, v0, v3

    invoke-super {p0, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->f:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->b:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Lcom/esotericsoftware/kryo/util/IntMap;

    array-length v4, v0

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4}, Lcom/esotericsoftware/kryo/util/IntMap;-><init>(I)V

    iput-object v3, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->i:Lcom/esotericsoftware/kryo/util/IntMap;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    iget-object v6, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->a:Ljava/lang/reflect/Field;

    const-class v7, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    invoke-interface {v7}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;->value()I

    move-result v7

    iget-object v8, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->i:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v8, v7}, Lcom/esotericsoftware/kryo/util/IntMap;->containsKey(I)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->i:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v8, v7, v5}, Lcom/esotericsoftware/kryo/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    const-class v8, Ljava/lang/Deprecated;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iput v7, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->l:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    aput-object v6, v3, v2

    const/4 v2, 0x2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Duplicate tag %d on fields: %s and %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->h:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "#"

    const-string v5, "Unable to read unknown tag "

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    add-int/lit8 v8, v0, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->pushTypeVariables()I

    move-result v9

    invoke-virtual/range {p0 .. p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->j:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    iget-boolean v11, v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->u:Z

    iget-boolean v12, v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->t:Z

    if-eqz v11, :cond_1

    new-instance v7, Lcom/esotericsoftware/kryo/io/InputChunked;

    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->j:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    iget v0, v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->v:I

    invoke-direct {v7, v3, v0}, Lcom/esotericsoftware/kryo/io/InputChunked;-><init>(Ljava/io/InputStream;I)V

    move-object v13, v7

    goto :goto_0

    :cond_1
    move-object v13, v7

    move-object v7, v3

    :goto_0
    iget-object v14, v1, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->i:Lcom/esotericsoftware/kryo/util/IntMap;

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v8, :cond_11

    move/from16 v16, v8

    invoke-virtual {v3, v6}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v8

    invoke-virtual {v14, v8}, Lcom/esotericsoftware/kryo/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    const-string v3, " ("

    move-object/from16 v17, v14

    const-string v14, ")"

    move/from16 v18, v9

    const-string v9, "kryo"

    if-eqz v12, :cond_b

    :try_start_0
    invoke-virtual {v2, v7}, Lcom/esotericsoftware/kryo/Kryo;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_3

    if-eqz v11, :cond_2

    invoke-virtual {v13}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    :cond_2
    move-object v3, v10

    move/from16 v19, v12

    move/from16 v20, v15

    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_3
    move/from16 v19, v12

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v12

    if-nez v6, :cond_8

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    move/from16 v20, v15

    const-string v15, " data, type: "

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v10

    const-string v10, "Read unknown tag "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object/from16 v21, v10

    :goto_3
    :try_start_1
    invoke-virtual {v2, v7, v12}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v10, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v11, :cond_7

    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_5

    invoke-static {v9, v0, v10}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    if-eqz v11, :cond_6

    invoke-virtual {v13}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    :cond_6
    move-object/from16 v3, v21

    goto :goto_2

    :cond_7
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0, v10}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    move-object/from16 v21, v10

    move/from16 v20, v15

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setCanBeNull(Z)V

    invoke-virtual {v6, v12}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setValueClass(Ljava/lang/Class;)V

    invoke-virtual {v6, v10}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->a(Z)V

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v21, v10

    move/from16 v19, v12

    move/from16 v20, v15

    const/4 v10, 0x0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " data (unknown type). ("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v11, :cond_a

    sget-boolean v6, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v6, :cond_9

    invoke-static {v9, v0, v3}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    invoke-virtual {v13}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    goto :goto_5

    :cond_a
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_b
    move-object/from16 v21, v10

    move/from16 v19, v12

    move/from16 v20, v15

    const/4 v10, 0x0

    if-nez v6, :cond_e

    if-eqz v11, :cond_d

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip unknown field tag: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v13}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    :goto_5
    move-object/from16 v3, v21

    goto :goto_7

    :cond_d
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown field tag: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_6
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_f

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v0

    const-string v3, "Read"

    invoke-virtual {v1, v3, v6, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V

    :cond_f
    move-object/from16 v3, v21

    invoke-virtual {v6, v7, v3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V

    if-eqz v11, :cond_10

    invoke-virtual {v13}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    :cond_10
    :goto_7
    add-int/lit8 v15, v20, 0x1

    move-object v10, v3

    move/from16 v8, v16

    move-object/from16 v14, v17

    move/from16 v9, v18

    move/from16 v12, v19

    const/4 v6, 0x1

    move-object/from16 v3, p2

    goto/16 :goto_1

    :cond_11
    move v6, v9

    move-object v3, v10

    invoke-virtual {v1, v6}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->popTypeVariables(I)V

    return-object v3
.end method

.method public removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->initializeCachedFields()V

    return-void
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->initializeCachedFields()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Output;",
            "TT;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->pushTypeVariables()I

    move-result v4

    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->h:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v6, v5

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v1, v6, v7}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    invoke-virtual/range {p0 .. p3}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->j:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    iget-boolean v8, v6, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->u:Z

    iget-boolean v6, v6, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->t:Z

    if-eqz v8, :cond_1

    new-instance v10, Lcom/esotericsoftware/kryo/io/OutputChunked;

    iget-object v11, v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->j:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    iget v11, v11, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->v:I

    invoke-direct {v10, v1, v11}, Lcom/esotericsoftware/kryo/io/OutputChunked;-><init>(Ljava/io/OutputStream;I)V

    move-object v11, v10

    goto :goto_0

    :cond_1
    move-object v11, v1

    const/4 v10, 0x0

    :goto_0
    array-length v12, v5

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_7

    aget-object v14, v5, v13

    sget-boolean v15, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v15, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v15

    const-string v9, "Write"

    invoke-virtual {v0, v9, v14, v15}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V

    :cond_2
    iget v9, v14, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->l:I

    invoke-virtual {v1, v9, v7}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    if-eqz v6, :cond_5

    :try_start_0
    iget-object v9, v14, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v15, p1

    goto :goto_3

    :catch_0
    nop

    move-object/from16 v15, p1

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v15, v11, v9}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    if-nez v9, :cond_4

    if-eqz v8, :cond_6

    invoke-virtual {v10}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunk()V

    goto :goto_5

    :cond_4
    invoke-virtual {v14, v3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setCanBeNull(Z)V

    invoke-virtual {v14, v9}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setValueClass(Ljava/lang/Class;)V

    invoke-virtual {v14, v3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->a(Z)V

    goto :goto_4

    :cond_5
    move-object/from16 v15, p1

    :goto_4
    invoke-virtual {v14, v11, v2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    if-eqz v8, :cond_6

    invoke-virtual {v10}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunk()V

    :cond_6
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->popTypeVariables(I)V

    return-void
.end method

.method public writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Output;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method
