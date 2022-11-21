.class public Lcom/esotericsoftware/asm/ClassReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXPAND_FRAMES:I = 0x8

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field public static final SKIP_FRAMES:I = 0x4


# instance fields
.field public final a:[I

.field public final b:[B

.field public final c:[Ljava/lang/String;

.field public final d:I

.field public final header:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/esotericsoftware/asm/ClassReader;->n(Ljava/io/InputStream;Z)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ".class"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/esotericsoftware/asm/ClassReader;->n(Ljava/io/InputStream;Z)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/esotericsoftware/asm/ClassReader;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 p3, p2, 0x6

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassReader;->readShort(I)S

    move-result p3

    const/16 v0, 0x34

    if-gt p3, v0, :cond_5

    add-int/lit8 p3, p2, 0x8

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p3

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    array-length p3, p3

    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    add-int/lit8 p2, p2, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p3, :cond_4

    iget-object v3, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v4, p2, 0x1

    aput v4, v3, v2

    aget-byte v3, p1, p2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v3, v1, :cond_2

    const/16 v4, 0xf

    if-eq v3, v4, :cond_1

    const/16 v4, 0x12

    if-eq v3, v4, :cond_3

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_0

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    const/4 v5, 0x3

    goto :goto_1

    :cond_0
    const/16 v5, 0x9

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v5, v3, 0x3

    if-le v5, v0, :cond_3

    move v0, v5

    :cond_3
    :goto_1
    :pswitch_0
    add-int/2addr p2, v5

    add-int/2addr v2, v1

    goto :goto_0

    :cond_4
    iput v0, p0, Lcom/esotericsoftware/asm/ClassReader;->d:I

    iput p2, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Ljava/io/InputStream;Z)[B
    .locals 5

    if-eqz p0, :cond_7

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    array-length v3, v0

    if-ge v2, v3, :cond_1

    new-array v3, v2, [B

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object v0

    :cond_3
    add-int/2addr v2, v3

    :try_start_1
    array-length v3, v0

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v3, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    return-object v0

    :cond_5
    :try_start_2
    array-length v4, v0

    add-int/lit16 v4, v4, 0x3e8

    new-array v4, v4, [B

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v4, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v0

    move-object v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Class not found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    :goto_1
    if-lez v2, :cond_0

    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    :goto_2
    if-lez v0, :cond_3

    add-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    :goto_3
    if-lez v2, :cond_2

    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public accept(Lcom/esotericsoftware/asm/ClassVisitor;I)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {p0, p1, v0, p2}, Lcom/esotericsoftware/asm/ClassReader;->accept(Lcom/esotericsoftware/asm/ClassVisitor;[Lcom/esotericsoftware/asm/Attribute;I)V

    return-void
.end method

.method public accept(Lcom/esotericsoftware/asm/ClassVisitor;[Lcom/esotericsoftware/asm/Attribute;I)V
    .locals 35

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    iget v0, v8, Lcom/esotericsoftware/asm/ClassReader;->header:I

    iget v1, v8, Lcom/esotericsoftware/asm/ClassReader;->d:I

    new-array v11, v1, [C

    new-instance v12, Lcom/esotericsoftware/asm/Context;

    invoke-direct {v12}, Lcom/esotericsoftware/asm/Context;-><init>()V

    move-object/from16 v13, p2

    iput-object v13, v12, Lcom/esotericsoftware/asm/Context;->a:[Lcom/esotericsoftware/asm/Attribute;

    iput v10, v12, Lcom/esotericsoftware/asm/Context;->b:I

    iput-object v11, v12, Lcom/esotericsoftware/asm/Context;->c:[C

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2, v11}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2, v11}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v2, v0, 0x6

    invoke-virtual {v8, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    add-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_0

    invoke-virtual {v8, v0, v11}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/asm/ClassReader;->a()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v17, v2

    move/from16 v27, v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_1
    if-lez v17, :cond_10

    add-int/lit8 v4, v16, 0x2

    invoke-virtual {v8, v4, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SourceFile"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v16, 0x8

    invoke-virtual {v8, v3, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object/from16 v28, v6

    goto/16 :goto_7

    :cond_1
    const-string v5, "InnerClasses"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v16, 0x8

    move/from16 v25, v4

    goto :goto_2

    :cond_2
    const-string v5, "EnclosingMethod"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v4, v16, 0x8

    invoke-virtual {v8, v4, v11}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v16, 0xa

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v1, v8, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget v1, v1, v5

    invoke-virtual {v8, v1, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v21

    iget-object v1, v8, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget v1, v1, v5

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v8, v1, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object/from16 v20, v4

    goto :goto_2

    :cond_4
    const-string v5, "Signature"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v4, v16, 0x8

    invoke-virtual {v8, v4, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    :cond_5
    const-string v5, "RuntimeVisibleAnnotations"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v0, v16, 0x8

    goto :goto_2

    :cond_6
    const-string v5, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v4, v16, 0x8

    move/from16 v23, v4

    goto :goto_2

    :cond_7
    const-string v5, "Deprecated"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/high16 v4, 0x20000

    :goto_3
    or-int v18, v18, v4

    goto :goto_2

    :cond_8
    const-string v5, "Synthetic"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const v4, 0x41000

    goto :goto_3

    :cond_9
    const-string v5, "SourceDebugExtension"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    add-int/lit8 v2, v16, 0x4

    invoke-virtual {v8, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v4, v16, 0x8

    new-array v5, v2, [C

    invoke-virtual {v8, v4, v2, v5}, Lcom/esotericsoftware/asm/ClassReader;->i(II[C)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_a
    const-string v5, "RuntimeInvisibleAnnotations"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    add-int/lit8 v4, v16, 0x8

    move/from16 v22, v4

    goto/16 :goto_2

    :cond_b
    const-string v5, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    add-int/lit8 v4, v16, 0x8

    move/from16 v24, v4

    goto/16 :goto_2

    :cond_c
    const-string v5, "BootstrapMethods"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    add-int/lit8 v4, v16, 0x8

    invoke-virtual {v8, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v5, v4, [I

    add-int/lit8 v29, v16, 0xa

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v4, :cond_d

    aput v29, v5, v7

    move/from16 v31, v0

    add-int/lit8 v0, v29, 0x2

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v30, 0x1

    shl-int/lit8 v0, v0, 0x1

    add-int v29, v29, v0

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v31

    goto :goto_4

    :cond_d
    move/from16 v31, v0

    iput-object v5, v12, Lcom/esotericsoftware/asm/Context;->d:[I

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move-object v13, v3

    move-object/from16 v28, v6

    move-object/from16 v7, v26

    move/from16 v32, v31

    goto :goto_5

    :cond_e
    move/from16 v31, v0

    add-int/lit8 v5, v16, 0x8

    add-int/lit8 v0, v16, 0x4

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v7

    const/16 v29, -0x1

    const/16 v30, 0x0

    move/from16 v32, v31

    move-object/from16 v0, p0

    move-object/from16 v33, v1

    move-object/from16 v1, p2

    move-object/from16 v34, v2

    move-object v2, v4

    move-object v4, v3

    move v3, v5

    move-object v5, v4

    move v4, v7

    move-object v7, v5

    move-object v5, v11

    move-object/from16 v28, v6

    move/from16 v6, v29

    move-object v13, v7

    move-object/from16 v7, v30

    invoke-virtual/range {v0 .. v7}, Lcom/esotericsoftware/asm/ClassReader;->h([Lcom/esotericsoftware/asm/Attribute;Ljava/lang/String;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;

    move-result-object v0

    move-object/from16 v7, v26

    if-eqz v0, :cond_f

    iput-object v7, v0, Lcom/esotericsoftware/asm/Attribute;->b:Lcom/esotericsoftware/asm/Attribute;

    move-object/from16 v26, v0

    goto :goto_6

    :cond_f
    :goto_5
    move-object/from16 v26, v7

    :goto_6
    move-object v3, v13

    move/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    :goto_7
    add-int/lit8 v4, v16, 0x4

    invoke-virtual {v8, v4}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int v16, v16, v4

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v13, p2

    move-object/from16 v6, v28

    goto/16 :goto_1

    :cond_10
    move/from16 v32, v0

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move-object v13, v3

    move-object/from16 v28, v6

    move-object/from16 v7, v26

    iget-object v0, v8, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v1

    move-object/from16 v0, p1

    move/from16 v2, v18

    move-object v3, v14

    move-object/from16 v4, v19

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/esotericsoftware/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_12

    move-object/from16 v2, v34

    if-nez v13, :cond_11

    if-eqz v2, :cond_12

    :cond_11
    invoke-virtual {v9, v13, v2}, Lcom/esotericsoftware/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move-object/from16 v4, v20

    if-eqz v4, :cond_13

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v9, v4, v0, v1}, Lcom/esotericsoftware/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    move/from16 v0, v32

    if-eqz v0, :cond_14

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    :goto_8
    if-lez v1, :cond_14

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v0, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v9, v0, v3}, Lcom/esotericsoftware/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v0

    invoke-virtual {v8, v2, v11, v3, v0}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_14
    move/from16 v5, v22

    if-eqz v5, :cond_15

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v22, v5, 0x2

    move/from16 v1, v22

    :goto_9
    if-lez v0, :cond_15

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v8, v1, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3}, Lcom/esotericsoftware/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v11, v4, v1}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_15
    const/4 v3, 0x0

    move/from16 v5, v23

    if-eqz v5, :cond_16

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v23, v5, 0x2

    move/from16 v1, v23

    :goto_a
    if-lez v0, :cond_16

    invoke-virtual {v8, v12, v1}, Lcom/esotericsoftware/asm/ClassReader;->f(Lcom/esotericsoftware/asm/Context;I)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    iget v4, v12, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v5, v12, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v8, v1, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v9, v4, v5, v1, v6}, Lcom/esotericsoftware/asm/ClassVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    invoke-virtual {v8, v2, v11, v6, v1}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_16
    move/from16 v5, v24

    if-eqz v5, :cond_17

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v24, v5, 0x2

    move/from16 v1, v24

    :goto_b
    if-lez v0, :cond_17

    invoke-virtual {v8, v12, v1}, Lcom/esotericsoftware/asm/ClassReader;->f(Lcom/esotericsoftware/asm/Context;I)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    iget v4, v12, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v5, v12, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v8, v1, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v4, v5, v1, v3}, Lcom/esotericsoftware/asm/ClassVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v11, v4, v1}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_17
    :goto_c
    if-eqz v7, :cond_18

    iget-object v0, v7, Lcom/esotericsoftware/asm/Attribute;->b:Lcom/esotericsoftware/asm/Attribute;

    const/4 v1, 0x0

    iput-object v1, v7, Lcom/esotericsoftware/asm/Attribute;->b:Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {v9, v7}, Lcom/esotericsoftware/asm/ClassVisitor;->visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V

    move-object v7, v0

    goto :goto_c

    :cond_18
    move/from16 v5, v25

    if-eqz v5, :cond_19

    add-int/lit8 v25, v5, 0x2

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move/from16 v1, v25

    :goto_d
    if-lez v0, :cond_19

    invoke-virtual {v8, v1, v11}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v8, v3, v11}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v8, v4, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x6

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {v9, v2, v3, v4, v5}, Lcom/esotericsoftware/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_19
    iget v0, v8, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v7, v27, 0x2

    add-int/2addr v0, v7

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_e
    if-lez v1, :cond_1a

    invoke-virtual {v8, v9, v12, v0}, Lcom/esotericsoftware/asm/ClassReader;->e(Lcom/esotericsoftware/asm/ClassVisitor;Lcom/esotericsoftware/asm/Context;I)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_1a
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_f
    if-lez v1, :cond_1b

    invoke-virtual {v8, v9, v12, v0}, Lcom/esotericsoftware/asm/ClassReader;->p(Lcom/esotericsoftware/asm/ClassVisitor;Lcom/esotericsoftware/asm/Context;I)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public final b(IZZLcom/esotericsoftware/asm/Context;)I
    .locals 11

    iget-object v6, p4, Lcom/esotericsoftware/asm/Context;->c:[C

    iget-object v7, p4, Lcom/esotericsoftware/asm/Context;->h:[Lcom/esotericsoftware/asm/Label;

    const/16 v0, 0xff

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p2, p1

    and-int/2addr p1, v0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    iput p2, p4, Lcom/esotericsoftware/asm/Context;->k:I

    move v3, p1

    const/16 p1, 0xff

    :goto_0
    const/4 p2, 0x0

    iput p2, p4, Lcom/esotericsoftware/asm/Context;->q:I

    const/4 v1, 0x3

    const/16 v2, 0x40

    const/4 v8, 0x1

    if-ge p1, v2, :cond_1

    iput v1, p4, Lcom/esotericsoftware/asm/Context;->o:I

    iput p2, p4, Lcom/esotericsoftware/asm/Context;->s:I

    goto/16 :goto_7

    :cond_1
    const/16 v2, 0x80

    const/4 v9, 0x4

    if-ge p1, v2, :cond_2

    add-int/lit8 p1, p1, -0x40

    iget-object v1, p4, Lcom/esotericsoftware/asm/Context;->t:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassReader;->g([Ljava/lang/Object;II[C[Lcom/esotericsoftware/asm/Label;)I

    move-result v3

    iput v9, p4, Lcom/esotericsoftware/asm/Context;->o:I

    iput v8, p4, Lcom/esotericsoftware/asm/Context;->s:I

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    add-int/lit8 v3, v3, 0x2

    const/16 v2, 0xf7

    if-ne p1, v2, :cond_4

    iget-object v1, p4, Lcom/esotericsoftware/asm/Context;->t:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassReader;->g([Ljava/lang/Object;II[C[Lcom/esotericsoftware/asm/Label;)I

    move-result v3

    iput v9, p4, Lcom/esotericsoftware/asm/Context;->o:I

    iput v8, p4, Lcom/esotericsoftware/asm/Context;->s:I

    :cond_3
    :goto_1
    move p1, v10

    goto/16 :goto_7

    :cond_4
    const/16 v2, 0xf8

    const/16 v4, 0xfb

    const/4 v9, 0x2

    if-lt p1, v2, :cond_5

    if-ge p1, v4, :cond_5

    iput v9, p4, Lcom/esotericsoftware/asm/Context;->o:I

    rsub-int p1, p1, 0xfb

    iput p1, p4, Lcom/esotericsoftware/asm/Context;->q:I

    iget p3, p4, Lcom/esotericsoftware/asm/Context;->p:I

    sub-int/2addr p3, p1

    iput p3, p4, Lcom/esotericsoftware/asm/Context;->p:I

    goto :goto_4

    :cond_5
    if-ne p1, v4, :cond_6

    iput v1, p4, Lcom/esotericsoftware/asm/Context;->o:I

    goto :goto_4

    :cond_6
    if-ge p1, v0, :cond_9

    if-eqz p3, :cond_7

    iget p3, p4, Lcom/esotericsoftware/asm/Context;->p:I

    goto :goto_2

    :cond_7
    const/4 p3, 0x0

    :goto_2
    add-int/lit16 p1, p1, -0xfb

    move v2, p3

    move p3, p1

    :goto_3
    if-lez p3, :cond_8

    iget-object v1, p4, Lcom/esotericsoftware/asm/Context;->r:[Ljava/lang/Object;

    add-int/lit8 v9, v2, 0x1

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassReader;->g([Ljava/lang/Object;II[C[Lcom/esotericsoftware/asm/Label;)I

    move-result v3

    add-int/lit8 p3, p3, -0x1

    move v2, v9

    goto :goto_3

    :cond_8
    iput v8, p4, Lcom/esotericsoftware/asm/Context;->o:I

    iput p1, p4, Lcom/esotericsoftware/asm/Context;->q:I

    iget p3, p4, Lcom/esotericsoftware/asm/Context;->p:I

    add-int/2addr p3, p1

    iput p3, p4, Lcom/esotericsoftware/asm/Context;->p:I

    :goto_4
    iput p2, p4, Lcom/esotericsoftware/asm/Context;->s:I

    goto :goto_1

    :cond_9
    iput p2, p4, Lcom/esotericsoftware/asm/Context;->o:I

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    add-int/lit8 v3, v3, 0x2

    iput p1, p4, Lcom/esotericsoftware/asm/Context;->q:I

    iput p1, p4, Lcom/esotericsoftware/asm/Context;->p:I

    const/4 v2, 0x0

    :goto_5
    if-lez p1, :cond_a

    iget-object v1, p4, Lcom/esotericsoftware/asm/Context;->r:[Ljava/lang/Object;

    add-int/lit8 p3, v2, 0x1

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassReader;->g([Ljava/lang/Object;II[C[Lcom/esotericsoftware/asm/Label;)I

    move-result v3

    add-int/lit8 p1, p1, -0x1

    move v2, p3

    goto :goto_5

    :cond_a
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    add-int/2addr v3, v9

    iput p1, p4, Lcom/esotericsoftware/asm/Context;->s:I

    const/4 v2, 0x0

    :goto_6
    if-lez p1, :cond_3

    iget-object v1, p4, Lcom/esotericsoftware/asm/Context;->t:[Ljava/lang/Object;

    add-int/lit8 p2, v2, 0x1

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassReader;->g([Ljava/lang/Object;II[C[Lcom/esotericsoftware/asm/Label;)I

    move-result v3

    add-int/lit8 p1, p1, -0x1

    move v2, p2

    goto :goto_6

    :goto_7
    iget p2, p4, Lcom/esotericsoftware/asm/Context;->k:I

    add-int/2addr p1, v8

    add-int/2addr p2, p1

    iput p2, p4, Lcom/esotericsoftware/asm/Context;->k:I

    invoke-virtual {p0, p2, v7}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    return v3
.end method

.method public final c(I[CLjava/lang/String;Lcom/esotericsoftware/asm/AnnotationVisitor;)I
    .locals 10

    const/16 v0, 0x5b

    const/16 v1, 0x65

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p4, :cond_3

    iget-object p3, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    aget-byte p3, p3, p1

    and-int/lit16 p3, p3, 0xff

    const/4 p4, 0x0

    if-eq p3, v2, :cond_2

    if-eq p3, v0, :cond_1

    if-eq p3, v1, :cond_0

    add-int/lit8 p1, p1, 0x3

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x5

    return p1

    :cond_1
    add-int/2addr p1, v4

    invoke-virtual {p0, p1, p2, v3, p4}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1, p2, v4, p4}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p1

    return p1

    :cond_3
    iget-object v5, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v6, p1, 0x1

    aget-byte p1, v5, p1

    and-int/lit16 p1, p1, 0xff

    if-eq p1, v2, :cond_1b

    const/16 v2, 0x46

    if-eq p1, v2, :cond_1a

    const/16 v5, 0x53

    if-eq p1, v5, :cond_19

    const/16 v7, 0x63

    if-eq p1, v7, :cond_18

    if-eq p1, v1, :cond_17

    const/16 v1, 0x73

    if-eq p1, v1, :cond_16

    const/16 v1, 0x49

    if-eq p1, v1, :cond_1a

    const/16 v7, 0x4a

    if-eq p1, v7, :cond_1a

    const/16 v8, 0x5a

    if-eq p1, v8, :cond_14

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-char p1, p1

    new-instance p2, Ljava/lang/Character;

    invoke-direct {p2, p1}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-byte p1, p1

    new-instance p2, Ljava/lang/Byte;

    invoke-direct {p2, p1}, Ljava/lang/Byte;-><init>(B)V

    :goto_0
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_d

    :cond_4
    invoke-virtual {p0, v6}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    add-int/lit8 v6, v6, 0x2

    if-nez p1, :cond_5

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p4, p3}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p1

    invoke-virtual {p0, v6, p2, v3, p1}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p1

    return p1

    :cond_5
    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v9, v6, 0x1

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v2, :cond_12

    if-eq v0, v5, :cond_10

    if-eq v0, v8, :cond_d

    if-eq v0, v1, :cond_b

    if-eq v0, v7, :cond_9

    packed-switch v0, :pswitch_data_1

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {p4, p3}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p1

    invoke-virtual {p0, v9, p2, v3, p1}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v6

    goto/16 :goto_d

    :pswitch_2
    new-array p2, p1, [D

    :goto_2
    if-ge v3, p1, :cond_6

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    aput-wide v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_3
    new-array p2, p1, [C

    :goto_3
    if-ge v3, p1, :cond_7

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-char v0, v0

    aput-char v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    new-array p2, p1, [B

    :goto_4
    if-ge v3, p1, :cond_8

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v6, v9, -0x1

    goto/16 :goto_d

    :cond_9
    new-array p2, p1, [J

    :goto_6
    if-ge v3, p1, :cond_a

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readLong(I)J

    move-result-wide v0

    aput-wide v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    new-array p2, p1, [I

    :goto_7
    if-ge v3, p1, :cond_c

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    aput v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    new-array p2, p1, [Z

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_f

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    aput-boolean v1, p2, v0

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_10
    new-array p2, p1, [S

    :goto_a
    if-ge v3, p1, :cond_11

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_11
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_12
    new-array p2, p1, [F

    :goto_b
    if-ge v3, p1, :cond_13

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    aput v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_13
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_14
    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    if-nez p1, :cond_15

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_15
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_16
    invoke-virtual {p0, v6, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_17
    invoke-virtual {p0, v6, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v6, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p3, p1, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x4

    goto :goto_d

    :cond_18
    invoke-virtual {p0, v6, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;

    move-result-object p1

    goto :goto_c

    :cond_19
    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-short p1, p1

    new-instance p2, Ljava/lang/Short;

    invoke-direct {p2, p1}, Ljava/lang/Short;-><init>(S)V

    goto/16 :goto_0

    :cond_1a
    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object p1

    :goto_c
    invoke-virtual {p4, p3, p1}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1b
    add-int/lit8 p1, v6, 0x2

    invoke-virtual {p0, v6, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p3

    invoke-virtual {p0, p1, p2, v4, p3}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v6

    :goto_d
    return v6

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    if-eqz p3, :cond_0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 p3, p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1, p4}, Lcom/esotericsoftware/asm/ClassReader;->c(I[CLjava/lang/String;Lcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-lez v0, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/ClassReader;->c(I[CLjava/lang/String;Lcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitEnd()V

    :cond_2
    return p1
.end method

.method public final e(Lcom/esotericsoftware/asm/ClassVisitor;Lcom/esotericsoftware/asm/Context;I)I
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v0, p3

    iget-object v10, v9, Lcom/esotericsoftware/asm/Context;->c:[C

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    const/4 v15, 0x0

    const/4 v12, 0x0

    move v11, v0

    move/from16 v17, v1

    move/from16 v16, v2

    move-object v3, v15

    move-object/from16 v18, v3

    move-object/from16 v19, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-lez v16, :cond_a

    add-int/lit8 v0, v11, 0x2

    invoke-virtual {v8, v0, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ConstantValue"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v11, 0x8

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v19, v15

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v8, v0, v10}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    goto/16 :goto_3

    :cond_1
    const-string v0, "Signature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v11, 0x8

    invoke-virtual {v8, v0, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    :cond_2
    const-string v0, "Deprecated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x20000

    :goto_1
    or-int v0, v17, v0

    move/from16 v17, v0

    goto/16 :goto_3

    :cond_3
    const-string v0, "Synthetic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x41000

    goto :goto_1

    :cond_4
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v7, v11, 0x8

    goto/16 :goto_3

    :cond_5
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v5, v11, 0x8

    goto :goto_3

    :cond_6
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v6, v11, 0x8

    goto :goto_3

    :cond_7
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v4, v11, 0x8

    goto :goto_3

    :cond_8
    iget-object v1, v9, Lcom/esotericsoftware/asm/Context;->a:[Lcom/esotericsoftware/asm/Attribute;

    add-int/lit8 v20, v11, 0x8

    add-int/lit8 v0, v11, 0x4

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v21

    const/16 v22, -0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v24, v3

    move/from16 v3, v20

    move/from16 v25, v4

    move/from16 v4, v21

    move/from16 v26, v5

    move-object v5, v10

    move v9, v6

    move/from16 v6, v22

    move/from16 p3, v9

    move v9, v7

    move-object/from16 v7, v23

    invoke-virtual/range {v0 .. v7}, Lcom/esotericsoftware/asm/ClassReader;->h([Lcom/esotericsoftware/asm/Attribute;Ljava/lang/String;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;

    move-result-object v3

    move-object/from16 v0, v24

    if-eqz v3, :cond_9

    iput-object v0, v3, Lcom/esotericsoftware/asm/Attribute;->b:Lcom/esotericsoftware/asm/Attribute;

    move/from16 v6, p3

    goto :goto_2

    :cond_9
    move/from16 v6, p3

    move-object v3, v0

    :goto_2
    move v7, v9

    move/from16 v4, v25

    move/from16 v5, v26

    :goto_3
    add-int/lit8 v0, v11, 0x4

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v11, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v9, p2

    goto/16 :goto_0

    :cond_a
    move-object v0, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 p3, v6

    move v9, v7

    add-int/lit8 v1, v11, 0x2

    move-object/from16 v11, p1

    const/4 v2, 0x0

    move/from16 v12, v17

    move-object v3, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    invoke-virtual/range {v11 .. v16}, Lcom/esotericsoftware/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/esotericsoftware/asm/FieldVisitor;

    move-result-object v4

    if-nez v4, :cond_b

    return v1

    :cond_b
    const/4 v5, 0x1

    if-eqz v9, :cond_c

    invoke-virtual {v8, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v7, v9, 0x2

    :goto_4
    if-lez v6, :cond_c

    add-int/lit8 v9, v7, 0x2

    invoke-virtual {v8, v7, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Lcom/esotericsoftware/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v8, v9, v10, v5, v7}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_c
    if-eqz p3, :cond_d

    move/from16 v12, p3

    invoke-virtual {v8, v12}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v7, v12, 0x2

    :goto_5
    if-lez v6, :cond_d

    add-int/lit8 v9, v7, 0x2

    invoke-virtual {v8, v7, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v2}, Lcom/esotericsoftware/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v8, v9, v10, v5, v7}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_d
    move/from16 v12, v26

    if-eqz v12, :cond_e

    invoke-virtual {v8, v12}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v7, v12, 0x2

    :goto_6
    if-lez v6, :cond_e

    move-object/from16 v9, p2

    invoke-virtual {v8, v9, v7}, Lcom/esotericsoftware/asm/ClassReader;->f(Lcom/esotericsoftware/asm/Context;I)I

    move-result v7

    add-int/lit8 v11, v7, 0x2

    iget v12, v9, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v13, v9, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v8, v7, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v12, v13, v7, v5}, Lcom/esotericsoftware/asm/FieldVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v8, v11, v10, v5, v7}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_e
    move-object/from16 v9, p2

    move/from16 v12, v25

    if-eqz v12, :cond_f

    invoke-virtual {v8, v12}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v7, v12, 0x2

    :goto_7
    if-lez v6, :cond_f

    invoke-virtual {v8, v9, v7}, Lcom/esotericsoftware/asm/ClassReader;->f(Lcom/esotericsoftware/asm/Context;I)I

    move-result v7

    add-int/lit8 v11, v7, 0x2

    iget v12, v9, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v13, v9, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v8, v7, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v12, v13, v7, v2}, Lcom/esotericsoftware/asm/FieldVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v8, v11, v10, v5, v7}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_f
    :goto_8
    if-eqz v0, :cond_10

    iget-object v2, v0, Lcom/esotericsoftware/asm/Attribute;->b:Lcom/esotericsoftware/asm/Attribute;

    iput-object v3, v0, Lcom/esotericsoftware/asm/Attribute;->b:Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {v4, v0}, Lcom/esotericsoftware/asm/FieldVisitor;->visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V

    move-object v0, v2

    goto :goto_8

    :cond_10
    invoke-virtual {v4}, Lcom/esotericsoftware/asm/FieldVisitor;->visitEnd()V

    return v1
.end method

.method public final f(Lcom/esotericsoftware/asm/Context;I)I
    .locals 8

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x18

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    const/16 v3, 0x40

    const/high16 v4, -0x1000000

    if-eq v1, v3, :cond_1

    const/16 v3, 0x41

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/16 v3, 0x43

    if-ge v1, v3, :cond_0

    const/16 v4, -0x100

    :cond_0
    and-int/2addr v0, v4

    add-int/lit8 p2, p2, 0x3

    goto :goto_1

    :pswitch_0
    const v1, -0xffff01

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x4

    goto :goto_1

    :pswitch_1
    and-int/2addr v0, v4

    add-int/2addr p2, v2

    goto :goto_1

    :cond_1
    and-int/2addr v0, v4

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v3, v1, [Lcom/esotericsoftware/asm/Label;

    iput-object v3, p1, Lcom/esotericsoftware/asm/Context;->l:[Lcom/esotericsoftware/asm/Label;

    new-array v3, v1, [Lcom/esotericsoftware/asm/Label;

    iput-object v3, p1, Lcom/esotericsoftware/asm/Context;->m:[Lcom/esotericsoftware/asm/Label;

    new-array v3, v1, [I

    iput-object v3, p1, Lcom/esotericsoftware/asm/Context;->n:[I

    add-int/lit8 p2, p2, 0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x2

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    iget-object v6, p1, Lcom/esotericsoftware/asm/Context;->l:[Lcom/esotericsoftware/asm/Label;

    iget-object v7, p1, Lcom/esotericsoftware/asm/Context;->h:[Lcom/esotericsoftware/asm/Label;

    invoke-virtual {p0, v4, v7}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v6, p1, Lcom/esotericsoftware/asm/Context;->m:[Lcom/esotericsoftware/asm/Label;

    add-int/2addr v4, v5

    iget-object v5, p1, Lcom/esotericsoftware/asm/Context;->h:[Lcom/esotericsoftware/asm/Label;

    invoke-virtual {p0, v4, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v4

    aput-object v4, v6, v3

    iget-object v4, p1, Lcom/esotericsoftware/asm/Context;->n:[I

    add-int/lit8 v5, p2, 0x4

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :pswitch_2
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x2

    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v1

    iput v0, p1, Lcom/esotericsoftware/asm/Context;->i:I

    if-nez v1, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/esotericsoftware/asm/TypePath;

    iget-object v3, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    invoke-direct {v0, v3, p2}, Lcom/esotericsoftware/asm/TypePath;-><init>([BI)V

    :goto_2
    iput-object v0, p1, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    add-int/2addr p2, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    return p2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g([Ljava/lang/Object;II[C[Lcom/esotericsoftware/asm/Label;)I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    packed-switch p3, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p3

    invoke-virtual {p0, p3, p5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object p3

    aput-object p3, p1, p2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1, p4}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    :goto_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :pswitch_1
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_1

    :pswitch_2
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_1

    :pswitch_3
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_1

    :pswitch_4
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_1

    :pswitch_5
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_1

    :pswitch_6
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_1

    :pswitch_7
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object p3, p1, p2

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAccess()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/esotericsoftware/asm/ClassReader;->d:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    if-lez v1, :cond_0

    iget v3, p0, Lcom/esotericsoftware/asm/ClassReader;->d:I

    new-array v3, v3, [C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getItem(I)I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    array-length v0, v0

    return v0
.end method

.method public getMaxStringLength()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->d:I

    return v0
.end method

.method public getSuperName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/esotericsoftware/asm/ClassReader;->d:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h([Lcom/esotericsoftware/asm/Attribute;Ljava/lang/String;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;
    .locals 11

    move-object v0, p1

    move-object v1, p2

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/esotericsoftware/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v4, v0, v2

    move-object v5, p0

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v4 .. v10}, Lcom/esotericsoftware/asm/Attribute;->read(Lcom/esotericsoftware/asm/ClassReader;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/esotericsoftware/asm/Attribute;

    invoke-direct {v3, p2}, Lcom/esotericsoftware/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v3 .. v9}, Lcom/esotericsoftware/asm/Attribute;->read(Lcom/esotericsoftware/asm/ClassReader;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public final i(II[C)Ljava/lang/String;
    .locals 9

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge p1, p2, :cond_5

    add-int/lit8 v5, p1, 0x1

    aget-byte p1, v0, p1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v7, :cond_1

    if-eq v3, v6, :cond_0

    goto :goto_2

    :cond_0
    shl-int/lit8 v3, v4, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v3

    :goto_1
    int-to-char v4, p1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v6, v4, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v6

    int-to-char p1, p1

    aput-char p1, p3, v2

    move v2, v3

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    and-int/lit16 p1, p1, 0xff

    const/16 v8, 0x80

    if-ge p1, v8, :cond_3

    add-int/lit8 v6, v2, 0x1

    int-to-char p1, p1

    aput-char p1, p3, v2

    move v2, v6

    goto :goto_2

    :cond_3
    const/16 v3, 0xe0

    if-ge p1, v3, :cond_4

    const/16 v3, 0xbf

    if-le p1, v3, :cond_4

    and-int/lit8 p1, p1, 0x1f

    goto :goto_1

    :cond_4
    and-int/lit8 p1, p1, 0xf

    int-to-char v4, p1

    const/4 v3, 0x2

    :goto_2
    move p1, v5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method public j(Lcom/esotericsoftware/asm/ClassWriter;)V
    .locals 11

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->d:I

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    array-length v1, v1

    new-array v2, v1, [Lcom/esotericsoftware/asm/Item;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v1, :cond_9

    iget-object v5, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget v5, v5, v4

    iget-object v6, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v7, v5, -0x1

    aget-byte v6, v6, v7

    new-instance v7, Lcom/esotericsoftware/asm/Item;

    invoke-direct {v7, v4}, Lcom/esotericsoftware/asm/Item;-><init>(I)V

    const/4 v8, 0x0

    if-eq v6, v3, :cond_7

    const/16 v9, 0xf

    if-eq v6, v9, :cond_6

    const/16 v9, 0x12

    if-eq v6, v9, :cond_4

    const/4 v9, 0x3

    if-eq v6, v9, :cond_3

    const/4 v9, 0x4

    if-eq v6, v9, :cond_2

    const/4 v9, 0x5

    if-eq v6, v9, :cond_1

    const/4 v9, 0x6

    if-eq v6, v9, :cond_0

    packed-switch v6, :pswitch_data_0

    invoke-virtual {p0, v5, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v6, v5, v8, v8}, Lcom/esotericsoftware/asm/Item;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v5, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v5, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v6, v9, v5, v8}, Lcom/esotericsoftware/asm/Item;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v8, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    invoke-virtual {p0, v5, v0}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p0, v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v5, v9, v8}, Lcom/esotericsoftware/asm/Item;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/esotericsoftware/asm/Item;->a(D)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLong(I)J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/esotericsoftware/asm/Item;->f(J)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-virtual {v7, v5}, Lcom/esotericsoftware/asm/Item;->b(F)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/esotericsoftware/asm/Item;->c(I)V

    goto :goto_2

    :cond_4
    iget-object v6, p1, Lcom/esotericsoftware/asm/ClassWriter;->F:Lcom/esotericsoftware/asm/ByteVector;

    if-nez v6, :cond_5

    invoke-virtual {p0, p1, v2, v0}, Lcom/esotericsoftware/asm/ClassReader;->k(Lcom/esotericsoftware/asm/ClassWriter;[Lcom/esotericsoftware/asm/Item;[C)V

    :cond_5
    iget-object v6, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    aget v6, v6, v8

    invoke-virtual {p0, v6, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v6, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {v7, v8, v6, v5}, Lcom/esotericsoftware/asm/Item;->g(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    aget v6, v6, v8

    iget-object v8, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v9, v6, 0x2

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-virtual {p0, v6, v0}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p0, v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v6, v9, v8}, Lcom/esotericsoftware/asm/Item;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/esotericsoftware/asm/ClassReader;->c:[Ljava/lang/String;

    aget-object v9, v5, v4

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget v9, v9, v4

    add-int/lit8 v10, v9, 0x2

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    invoke-virtual {p0, v10, v9, v0}, Lcom/esotericsoftware/asm/ClassReader;->i(II[C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v4

    :cond_8
    invoke-virtual {v7, v6, v9, v8, v8}, Lcom/esotericsoftware/asm/Item;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget v5, v7, Lcom/esotericsoftware/asm/Item;->h:I

    rem-int/2addr v5, v1

    aget-object v6, v2, v5

    iput-object v6, v7, Lcom/esotericsoftware/asm/Item;->i:Lcom/esotericsoftware/asm/Item;

    aput-object v7, v2, v5

    add-int/2addr v4, v3

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget v0, v0, v3

    sub-int/2addr v0, v3

    iget-object v3, p1, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v4, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    iget v5, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    sub-int/2addr v5, v0

    invoke-virtual {v3, v4, v0, v5}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    iput-object v2, p1, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    double-to-int v0, v4

    iput v0, p1, Lcom/esotericsoftware/asm/ClassWriter;->f:I

    iput v1, p1, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Lcom/esotericsoftware/asm/ClassWriter;[Lcom/esotericsoftware/asm/Item;[C)V
    .locals 9

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/ClassReader;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_1

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3, p3}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BootstrapMethods"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v0, 0x8

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v3, v0, 0xa

    move v4, v3

    :goto_2
    if-ge v2, v1, :cond_4

    sub-int v5, v4, v0

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {p0, v6, p3}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p0, v7}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    :goto_3
    if-lez v7, :cond_3

    add-int/lit8 v8, v4, 0x4

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    invoke-virtual {p0, v8, p3}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    xor-int/2addr v6, v8

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x4

    new-instance v7, Lcom/esotericsoftware/asm/Item;

    invoke-direct {v7, v2}, Lcom/esotericsoftware/asm/Item;-><init>(I)V

    const v8, 0x7fffffff

    and-int/2addr v6, v8

    invoke-virtual {v7, v5, v6}, Lcom/esotericsoftware/asm/Item;->d(II)V

    iget v5, v7, Lcom/esotericsoftware/asm/Item;->h:I

    array-length v6, p2

    rem-int/2addr v5, v6

    aget-object v6, p2, v5

    iput-object v6, v7, Lcom/esotericsoftware/asm/Item;->i:Lcom/esotericsoftware/asm/Item;

    aput-object v7, p2, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p2

    new-instance p3, Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v0, p2, 0x3e

    invoke-direct {p3, v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>(I)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p3, v0, v3, p2}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    iput v1, p1, Lcom/esotericsoftware/asm/ClassWriter;->E:I

    iput-object p3, p1, Lcom/esotericsoftware/asm/ClassWriter;->F:Lcom/esotericsoftware/asm/ByteVector;

    return-void
.end method

.method public final l(Lcom/esotericsoftware/asm/Context;)V
    .locals 10

    iget-object v0, p1, Lcom/esotericsoftware/asm/Context;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/esotericsoftware/asm/Context;->r:[Ljava/lang/Object;

    iget v2, p1, Lcom/esotericsoftware/asm/Context;->e:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/esotericsoftware/asm/Context;->f:Ljava/lang/String;

    const-string v5, "<init>"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/esotericsoftware/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v2, v1, v4

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v2, v2, 0x2

    iget-object v5, p1, Lcom/esotericsoftware/asm/Context;->c:[C

    invoke-virtual {p0, v2, v5}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    :goto_0
    const/4 v4, 0x1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x46

    if-eq v6, v7, :cond_9

    const/16 v7, 0x3b

    const/16 v8, 0x4c

    if-eq v6, v8, :cond_7

    const/16 v9, 0x53

    if-eq v6, v9, :cond_6

    const/16 v9, 0x49

    if-eq v6, v9, :cond_6

    const/16 v9, 0x4a

    if-eq v6, v9, :cond_5

    const/16 v9, 0x5a

    if-eq v6, v9, :cond_6

    const/16 v9, 0x5b

    if-eq v6, v9, :cond_2

    packed-switch v6, :pswitch_data_0

    iput v4, p1, Lcom/esotericsoftware/asm/Context;->p:I

    return-void

    :pswitch_0
    add-int/lit8 v2, v4, 0x1

    sget-object v6, Lcom/esotericsoftware/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v6, v1, v4

    goto :goto_4

    :cond_2
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_4

    :goto_3
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v4, 0x1

    add-int/2addr v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move v2, v5

    move v4, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v4, 0x1

    sget-object v6, Lcom/esotericsoftware/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v6, v1, v4

    goto :goto_4

    :cond_6
    :pswitch_1
    add-int/lit8 v2, v4, 0x1

    sget-object v6, Lcom/esotericsoftware/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v6, v1, v4

    :goto_4
    move v4, v2

    move v2, v5

    goto :goto_1

    :cond_7
    move v2, v5

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move v4, v6

    move v2, v7

    goto :goto_1

    :cond_9
    add-int/lit8 v2, v4, 0x1

    sget-object v6, Lcom/esotericsoftware/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v6, v1, v4

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;I)V
    .locals 41

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v0, p3

    iget-object v8, v7, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    iget-object v13, v14, Lcom/esotericsoftware/asm/Context;->c:[C

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v9

    const/16 v10, 0x8

    add-int/lit8 v16, v0, 0x8

    add-int v6, v16, v9

    add-int/lit8 v0, v9, 0x2

    new-array v5, v0, [Lcom/esotericsoftware/asm/Label;

    iput-object v5, v14, Lcom/esotericsoftware/asm/Context;->h:[Lcom/esotericsoftware/asm/Label;

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7, v0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move/from16 v0, v16

    :goto_0
    const/16 v4, 0x84

    const/4 v3, 0x1

    if-ge v0, v6, :cond_3

    sub-int v1, v0, v16

    aget-byte v2, v8, v0

    and-int/lit16 v2, v2, 0xff

    sget-object v17, Lcom/esotericsoftware/asm/ClassWriter;->N:[B

    aget-byte v2, v17, v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v4, :cond_0

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, v0, 0x4

    and-int/lit8 v2, v1, 0x3

    sub-int/2addr v0, v2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v7, v2, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    :goto_1
    if-lez v2, :cond_1

    add-int/lit8 v3, v0, 0xc

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v7, v3, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, v0, 0x4

    and-int/lit8 v2, v1, 0x3

    sub-int/2addr v0, v2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v7, v2, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    add-int/lit8 v2, v0, 0x8

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v4, v0, 0x4

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    :goto_2
    if-lez v2, :cond_2

    add-int/lit8 v3, v0, 0xc

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v7, v3, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :pswitch_4
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v7, v1, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    goto :goto_3

    :pswitch_5
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readShort(I)S

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v7, v1, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    goto :goto_4

    :goto_3
    :pswitch_6
    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_0

    :goto_4
    :pswitch_7
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :pswitch_8
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :pswitch_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_5
    if-lez v1, :cond_4

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-virtual {v7, v2, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v2

    add-int/lit8 v4, v0, 0x4

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-virtual {v7, v4, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v4

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {v7, v3, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v3

    iget-object v10, v7, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v19

    aget v10, v10, v19

    invoke-virtual {v7, v10, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v2, v4, v3, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTryCatchBlock(Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x1

    const/16 v4, 0x84

    const/16 v10, 0x8

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x2

    iget v1, v14, Lcom/esotericsoftware/asm/Context;->b:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    move/from16 v19, v0

    move/from16 v20, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, -0x1

    :goto_7
    const/16 v10, 0x43

    if-lez v20, :cond_1d

    add-int/lit8 v2, v19, 0x2

    invoke-virtual {v7, v2, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalVariableTable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v2, v14, Lcom/esotericsoftware/asm/Context;->b:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    add-int/lit8 v2, v19, 0x8

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    move/from16 v10, v19

    :goto_8
    if-lez v3, :cond_8

    move-object/from16 v32, v0

    add-int/lit8 v0, v10, 0xa

    move-object/from16 v33, v1

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget-object v23, v5, v1

    if-nez v23, :cond_6

    move/from16 v23, v0

    invoke-virtual {v7, v1, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v0

    move/from16 v34, v2

    iget v2, v0, Lcom/esotericsoftware/asm/Label;->a:I

    const/16 v17, 0x1

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/esotericsoftware/asm/Label;->a:I

    goto :goto_9

    :cond_6
    move/from16 v23, v0

    move/from16 v34, v2

    :goto_9
    add-int/lit8 v10, v10, 0xc

    invoke-virtual {v7, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/2addr v1, v0

    aget-object v0, v5, v1

    if-nez v0, :cond_7

    invoke-virtual {v7, v1, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v0

    iget v1, v0, Lcom/esotericsoftware/asm/Label;->a:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Lcom/esotericsoftware/asm/Label;->a:I

    :cond_7
    add-int/lit8 v3, v3, -0x1

    move/from16 v10, v23

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v34

    goto :goto_8

    :cond_8
    move-object/from16 v32, v0

    move-object/from16 v33, v1

    move/from16 v34, v2

    move/from16 v38, v4

    move-object/from16 p3, v5

    move/from16 v39, v6

    move/from16 v23, v34

    goto/16 :goto_12

    :cond_9
    move-object/from16 v32, v0

    move-object/from16 v33, v1

    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_10

    :cond_b
    move-object/from16 v32, v0

    move-object/from16 v33, v1

    const-string v0, "LocalVariableTypeTable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    add-int/lit8 v24, v19, 0x8

    goto/16 :goto_10

    :cond_c
    const-string v0, "LineNumberTable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, v14, Lcom/esotericsoftware/asm/Context;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    add-int/lit8 v0, v19, 0x8

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move/from16 v1, v19

    :goto_a
    if-lez v0, :cond_a

    add-int/lit8 v2, v1, 0xa

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget-object v3, v5, v2

    if-nez v3, :cond_d

    invoke-virtual {v7, v2, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v3

    iget v10, v3, Lcom/esotericsoftware/asm/Label;->a:I

    const/16 v17, 0x1

    or-int/lit8 v10, v10, 0x1

    iput v10, v3, Lcom/esotericsoftware/asm/Label;->a:I

    :cond_d
    aget-object v2, v5, v2

    :goto_b
    iget v3, v2, Lcom/esotericsoftware/asm/Label;->b:I

    if-lez v3, :cond_f

    iget-object v3, v2, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    if-nez v3, :cond_e

    new-instance v3, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v3}, Lcom/esotericsoftware/asm/Label;-><init>()V

    iput-object v3, v2, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    :cond_e
    iget-object v2, v2, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    goto :goto_b

    :cond_f
    add-int/lit8 v3, v1, 0xc

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    iput v3, v2, Lcom/esotericsoftware/asm/Label;->b:I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_10
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v0, v19, 0x8

    const/4 v1, 0x1

    invoke-virtual {v7, v15, v14, v0, v1}, Lcom/esotericsoftware/asm/ClassReader;->o(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;IZ)[I

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v3

    if-ge v3, v10, :cond_11

    goto :goto_c

    :cond_11
    aget v3, v0, v2

    add-int/2addr v3, v1

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    goto :goto_d

    :cond_12
    :goto_c
    const/4 v1, -0x1

    :goto_d
    move/from16 v28, v1

    move/from16 v38, v4

    move-object/from16 p3, v5

    move/from16 v39, v6

    const/4 v15, -0x1

    move-object v1, v0

    move-object/from16 v0, v32

    goto/16 :goto_15

    :cond_13
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/lit8 v0, v19, 0x8

    const/4 v1, 0x0

    invoke-virtual {v7, v15, v14, v0, v1}, Lcom/esotericsoftware/asm/ClassReader;->o(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;IZ)[I

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_15

    aget v2, v0, v1

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v2

    if-ge v2, v10, :cond_14

    goto :goto_e

    :cond_14
    aget v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    goto :goto_f

    :cond_15
    :goto_e
    const/4 v3, 0x1

    const/4 v1, -0x1

    :goto_f
    move/from16 v29, v1

    move/from16 v38, v4

    move-object/from16 p3, v5

    move/from16 v39, v6

    goto :goto_11

    :cond_16
    const/4 v3, 0x1

    const-string v0, "StackMapTable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, v14, Lcom/esotericsoftware/asm/Context;->b:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_18

    add-int/lit8 v21, v19, 0xa

    add-int/lit8 v0, v19, 0x4

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v22

    add-int/lit8 v0, v19, 0x8

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v27

    goto :goto_10

    :cond_17
    const-string v0, "StackMap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, v14, Lcom/esotericsoftware/asm/Context;->b:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_18

    add-int/lit8 v21, v19, 0xa

    add-int/lit8 v0, v19, 0x4

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v22

    add-int/lit8 v0, v19, 0x8

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v27

    move/from16 v38, v4

    move-object/from16 p3, v5

    move/from16 v39, v6

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    const/4 v15, -0x1

    const/16 v25, 0x0

    goto/16 :goto_15

    :cond_18
    :goto_10
    move/from16 v38, v4

    move-object/from16 p3, v5

    move/from16 v39, v6

    move-object/from16 v0, v32

    :goto_11
    move-object/from16 v1, v33

    :goto_12
    const/4 v15, -0x1

    goto/16 :goto_15

    :cond_19
    move-object/from16 v10, v26

    const/4 v1, 0x0

    :goto_13
    iget-object v0, v14, Lcom/esotericsoftware/asm/Context;->a:[Lcom/esotericsoftware/asm/Attribute;

    array-length v3, v0

    if-ge v1, v3, :cond_1c

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/esotericsoftware/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v14, Lcom/esotericsoftware/asm/Context;->a:[Lcom/esotericsoftware/asm/Attribute;

    aget-object v0, v0, v1

    add-int/lit8 v3, v19, 0x8

    move/from16 v26, v1

    add-int/lit8 v1, v19, 0x4

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v34

    add-int/lit8 v35, v16, -0x8

    move-object/from16 v1, v32

    move-object/from16 v37, v1

    move-object/from16 v36, v33

    move-object/from16 v1, p0

    move-object/from16 v30, v2

    const/4 v15, -0x1

    move v2, v3

    move/from16 v3, v34

    move/from16 v38, v4

    move-object v4, v13

    move-object/from16 p3, v5

    move/from16 v5, v35

    move/from16 v39, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/esotericsoftware/asm/Attribute;->read(Lcom/esotericsoftware/asm/ClassReader;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;

    move-result-object v0

    if-eqz v0, :cond_1b

    iput-object v10, v0, Lcom/esotericsoftware/asm/Attribute;->b:Lcom/esotericsoftware/asm/Attribute;

    move-object v10, v0

    goto :goto_14

    :cond_1a
    move/from16 v26, v1

    move-object/from16 v30, v2

    move/from16 v38, v4

    move-object/from16 p3, v5

    move/from16 v39, v6

    move-object/from16 v37, v32

    move-object/from16 v36, v33

    const/4 v15, -0x1

    :cond_1b
    :goto_14
    add-int/lit8 v1, v26, 0x1

    move-object/from16 v15, p1

    move-object/from16 v5, p3

    move-object/from16 v2, v30

    move-object/from16 v33, v36

    move-object/from16 v32, v37

    move/from16 v4, v38

    move/from16 v6, v39

    const/4 v3, 0x1

    goto :goto_13

    :cond_1c
    move/from16 v38, v4

    move-object/from16 p3, v5

    move/from16 v39, v6

    move-object/from16 v37, v32

    move-object/from16 v36, v33

    const/4 v15, -0x1

    move-object/from16 v26, v10

    move-object/from16 v1, v36

    move-object/from16 v0, v37

    :goto_15
    add-int/lit8 v2, v19, 0x4

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    add-int v19, v19, v2

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v15, p1

    move-object/from16 v5, p3

    move/from16 v4, v38

    move/from16 v6, v39

    goto/16 :goto_7

    :cond_1d
    move-object/from16 v37, v0

    move-object/from16 v36, v1

    move/from16 v38, v4

    move-object/from16 p3, v5

    move/from16 v39, v6

    const/4 v15, -0x1

    if-eqz v21, :cond_21

    iput v15, v14, Lcom/esotericsoftware/asm/Context;->k:I

    const/4 v0, 0x0

    iput v0, v14, Lcom/esotericsoftware/asm/Context;->o:I

    iput v0, v14, Lcom/esotericsoftware/asm/Context;->p:I

    iput v0, v14, Lcom/esotericsoftware/asm/Context;->q:I

    iput v0, v14, Lcom/esotericsoftware/asm/Context;->s:I

    new-array v0, v11, [Ljava/lang/Object;

    iput-object v0, v14, Lcom/esotericsoftware/asm/Context;->r:[Ljava/lang/Object;

    new-array v0, v12, [Ljava/lang/Object;

    iput-object v0, v14, Lcom/esotericsoftware/asm/Context;->t:[Ljava/lang/Object;

    move/from16 v6, v38

    if-eqz v6, :cond_1e

    invoke-virtual {v7, v14}, Lcom/esotericsoftware/asm/ClassReader;->l(Lcom/esotericsoftware/asm/Context;)V

    :cond_1e
    move/from16 v0, v21

    :goto_16
    add-int v1, v21, v22

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_20

    aget-byte v1, v8, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1f

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    if-ltz v1, :cond_1f

    if-ge v1, v9, :cond_1f

    add-int v2, v16, v1

    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_1f

    move-object/from16 v5, p3

    invoke-virtual {v7, v1, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    goto :goto_17

    :cond_1f
    move-object/from16 v5, p3

    :goto_17
    add-int/lit8 v0, v0, 0x1

    move-object/from16 p3, v5

    goto :goto_16

    :cond_20
    move-object/from16 v5, p3

    move-object v3, v14

    goto :goto_18

    :cond_21
    move-object/from16 v5, p3

    move/from16 v6, v38

    const/4 v3, 0x0

    :goto_18
    move/from16 v4, v16

    const/16 v17, 0x0

    const/16 v19, 0x0

    :goto_19
    move/from16 v2, v39

    if-ge v4, v2, :cond_3a

    sub-int v1, v4, v16

    aget-object v0, v5, v1

    if-eqz v0, :cond_22

    iget-object v15, v0, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    move-object/from16 v20, v15

    const/4 v15, 0x0

    iput-object v15, v0, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    move-object/from16 v15, p1

    const/4 v10, -0x1

    invoke-virtual {v15, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    iget v10, v14, Lcom/esotericsoftware/asm/Context;->b:I

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_23

    iget v10, v0, Lcom/esotericsoftware/asm/Label;->b:I

    if-lez v10, :cond_23

    invoke-virtual {v15, v10, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLineNumber(ILcom/esotericsoftware/asm/Label;)V

    move-object/from16 v10, v20

    :goto_1a
    if-eqz v10, :cond_23

    move/from16 v39, v2

    iget v2, v10, Lcom/esotericsoftware/asm/Label;->b:I

    invoke-virtual {v15, v2, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLineNumber(ILcom/esotericsoftware/asm/Label;)V

    iget-object v10, v10, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    move/from16 v2, v39

    goto :goto_1a

    :cond_22
    move-object/from16 v15, p1

    :cond_23
    move/from16 v39, v2

    move-object v10, v3

    move/from16 v3, v21

    :goto_1b
    if-eqz v10, :cond_29

    iget v0, v10, Lcom/esotericsoftware/asm/Context;->k:I

    const/4 v2, -0x1

    if-eq v0, v1, :cond_24

    if-ne v0, v2, :cond_29

    :cond_24
    if-eq v0, v2, :cond_27

    move/from16 v2, v25

    if-eqz v2, :cond_26

    if-eqz v6, :cond_25

    goto :goto_1c

    :cond_25
    iget v0, v10, Lcom/esotericsoftware/asm/Context;->o:I

    move/from16 v20, v2

    iget v2, v10, Lcom/esotericsoftware/asm/Context;->q:I

    move/from16 v21, v3

    iget-object v3, v10, Lcom/esotericsoftware/asm/Context;->r:[Ljava/lang/Object;

    move/from16 v22, v4

    iget v4, v10, Lcom/esotericsoftware/asm/Context;->s:I

    move-object/from16 v25, v5

    iget-object v5, v10, Lcom/esotericsoftware/asm/Context;->t:[Ljava/lang/Object;

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v32, v11

    move v11, v1

    move/from16 v1, v31

    move/from16 v31, v12

    move/from16 v12, v20

    move/from16 v20, v39

    move/from16 v33, v9

    move/from16 v9, v21

    move/from16 v21, v22

    move-object/from16 v22, v25

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_26
    :goto_1c
    move/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v33, v9

    move/from16 v32, v11

    move/from16 v31, v12

    move/from16 v20, v39

    move v11, v1

    move v12, v2

    move v9, v3

    const/4 v1, -0x1

    iget v2, v10, Lcom/esotericsoftware/asm/Context;->p:I

    iget-object v3, v10, Lcom/esotericsoftware/asm/Context;->r:[Ljava/lang/Object;

    iget v4, v10, Lcom/esotericsoftware/asm/Context;->s:I

    iget-object v5, v10, Lcom/esotericsoftware/asm/Context;->t:[Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_27
    move/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v33, v9

    move/from16 v32, v11

    move/from16 v31, v12

    move/from16 v12, v25

    move/from16 v20, v39

    move v11, v1

    move v9, v3

    :goto_1d
    if-lez v27, :cond_28

    invoke-virtual {v7, v9, v12, v6, v10}, Lcom/esotericsoftware/asm/ClassReader;->b(IZZLcom/esotericsoftware/asm/Context;)I

    move-result v3

    add-int/lit8 v27, v27, -0x1

    move v1, v11

    move/from16 v25, v12

    move/from16 v39, v20

    move/from16 v4, v21

    move-object/from16 v5, v22

    move/from16 v12, v31

    move/from16 v11, v32

    move/from16 v9, v33

    goto/16 :goto_1b

    :cond_28
    move v3, v9

    move v1, v11

    move/from16 v25, v12

    move/from16 v39, v20

    move/from16 v4, v21

    move-object/from16 v5, v22

    move/from16 v12, v31

    move/from16 v11, v32

    move/from16 v9, v33

    const/4 v10, 0x0

    goto/16 :goto_1b

    :cond_29
    move/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v33, v9

    move/from16 v32, v11

    move/from16 v31, v12

    move/from16 v12, v25

    move/from16 v20, v39

    move v11, v1

    move v9, v3

    aget-byte v0, v8, v21

    and-int/lit16 v5, v0, 0xff

    sget-object v0, Lcom/esotericsoftware/asm/ClassWriter;->N:[B

    aget-byte v0, v0, v5

    packed-switch v0, :pswitch_data_1

    :pswitch_a
    move/from16 v38, v6

    move/from16 v34, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    add-int/lit8 v4, v21, 0x1

    invoke-virtual {v7, v4, v13}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v21, 0x3

    aget-byte v1, v8, v4

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v15, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    add-int/lit8 v4, v21, 0x4

    goto/16 :goto_2b

    :pswitch_b
    add-int/lit8 v4, v21, 0x1

    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0x84

    if-ne v0, v4, :cond_2a

    add-int/lit8 v0, v21, 0x2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v21, 0x4

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readShort(I)S

    move-result v1

    invoke-virtual {v15, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitIincInsn(II)V

    add-int/lit8 v0, v21, 0x6

    goto :goto_1e

    :cond_2a
    add-int/lit8 v1, v21, 0x2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-virtual {v15, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    add-int/lit8 v0, v21, 0x4

    :goto_1e
    move v4, v0

    move/from16 v38, v6

    move/from16 v34, v9

    move/from16 v0, v17

    move/from16 v1, v28

    move-object/from16 v9, v36

    const/16 v18, 0x8

    goto/16 :goto_24

    :pswitch_c
    const/16 v4, 0x84

    add-int/lit8 v0, v21, 0x4

    and-int/lit8 v1, v11, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/2addr v1, v11

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    new-array v3, v2, [I

    new-array v5, v2, [Lcom/esotericsoftware/asm/Label;

    const/16 v18, 0x8

    add-int/lit8 v0, v0, 0x8

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v2, :cond_2b

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v21

    aput v21, v3, v4

    move/from16 v21, v2

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v11

    aget-object v2, v22, v2

    aput-object v2, v5, v4

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v21

    goto :goto_1f

    :cond_2b
    aget-object v1, v22, v1

    invoke-virtual {v15, v1, v3, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLookupSwitchInsn(Lcom/esotericsoftware/asm/Label;[I[Lcom/esotericsoftware/asm/Label;)V

    move v4, v0

    move/from16 v38, v6

    goto/16 :goto_23

    :pswitch_d
    const/16 v18, 0x8

    add-int/lit8 v4, v21, 0x4

    and-int/lit8 v0, v11, 0x3

    sub-int/2addr v4, v0

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v1, v11, v0

    add-int/lit8 v0, v4, 0x4

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v2, v4, 0x8

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    sub-int v3, v2, v0

    const/4 v5, 0x1

    add-int/2addr v3, v5

    new-array v5, v3, [Lcom/esotericsoftware/asm/Label;

    add-int/lit8 v4, v4, 0xc

    move/from16 v38, v6

    move v6, v4

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_2c

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v21

    add-int v21, v11, v21

    aget-object v21, v22, v21

    aput-object v21, v5, v4

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_2c
    aget-object v1, v22, v1

    invoke-virtual {v15, v0, v2, v1, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    move v4, v6

    goto :goto_23

    :pswitch_e
    move/from16 v38, v6

    const/16 v18, 0x8

    add-int/lit8 v4, v21, 0x1

    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, v21, 0x2

    aget-byte v1, v8, v4

    invoke-virtual {v15, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitIincInsn(II)V

    goto :goto_22

    :pswitch_f
    move/from16 v38, v6

    const/16 v18, 0x8

    add-int/lit8 v4, v21, 0x1

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_22

    :pswitch_10
    move/from16 v38, v6

    const/16 v18, 0x8

    add-int/lit8 v4, v21, 0x1

    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    add-int/lit8 v4, v21, 0x2

    goto :goto_23

    :pswitch_11
    move/from16 v38, v6

    const/4 v6, 0x1

    const/16 v18, 0x8

    add-int/lit8 v5, v5, -0x21

    add-int/lit8 v4, v21, 0x1

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v1, v11, v0

    aget-object v0, v22, v1

    invoke-virtual {v15, v5, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitJumpInsn(ILcom/esotericsoftware/asm/Label;)V

    :goto_21
    add-int/lit8 v4, v21, 0x5

    goto :goto_23

    :pswitch_12
    move/from16 v38, v6

    const/4 v6, 0x1

    const/16 v18, 0x8

    add-int/lit8 v4, v21, 0x1

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readShort(I)S

    move-result v0

    add-int v1, v11, v0

    aget-object v0, v22, v1

    invoke-virtual {v15, v5, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitJumpInsn(ILcom/esotericsoftware/asm/Label;)V

    :goto_22
    add-int/lit8 v4, v21, 0x3

    :goto_23
    move/from16 v34, v9

    move/from16 v0, v17

    move/from16 v1, v28

    move-object/from16 v9, v36

    :goto_24
    const/16 v25, 0x84

    goto/16 :goto_2c

    :pswitch_13
    move/from16 v38, v6

    const/4 v6, 0x1

    const/16 v18, 0x8

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v4, v21, 0x1

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    iget-object v1, v14, Lcom/esotericsoftware/asm/Context;->d:[I

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-virtual {v7, v2, v13}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/esotericsoftware/asm/Handle;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    new-array v4, v3, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x4

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v3, :cond_2d

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {v7, v6, v13}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    goto :goto_25

    :cond_2d
    iget-object v1, v7, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget v0, v1, v0

    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v1, v0, v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Handle;[Ljava/lang/Object;)V

    goto :goto_21

    :pswitch_14
    move/from16 v38, v6

    const/16 v18, 0x8

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v4, v21, 0x1

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, v8, v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2e

    const/4 v6, 0x1

    goto :goto_26

    :cond_2e
    const/4 v6, 0x0

    :goto_26
    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v7, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget v0, v1, v0

    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0xb6

    if-ge v5, v0, :cond_2f

    invoke-virtual {v15, v5, v2, v3, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v34, v9

    const/16 v25, 0x84

    move v9, v5

    goto :goto_27

    :cond_2f
    move-object/from16 v0, p1

    move v1, v5

    const/16 v25, 0x84

    move/from16 v34, v9

    move v9, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_27
    const/16 v0, 0xb9

    if-ne v9, v0, :cond_31

    add-int/lit8 v4, v21, 0x5

    goto/16 :goto_2b

    :pswitch_15
    move/from16 v38, v6

    move/from16 v34, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    move v9, v5

    add-int/lit8 v4, v21, 0x1

    invoke-virtual {v7, v4, v13}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v9, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_28

    :pswitch_16
    move/from16 v38, v6

    move/from16 v34, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    move v9, v5

    const/16 v0, 0x36

    if-le v9, v0, :cond_30

    add-int/lit8 v5, v9, -0x3b

    shr-int/lit8 v1, v5, 0x2

    add-int/2addr v1, v0

    and-int/lit8 v0, v5, 0x3

    invoke-virtual {v15, v1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_2a

    :cond_30
    add-int/lit8 v5, v9, -0x1a

    shr-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x15

    and-int/lit8 v1, v5, 0x3

    invoke-virtual {v15, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_2a

    :pswitch_17
    move/from16 v38, v6

    move/from16 v34, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    move v9, v5

    add-int/lit8 v4, v21, 0x1

    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v15, v9, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_29

    :pswitch_18
    move/from16 v38, v6

    move/from16 v34, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    move v9, v5

    add-int/lit8 v4, v21, 0x1

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readShort(I)S

    move-result v0

    invoke-virtual {v15, v9, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_31
    :goto_28
    add-int/lit8 v4, v21, 0x3

    goto :goto_2b

    :pswitch_19
    move/from16 v38, v6

    move/from16 v34, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    move v9, v5

    add-int/lit8 v4, v21, 0x1

    aget-byte v0, v8, v4

    invoke-virtual {v15, v9, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitIntInsn(II)V

    :goto_29
    add-int/lit8 v4, v21, 0x2

    goto :goto_2b

    :pswitch_1a
    move/from16 v38, v6

    move/from16 v34, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    move v9, v5

    invoke-virtual {v15, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    :goto_2a
    add-int/lit8 v4, v21, 0x1

    :goto_2b
    move/from16 v0, v17

    move/from16 v1, v28

    move-object/from16 v9, v36

    :goto_2c
    if-eqz v9, :cond_35

    array-length v2, v9

    if-ge v0, v2, :cond_35

    if-gt v1, v11, :cond_35

    if-ne v1, v11, :cond_32

    aget v1, v9, v0

    invoke-virtual {v7, v14, v1}, Lcom/esotericsoftware/asm/ClassReader;->f(Lcom/esotericsoftware/asm/Context;I)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    iget v3, v14, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v5, v14, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v7, v1, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v15, v3, v5, v1, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsnAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    invoke-virtual {v7, v2, v13, v6, v1}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    :cond_32
    add-int/lit8 v0, v0, 0x1

    array-length v1, v9

    if-ge v0, v1, :cond_34

    aget v1, v9, v0

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v1

    const/16 v2, 0x43

    if-ge v1, v2, :cond_33

    goto :goto_2d

    :cond_33
    aget v1, v9, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move v1, v2

    goto :goto_2c

    :cond_34
    :goto_2d
    const/4 v1, -0x1

    goto :goto_2c

    :cond_35
    move/from16 v2, v19

    move/from16 v3, v29

    move-object/from16 v6, v37

    :goto_2e
    if-eqz v6, :cond_39

    array-length v5, v6

    if-ge v2, v5, :cond_39

    if-gt v3, v11, :cond_39

    if-ne v3, v11, :cond_36

    aget v3, v6, v2

    invoke-virtual {v7, v14, v3}, Lcom/esotericsoftware/asm/ClassReader;->f(Lcom/esotericsoftware/asm/Context;I)I

    move-result v3

    add-int/lit8 v5, v3, 0x2

    move/from16 v17, v0

    iget v0, v14, Lcom/esotericsoftware/asm/Context;->i:I

    move/from16 v19, v1

    iget-object v1, v14, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v7, v3, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v10

    const/4 v10, 0x0

    invoke-virtual {v15, v0, v1, v3, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsnAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7, v5, v13, v1, v0}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    goto :goto_2f

    :cond_36
    move/from16 v17, v0

    move/from16 v19, v1

    move-object/from16 v21, v10

    const/4 v10, 0x0

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    array-length v0, v6

    if-ge v2, v0, :cond_38

    aget v0, v6, v2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v0

    const/16 v1, 0x43

    if-ge v0, v1, :cond_37

    goto :goto_30

    :cond_37
    aget v0, v6, v2

    const/16 v28, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move v3, v0

    goto :goto_31

    :cond_38
    const/16 v1, 0x43

    :goto_30
    const/16 v28, 0x1

    const/4 v3, -0x1

    :goto_31
    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v10, v21

    goto :goto_2e

    :cond_39
    move/from16 v17, v0

    move/from16 v19, v1

    move-object/from16 v21, v10

    const/16 v1, 0x43

    const/4 v10, 0x0

    const/16 v28, 0x1

    move/from16 v29, v3

    move-object/from16 v37, v6

    move-object/from16 v36, v9

    move/from16 v25, v12

    move/from16 v28, v19

    move/from16 v39, v20

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move/from16 v12, v31

    move/from16 v11, v32

    move/from16 v9, v33

    move/from16 v21, v34

    move/from16 v6, v38

    const/16 v10, 0x43

    const/4 v15, -0x1

    move/from16 v19, v2

    goto/16 :goto_19

    :cond_3a
    move-object/from16 v15, p1

    move-object/from16 v22, v5

    move/from16 v33, v9

    move/from16 v32, v11

    move/from16 v31, v12

    move-object/from16 v9, v36

    move-object/from16 v6, v37

    const/4 v10, 0x0

    const/16 v28, 0x1

    aget-object v0, v22, v33

    if-eqz v0, :cond_3b

    invoke-virtual {v15, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    :cond_3b
    iget v0, v14, Lcom/esotericsoftware/asm/Context;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_40

    move/from16 v0, v23

    if-eqz v0, :cond_40

    move/from16 v1, v24

    if-eqz v1, :cond_3d

    add-int/lit8 v24, v1, 0x2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v3, v1, [I

    move/from16 v2, v24

    :goto_32
    if-lez v1, :cond_3c

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v2, 0x6

    aput v4, v3, v1

    const/4 v4, -0x1

    add-int/2addr v1, v4

    add-int/lit8 v5, v2, 0x8

    invoke-virtual {v7, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v3, v1

    add-int/2addr v1, v4

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v2, v2, 0xa

    goto :goto_32

    :cond_3c
    move-object v8, v3

    goto :goto_33

    :cond_3d
    const/4 v8, 0x0

    :goto_33
    add-int/lit8 v23, v0, 0x2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move v11, v0

    move/from16 v12, v23

    :goto_34
    if-lez v11, :cond_40

    invoke-virtual {v7, v12}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v12, 0x2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v12, 0x8

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    if-eqz v8, :cond_3f

    const/4 v2, 0x0

    :goto_35
    array-length v3, v8

    if-ge v2, v3, :cond_3f

    aget v3, v8, v2

    if-ne v3, v0, :cond_3e

    add-int/lit8 v3, v2, 0x1

    aget v3, v8, v3

    if-ne v3, v5, :cond_3e

    add-int/lit8 v2, v2, 0x2

    aget v2, v8, v2

    invoke-virtual {v7, v2, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_36

    :cond_3e
    add-int/lit8 v2, v2, 0x3

    goto :goto_35

    :cond_3f
    const/4 v3, 0x0

    :goto_36
    add-int/lit8 v2, v12, 0x4

    invoke-virtual {v7, v2, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v12, 0x6

    invoke-virtual {v7, v4, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    aget-object v16, v22, v0

    add-int/2addr v0, v1

    aget-object v17, v22, v0

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v4

    move-object/from16 v4, v16

    move/from16 v16, v5

    move-object/from16 v5, v17

    move-object/from16 v40, v6

    const/4 v15, 0x1

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;I)V

    add-int/lit8 v12, v12, 0xa

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v15, p1

    move-object/from16 v6, v40

    const/16 v28, 0x1

    goto :goto_34

    :cond_40
    move-object/from16 v40, v6

    const/4 v15, 0x1

    const/16 v0, 0x20

    if-eqz v9, :cond_42

    const/4 v2, 0x0

    :goto_37
    array-length v1, v9

    if-ge v2, v1, :cond_42

    aget v1, v9, v2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v1

    shr-int/2addr v1, v15

    if-ne v1, v0, :cond_41

    aget v1, v9, v2

    invoke-virtual {v7, v14, v1}, Lcom/esotericsoftware/asm/ClassReader;->f(Lcom/esotericsoftware/asm/Context;I)I

    move-result v1

    add-int/lit8 v3, v1, 0x2

    iget v4, v14, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v5, v14, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    iget-object v11, v14, Lcom/esotericsoftware/asm/Context;->l:[Lcom/esotericsoftware/asm/Label;

    iget-object v12, v14, Lcom/esotericsoftware/asm/Context;->m:[Lcom/esotericsoftware/asm/Label;

    iget-object v6, v14, Lcom/esotericsoftware/asm/Context;->n:[I

    invoke-virtual {v7, v1, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x1

    move-object/from16 v8, p1

    move-object/from16 v17, v9

    move v9, v4

    const/4 v4, 0x0

    move-object v10, v5

    move/from16 v5, v32

    move/from16 v4, v31

    move-object v0, v13

    move-object v13, v6

    move-object v6, v14

    move-object v14, v1

    move-object/from16 v1, p1

    const/4 v4, 0x1

    move/from16 v15, v16

    invoke-virtual/range {v8 .. v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLocalVariableAnnotation(ILcom/esotericsoftware/asm/TypePath;[Lcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;[ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v8

    invoke-virtual {v7, v3, v0, v4, v8}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    goto :goto_38

    :cond_41
    move-object/from16 v1, p1

    move-object/from16 v17, v9

    move-object v0, v13

    move-object v6, v14

    move/from16 v5, v32

    const/4 v4, 0x1

    :goto_38
    add-int/lit8 v2, v2, 0x1

    move-object v13, v0

    move/from16 v32, v5

    move-object v14, v6

    move-object/from16 v9, v17

    const/16 v0, 0x20

    const/4 v10, 0x0

    const/4 v15, 0x1

    goto :goto_37

    :cond_42
    move-object/from16 v1, p1

    move-object v0, v13

    move-object v6, v14

    move/from16 v5, v32

    const/4 v4, 0x1

    move-object/from16 v3, v40

    if-eqz v3, :cond_44

    const/4 v2, 0x0

    :goto_39
    array-length v8, v3

    if-ge v2, v8, :cond_44

    aget v8, v3, v2

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v8

    shr-int/2addr v8, v4

    const/16 v15, 0x20

    if-ne v8, v15, :cond_43

    aget v8, v3, v2

    invoke-virtual {v7, v6, v8}, Lcom/esotericsoftware/asm/ClassReader;->f(Lcom/esotericsoftware/asm/Context;I)I

    move-result v8

    add-int/lit8 v14, v8, 0x2

    iget v9, v6, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v10, v6, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    iget-object v11, v6, Lcom/esotericsoftware/asm/Context;->l:[Lcom/esotericsoftware/asm/Label;

    iget-object v12, v6, Lcom/esotericsoftware/asm/Context;->m:[Lcom/esotericsoftware/asm/Label;

    iget-object v13, v6, Lcom/esotericsoftware/asm/Context;->n:[I

    invoke-virtual {v7, v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v8, p1

    move-object/from16 v32, v3

    move v3, v14

    move-object/from16 v14, v16

    const/16 v16, 0x20

    move/from16 v15, v17

    invoke-virtual/range {v8 .. v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLocalVariableAnnotation(ILcom/esotericsoftware/asm/TypePath;[Lcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;[ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v8

    invoke-virtual {v7, v3, v0, v4, v8}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    goto :goto_3a

    :cond_43
    move-object/from16 v32, v3

    const/16 v16, 0x20

    :goto_3a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v32

    goto :goto_39

    :cond_44
    move-object/from16 v0, v26

    :goto_3b
    if-eqz v0, :cond_45

    iget-object v2, v0, Lcom/esotericsoftware/asm/Attribute;->b:Lcom/esotericsoftware/asm/Attribute;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/esotericsoftware/asm/Attribute;->b:Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V

    move-object v0, v2

    goto :goto_3b

    :cond_45
    move/from16 v0, v31

    invoke-virtual {v1, v0, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final o(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;IZ)[I
    .locals 11

    iget-object v0, p2, Lcom/esotericsoftware/asm/Context;->c:[C

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v2, v1, [I

    add-int/lit8 p3, p3, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aput p3, v2, v3

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x18

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-eq v5, v6, :cond_2

    const/16 v7, 0x40

    if-eq v5, v7, :cond_1

    const/16 v7, 0x41

    if-eq v5, v7, :cond_1

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    :cond_0
    add-int/lit8 p3, p3, 0x3

    goto :goto_2

    :pswitch_0
    add-int/lit8 p3, p3, 0x4

    goto :goto_2

    :pswitch_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, p3, 0x1

    invoke-virtual {p0, v7}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    :goto_1
    if-lez v7, :cond_0

    add-int/lit8 v8, p3, 0x3

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    add-int/lit8 v9, p3, 0x5

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    iget-object v10, p2, Lcom/esotericsoftware/asm/Context;->h:[Lcom/esotericsoftware/asm/Label;

    invoke-virtual {p0, v8, v10}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    add-int/2addr v8, v9

    iget-object v9, p2, Lcom/esotericsoftware/asm/Context;->h:[Lcom/esotericsoftware/asm/Label;

    invoke-virtual {p0, v8, v9}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    add-int/lit8 p3, p3, 0x6

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_2
    :pswitch_2
    add-int/lit8 p3, p3, 0x2

    :goto_2
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v7

    const/16 v8, 0x42

    const/4 v9, 0x0

    if-ne v5, v8, :cond_4

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    new-instance v9, Lcom/esotericsoftware/asm/TypePath;

    iget-object v5, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    invoke-direct {v9, v5, p3}, Lcom/esotericsoftware/asm/TypePath;-><init>([BI)V

    :goto_3
    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    add-int/2addr p3, v7

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p0, p3, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v4, v9, p3, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTryCatchAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p3

    invoke-virtual {p0, v5, v0, v6, p3}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p3

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr p3, v7

    invoke-virtual {p0, p3, v0, v6, v9}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final p(Lcom/esotericsoftware/asm/ClassVisitor;Lcom/esotericsoftware/asm/Context;I)I
    .locals 31

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v0, p3

    iget-object v10, v9, Lcom/esotericsoftware/asm/Context;->c:[C

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    iput v1, v9, Lcom/esotericsoftware/asm/Context;->e:I

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/esotericsoftware/asm/Context;->f:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v8, v1, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/esotericsoftware/asm/Context;->g:Ljava/lang/String;

    add-int/lit8 v11, v0, 0x6

    invoke-virtual {v8, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move v14, v0

    move v15, v11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_0
    if-lez v14, :cond_10

    add-int/lit8 v12, v15, 0x2

    invoke-virtual {v8, v12, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    move/from16 v21, v0

    const-string v0, "Code"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v9, Lcom/esotericsoftware/asm/Context;->b:I

    const/4 v12, 0x1

    and-int/2addr v0, v12

    if-nez v0, :cond_0

    add-int/lit8 v0, v15, 0x8

    move/from16 v19, v0

    :goto_1
    move/from16 v0, v21

    goto/16 :goto_7

    :cond_0
    move/from16 v27, v1

    move/from16 v28, v2

    move v12, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v22, v7

    :goto_2
    move/from16 v26, v21

    move-object/from16 v21, v6

    goto/16 :goto_6

    :cond_1
    const-string v0, "Exceptions"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, v15, 0x8

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    add-int/lit8 v12, v15, 0xa

    move/from16 v20, v1

    move v1, v12

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v0, :cond_2

    invoke-virtual {v8, v1, v10}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v12

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    move/from16 v17, v1

    goto :goto_4

    :cond_3
    move/from16 v20, v1

    const-string v0, "Signature"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v15, 0x8

    invoke-virtual {v8, v0, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    :goto_4
    move/from16 v1, v20

    goto :goto_1

    :cond_4
    const-string v0, "Deprecated"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v9, Lcom/esotericsoftware/asm/Context;->e:I

    const/high16 v1, 0x20000

    :goto_5
    or-int/2addr v0, v1

    iput v0, v9, Lcom/esotericsoftware/asm/Context;->e:I

    move/from16 v28, v2

    move v12, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v22, v7

    move/from16 v27, v20

    goto :goto_2

    :cond_5
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v5, v15, 0x8

    goto :goto_4

    :cond_6
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v2, v15, 0x8

    goto :goto_4

    :cond_7
    const-string v0, "AnnotationDefault"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v3, v15, 0x8

    goto :goto_4

    :cond_8
    const-string v0, "Synthetic"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v9, Lcom/esotericsoftware/asm/Context;->e:I

    const v1, 0x41000

    goto :goto_5

    :cond_9
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v4, v15, 0x8

    goto :goto_4

    :cond_a
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v1, v15, 0x8

    goto/16 :goto_1

    :cond_b
    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    add-int/lit8 v18, v15, 0x8

    goto :goto_4

    :cond_c
    const-string v0, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 v0, v15, 0x8

    move/from16 v1, v20

    goto :goto_7

    :cond_d
    const-string v0, "MethodParameters"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    add-int/lit8 v16, v15, 0x8

    goto/16 :goto_4

    :cond_e
    iget-object v1, v9, Lcom/esotericsoftware/asm/Context;->a:[Lcom/esotericsoftware/asm/Attribute;

    add-int/lit8 v22, v15, 0x8

    add-int/lit8 v0, v15, 0x4

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v23

    const/16 v24, -0x1

    const/16 v25, 0x0

    move/from16 v26, v21

    move-object/from16 v0, p0

    move/from16 v27, v20

    move/from16 v28, v2

    move-object v2, v12

    move v12, v3

    move/from16 v3, v22

    move/from16 v29, v4

    move/from16 v4, v23

    move/from16 v30, v5

    move-object v5, v10

    move-object/from16 v21, v6

    move/from16 v6, v24

    move-object/from16 v22, v7

    move-object/from16 v7, v25

    invoke-virtual/range {v0 .. v7}, Lcom/esotericsoftware/asm/ClassReader;->h([Lcom/esotericsoftware/asm/Attribute;Ljava/lang/String;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;

    move-result-object v0

    if-eqz v0, :cond_f

    iput-object v13, v0, Lcom/esotericsoftware/asm/Attribute;->b:Lcom/esotericsoftware/asm/Attribute;

    move-object v13, v0

    :cond_f
    :goto_6
    move v3, v12

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v4, v29

    move/from16 v5, v30

    :goto_7
    add-int/lit8 v12, v15, 0x4

    invoke-virtual {v8, v12}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x6

    add-int/2addr v15, v12

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    :cond_10
    move/from16 v26, v0

    move/from16 v27, v1

    move/from16 v28, v2

    move v12, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    add-int/lit8 v15, v15, 0x2

    iget v1, v9, Lcom/esotericsoftware/asm/Context;->e:I

    iget-object v2, v9, Lcom/esotericsoftware/asm/Context;->f:Ljava/lang/String;

    iget-object v3, v9, Lcom/esotericsoftware/asm/Context;->g:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v4, v22

    move-object/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v0

    if-nez v0, :cond_11

    return v15

    :cond_11
    instance-of v1, v0, Lcom/esotericsoftware/asm/MethodWriter;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/esotericsoftware/asm/MethodWriter;

    iget-object v2, v1, Lcom/esotericsoftware/asm/MethodWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v2, v2, Lcom/esotericsoftware/asm/ClassWriter;->a:Lcom/esotericsoftware/asm/ClassReader;

    if-ne v2, v8, :cond_16

    iget-object v2, v1, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    move-object/from16 v7, v22

    if-ne v7, v2, :cond_16

    move-object/from16 v6, v21

    if-nez v6, :cond_12

    iget v2, v1, Lcom/esotericsoftware/asm/MethodWriter;->i:I

    if-nez v2, :cond_15

    goto :goto_9

    :cond_12
    array-length v2, v6

    iget v3, v1, Lcom/esotericsoftware/asm/MethodWriter;->i:I

    if-ne v2, v3, :cond_15

    array-length v2, v6

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_8
    if-ltz v2, :cond_14

    add-int/lit8 v3, v17, -0x2

    iget-object v4, v1, Lcom/esotericsoftware/asm/MethodWriter;->j:[I

    aget v4, v4, v2

    invoke-virtual {v8, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    if-eq v4, v5, :cond_13

    goto :goto_a

    :cond_13
    add-int/lit8 v2, v2, -0x1

    move/from16 v17, v3

    goto :goto_8

    :cond_14
    :goto_9
    const/4 v2, 0x1

    goto :goto_b

    :cond_15
    :goto_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_16

    iput v11, v1, Lcom/esotericsoftware/asm/MethodWriter;->g:I

    sub-int v0, v15, v11

    iput v0, v1, Lcom/esotericsoftware/asm/MethodWriter;->h:I

    return v15

    :cond_16
    if-eqz v16, :cond_17

    iget-object v1, v8, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    aget-byte v1, v1, v16

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v2, v16

    :goto_c
    if-lez v1, :cond_17

    invoke-virtual {v8, v2, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v8, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_c

    :cond_17
    if-eqz v12, :cond_18

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAnnotationDefault()Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v8, v12, v10, v2, v1}, Lcom/esotericsoftware/asm/ClassReader;->c(I[CLjava/lang/String;Lcom/esotericsoftware/asm/AnnotationVisitor;)I

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitEnd()V

    :cond_18
    move/from16 v5, v30

    if-eqz v5, :cond_19

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v5, v5, 0x2

    :goto_d
    if-lez v1, :cond_19

    add-int/lit8 v2, v5, 0x2

    invoke-virtual {v8, v5, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v3

    invoke-virtual {v8, v2, v10, v4, v3}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_19
    move/from16 v4, v29

    if-eqz v4, :cond_1a

    invoke-virtual {v8, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v4, v4, 0x2

    :goto_e
    if-lez v1, :cond_1a

    add-int/lit8 v2, v4, 0x2

    invoke-virtual {v8, v4, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v10, v4, v3}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    move v4, v2

    goto :goto_e

    :cond_1a
    move/from16 v2, v28

    if-eqz v2, :cond_1b

    invoke-virtual {v8, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v2, 0x2

    :goto_f
    if-lez v1, :cond_1b

    invoke-virtual {v8, v9, v2}, Lcom/esotericsoftware/asm/ClassReader;->f(Lcom/esotericsoftware/asm/Context;I)I

    move-result v2

    add-int/lit8 v3, v2, 0x2

    iget v4, v9, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v5, v9, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v8, v2, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v2, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v2

    invoke-virtual {v8, v3, v10, v6, v2}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_1b
    move/from16 v1, v27

    if-eqz v1, :cond_1c

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_10
    if-lez v2, :cond_1c

    invoke-virtual {v8, v9, v1}, Lcom/esotericsoftware/asm/ClassReader;->f(Lcom/esotericsoftware/asm/Context;I)I

    move-result v1

    add-int/lit8 v3, v1, 0x2

    iget v4, v9, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v5, v9, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v8, v1, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v10, v4, v1}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    :cond_1c
    const/4 v4, 0x1

    move/from16 v1, v18

    if-eqz v1, :cond_1d

    invoke-virtual {v8, v0, v9, v1, v4}, Lcom/esotericsoftware/asm/ClassReader;->q(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;IZ)V

    :cond_1d
    move/from16 v1, v26

    if-eqz v1, :cond_1e

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v9, v1, v2}, Lcom/esotericsoftware/asm/ClassReader;->q(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;IZ)V

    :cond_1e
    :goto_11
    if-eqz v13, :cond_1f

    iget-object v1, v13, Lcom/esotericsoftware/asm/Attribute;->b:Lcom/esotericsoftware/asm/Attribute;

    const/4 v2, 0x0

    iput-object v2, v13, Lcom/esotericsoftware/asm/Attribute;->b:Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V

    move-object v13, v1

    goto :goto_11

    :cond_1f
    move/from16 v13, v19

    if-eqz v13, :cond_20

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    invoke-virtual {v8, v0, v9, v13}, Lcom/esotericsoftware/asm/ClassReader;->m(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;I)V

    :cond_20
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return v15
.end method

.method public final q(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;IZ)V
    .locals 6

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    iget-object v0, p2, Lcom/esotericsoftware/asm/Context;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/esotericsoftware/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/esotericsoftware/asm/Type;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const-string v4, "Ljava/lang/Synthetic;"

    invoke-virtual {p1, v3, v4, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitEnd()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/esotericsoftware/asm/Context;->c:[C

    :goto_1
    add-int v2, p3, v0

    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_2
    if-lez v2, :cond_2

    invoke-virtual {p0, v1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v4

    add-int/lit8 v1, v1, 0x2

    const/4 v5, 0x1

    invoke-virtual {p0, v1, p2, v5, v4}, Lcom/esotericsoftware/asm/ClassReader;->d(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public readByte(I)I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public readClass(I[C)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget p1, v0, p1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v3

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    aget p1, v0, p1

    iget-object v2, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v4, p1, -0x1

    aget-byte v2, v2, v4

    const/16 v4, 0xb

    if-ne v2, v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    new-instance p1, Lcom/esotericsoftware/asm/Handle;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/esotericsoftware/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/esotericsoftware/asm/Type;->getObjectType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readLong(I)J

    move-result-wide p1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    new-instance p2, Ljava/lang/Float;

    invoke-direct {p2, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p2

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/esotericsoftware/asm/Type;->getMethodType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readInt(I)I
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method public readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;
    .locals 1

    aget-object v0, p2, p1

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v0, p2, p1

    :cond_0
    aget-object p1, p2, p1

    return-object p1
.end method

.method public readLong(I)J
    .locals 6

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readShort(I)S
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-short p1, p1

    return p1
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->c:[Ljava/lang/String;

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget v1, v1, v0

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-virtual {p0, v2, v1, p2}, Lcom/esotericsoftware/asm/ClassReader;->i(II[C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readUnsignedShort(I)I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method
