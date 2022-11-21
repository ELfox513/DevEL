.class public Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;
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
.field public final h:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;)V

    iput-object p3, p0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->h:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    return-void
.end method


# virtual methods
.method public final a(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 16

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const-string v2, "kryo"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read fields for class: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->d:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    sget-boolean v8, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read field name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-array v3, v4, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    iget-object v7, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->f:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v7, v7, Lcom/esotericsoftware/kryo/serializers/CachedFields;->b:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    const/16 v8, 0x20

    const-string v9, "Unknown field will be skipped: "

    if-ge v4, v8, :cond_6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_b

    aget-object v8, v5, v1

    array-length v10, v7

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_4

    aget-object v12, v7, v11

    iget-object v12, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->b:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    aget-object v8, v7, v11

    aput-object v8, v3, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    sget-boolean v10, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    array-length v8, v7

    sub-int/2addr v8, v1

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v4, :cond_b

    aget-object v11, v5, v10

    move v13, v8

    const/4 v12, 0x0

    :goto_5
    if-gt v12, v13, :cond_9

    add-int v14, v12, v13

    ushr-int/2addr v14, v1

    aget-object v15, v7, v14

    iget-object v15, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->b:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_7

    add-int/lit8 v13, v14, -0x1

    goto :goto_5

    :cond_7
    if-lez v15, :cond_8

    add-int/lit8 v12, v14, 0x1

    goto :goto_5

    :cond_8
    aget-object v11, v7, v14

    aput-object v11, v3, v10

    goto :goto_6

    :cond_9
    sget-boolean v12, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v12, :cond_a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/Kryo;->getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public getCompatibleFieldSerializerConfig()Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->h:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 19
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

    const-string v3, "#"

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->pushTypeVariables()I

    move-result v4

    invoke-virtual/range {p0 .. p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/Kryo;->getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p2}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->a(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v0

    :cond_0
    move-object v6, v0

    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->h:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    iget-boolean v7, v0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;->u:Z

    iget-boolean v8, v0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;->t:Z

    const/4 v0, 0x0

    if-eqz v7, :cond_1

    new-instance v0, Lcom/esotericsoftware/kryo/io/InputChunked;

    iget-object v9, v1, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->h:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    iget v9, v9, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;->v:I

    move-object/from16 v10, p2

    invoke-direct {v0, v10, v9}, Lcom/esotericsoftware/kryo/io/InputChunked;-><init>(Ljava/io/InputStream;I)V

    move-object v9, v0

    move-object v11, v9

    goto :goto_0

    :cond_1
    move-object/from16 v10, p2

    move-object v11, v0

    move-object v9, v10

    :goto_0
    array-length v12, v6

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v12, :cond_14

    aget-object v15, v6, v14

    const-string v13, ")"

    move-object/from16 v16, v6

    const-string v6, "kryo"

    if-eqz v8, :cond_e

    :try_start_0
    invoke-virtual {v2, v9}, Lcom/esotericsoftware/kryo/Kryo;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_4

    if-eqz v7, :cond_2

    invoke-virtual {v11}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    :cond_2
    move/from16 v17, v8

    move/from16 v18, v12

    :cond_3
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_4
    move/from16 v17, v8

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v8

    const-string v10, " ("

    if-nez v15, :cond_8

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v12

    const-string v12, "Read unknown data, type: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v12

    invoke-static {v12}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move/from16 v18, v12

    :goto_3
    :try_start_1
    invoke-virtual {v2, v9, v8}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read unknown data, type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_7

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_6

    invoke-static {v6, v0, v12}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    if-eqz v7, :cond_3

    invoke-virtual {v11}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    goto :goto_2

    :cond_7
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0, v12}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    move/from16 v18, v12

    iget-object v0, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->c:Ljava/lang/Class;

    if-eqz v0, :cond_b

    iget-object v0, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/esotericsoftware/kryo/util/Util;->isAssignableTo(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read type is incompatible with the field type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->c:Ljava/lang/Class;

    invoke-static {v2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_a

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_9

    invoke-static {v6, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v11}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    goto/16 :goto_2

    :cond_a
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setCanBeNull(Z)V

    invoke-virtual {v15, v8}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setValueClass(Ljava/lang/Class;)V

    invoke-virtual {v15, v2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->a(Z)V

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move/from16 v17, v8

    move/from16 v18, v12

    const/4 v2, 0x0

    move-object v8, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read unknown data (unknown type). ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_d

    sget-boolean v10, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v10, :cond_c

    invoke-static {v6, v0, v8}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    invoke-virtual {v11}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    goto :goto_6

    :cond_d
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0, v8}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_e
    move/from16 v17, v8

    move/from16 v18, v12

    const/4 v2, 0x0

    if-nez v15, :cond_11

    if-eqz v7, :cond_10

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_f

    const-string v0, "Skip unknown field."

    invoke-static {v6, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v11}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    goto :goto_6

    :cond_10
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown field. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_5
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v0

    const-string v6, "Read"

    invoke-virtual {v1, v6, v15, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V

    :cond_12
    invoke-virtual {v15, v9, v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V

    if-eqz v7, :cond_13

    invoke-virtual {v11}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    :cond_13
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move-object/from16 v6, v16

    move/from16 v8, v17

    move/from16 v12, v18

    goto/16 :goto_1

    :cond_14
    invoke-virtual {v1, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->popTypeVariables(I)V

    return-object v5
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

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->pushTypeVariables()I

    move-result v3

    iget-object v4, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->f:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v4, v4, Lcom/esotericsoftware/kryo/serializers/CachedFields;->b:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/Kryo;->getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const-string v9, "kryo"

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Write fields for class: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->d:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v5, v0, v7}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v5, v4

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    sget-boolean v10, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Write field name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v4, v6

    iget-object v11, v11, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v11

    invoke-static {v11}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    aget-object v10, v4, v6

    iget-object v10, v10, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->b:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->h:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    iget-boolean v6, v5, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;->u:Z

    iget-boolean v5, v5, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;->t:Z

    if-eqz v6, :cond_3

    new-instance v9, Lcom/esotericsoftware/kryo/io/OutputChunked;

    iget-object v10, v0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->h:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    iget v10, v10, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;->v:I

    invoke-direct {v9, v1, v10}, Lcom/esotericsoftware/kryo/io/OutputChunked;-><init>(Ljava/io/OutputStream;I)V

    move-object v10, v9

    goto :goto_1

    :cond_3
    move-object v10, v1

    move-object v9, v7

    :goto_1
    array-length v11, v4

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_9

    aget-object v13, v4, v12

    sget-boolean v14, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v14, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v14

    const-string v15, "Write"

    invoke-virtual {v0, v15, v13, v14}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V

    :cond_4
    if-eqz v5, :cond_7

    if-eqz v2, :cond_5

    :try_start_0
    iget-object v14, v13, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    move-object/from16 v15, p1

    move-object v14, v7

    goto :goto_4

    :cond_5
    move-object v14, v7

    :goto_3
    move-object/from16 v15, p1

    :goto_4
    invoke-virtual {v15, v10, v14}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    if-nez v14, :cond_6

    if-eqz v6, :cond_8

    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunk()V

    goto :goto_6

    :cond_6
    invoke-virtual {v13, v8}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setCanBeNull(Z)V

    invoke-virtual {v13, v14}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setValueClass(Ljava/lang/Class;)V

    invoke-virtual {v13, v8}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->a(Z)V

    goto :goto_5

    :cond_7
    move-object/from16 v15, p1

    :goto_5
    invoke-virtual {v13, v10, v2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    if-eqz v6, :cond_8

    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunk()V

    :cond_8
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->popTypeVariables(I)V

    return-void
.end method
