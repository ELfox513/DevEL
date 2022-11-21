.class public abstract Lcom/esotericsoftware/reflectasm/FieldAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Ljava/lang/Class;

.field public c:[Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/esotericsoftware/asm/ClassWriter;)V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "<init>"

    const-string v3, "()V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb7

    const-string v1, "com/esotericsoftware/reflectasm/FieldAccess"

    const-string v2, "<init>"

    const-string v3, "()V"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method public static b(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const-string v2, "get"

    const-string v3, "(Ljava/lang/Object;I)Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v0, 0x15

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/esotericsoftware/asm/Label;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    new-instance v5, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v5}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/Label;-><init>()V

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v3, v5, v4, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    aget-object v6, v2, v3

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v6, 0x19

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0xc0

    invoke-virtual {p0, v6, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v6, 0xb4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/esotericsoftware/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v5

    const-string v6, "valueOf"

    const/16 v7, 0xb8

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v5, "java/lang/Double"

    const-string v8, "(D)Ljava/lang/Double;"

    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string v5, "java/lang/Long"

    const-string v8, "(J)Ljava/lang/Long;"

    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v5, "java/lang/Float"

    const-string v8, "(F)Ljava/lang/Float;"

    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v5, "java/lang/Integer"

    const-string v8, "(I)Ljava/lang/Integer;"

    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const-string v5, "java/lang/Short"

    const-string v8, "(S)Ljava/lang/Short;"

    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const-string v5, "java/lang/Byte"

    const-string v8, "(B)Ljava/lang/Byte;"

    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    const-string v5, "java/lang/Character"

    const-string v8, "(C)Ljava/lang/Character;"

    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    const-string v5, "java/lang/Boolean"

    const-string v8, "(Z)Ljava/lang/Boolean;"

    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v5, 0xb0

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    const/4 v0, 0x6

    :goto_3
    invoke-static {p0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->g(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static c(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lcom/esotericsoftware/asm/Type;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v2

    const/16 v3, 0xac

    packed-switch v2, :pswitch_data_0

    const/16 v3, 0xb0

    const-string v2, "get"

    goto :goto_0

    :pswitch_0
    const/16 v3, 0xaf

    const-string v2, "getDouble"

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xad

    const-string v2, "getLong"

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xae

    const-string v2, "getFloat"

    goto :goto_0

    :pswitch_3
    const-string v2, "getInt"

    goto :goto_0

    :pswitch_4
    const-string v2, "getShort"

    goto :goto_0

    :pswitch_5
    const-string v2, "getByte"

    goto :goto_0

    :pswitch_6
    const-string v2, "getChar"

    goto :goto_0

    :pswitch_7
    const-string v2, "getBoolean"

    :goto_0
    move-object v6, v2

    const/4 v5, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Ljava/lang/Object;I)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v4, 0x15

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v5, [Lcom/esotericsoftware/asm/Label;

    new-instance v7, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v7}, Lcom/esotericsoftware/asm/Label;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_1
    const/4 v15, 0x1

    if-ge v9, v5, :cond_1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Field;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v10

    move-object/from16 v14, p3

    invoke-virtual {v10, v14}, Lcom/esotericsoftware/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v10}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v10, v6, v9

    goto :goto_2

    :cond_0
    aput-object v7, v6, v9

    const/16 v16, 0x1

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v14, p3

    new-instance v9, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v9}, Lcom/esotericsoftware/asm/Label;-><init>()V

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v2, v8, v10, v9, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    :goto_3
    if-ge v8, v5, :cond_3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Ljava/lang/reflect/Field;

    aget-object v10, v6, v8

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    aget-object v10, v6, v8

    invoke-virtual {v2, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v10, v2

    move/from16 v14, v18

    const/4 v4, 0x1

    move-object/from16 v15, v19

    invoke-virtual/range {v10 .. v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v10, 0x19

    invoke-virtual {v2, v10, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0xc0

    move-object/from16 v11, p1

    invoke-virtual {v2, v10, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v10, 0xb4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2e

    const/16 v14, 0x2f

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v10, v12, v13, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_4

    :cond_2
    move-object/from16 v11, p1

    const/4 v4, 0x1

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v14, p3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    if-eqz v16, :cond_4

    invoke-virtual {v2, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-virtual/range {v10 .. v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->h(Lcom/esotericsoftware/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    :cond_4
    invoke-virtual {v2, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-virtual/range {v10 .. v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 v4, 0x5

    goto :goto_5

    :cond_5
    const/4 v4, 0x6

    :goto_5
    invoke-static {v2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->g(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static d(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v2, 0x1

    const-string v3, "getString"

    const-string v4, "(Ljava/lang/Object;I)Ljava/lang/String;"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Lcom/esotericsoftware/asm/Label;

    new-instance v5, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v5}, Lcom/esotericsoftware/asm/Label;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v7, v3, :cond_1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v8}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v8, v4, v7

    goto :goto_1

    :cond_0
    aput-object v5, v4, v7

    const/4 v13, 0x1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-instance v15, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v15}, Lcom/esotericsoftware/asm/Label;-><init>()V

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v1, v6, v7, v15, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    :goto_2
    if-ge v6, v3, :cond_3

    aget-object v7, v4, v6

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/reflect/Field;

    aget-object v7, v4, v6

    invoke-virtual {v1, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v7, 0x19

    invoke-virtual {v1, v7, v14}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xc0

    move-object/from16 v8, p1

    invoke-virtual {v1, v7, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v7, 0xb4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2e

    const/16 v11, 0x2f

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Ljava/lang/String;"

    invoke-virtual {v1, v7, v9, v10, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xb0

    invoke-virtual {v1, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_3

    :cond_2
    move-object/from16 v8, p1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual {v1, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const-string v0, "String"

    invoke-static {v1, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->h(Lcom/esotericsoftware/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    :cond_4
    invoke-virtual {v1, v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    const/4 v2, 0x6

    :goto_4
    invoke-static {v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->g(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    const/4 v0, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method public static e(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const-string v2, "set"

    const-string v3, "(Ljava/lang/Object;ILjava/lang/Object;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v0, 0x15

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/esotericsoftware/asm/Label;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    new-instance v5, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v5}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/Label;-><init>()V

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v3, v5, v4, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v12

    aget-object v6, v2, v3

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v6, 0x19

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xc0

    invoke-virtual {p0, v7, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/4 v8, 0x3

    invoke-virtual {p0, v6, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v12}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v6

    const/16 v8, 0xb6

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {v12}, Lcom/esotericsoftware/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v12}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v6, "java/lang/Double"

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "doubleValue"

    const-string v9, "()D"

    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v6, "java/lang/Long"

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "longValue"

    const-string v9, "()J"

    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const-string v6, "java/lang/Float"

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "floatValue"

    const-string v9, "()F"

    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const-string v6, "java/lang/Integer"

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "intValue"

    const-string v9, "()I"

    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    const-string v6, "java/lang/Short"

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "shortValue"

    const-string v9, "()S"

    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    const-string v6, "java/lang/Byte"

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "byteValue"

    const-string v9, "()B"

    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_8
    const-string v6, "java/lang/Character"

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "charValue"

    const-string v9, "()C"

    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_9
    const-string v6, "java/lang/Boolean"

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "booleanValue"

    const-string v9, "()Z"

    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v6, 0xb5

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v5, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xb1

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    const/4 v0, 0x6

    :goto_3
    invoke-static {p0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->g(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
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

.method public static f(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lcom/esotericsoftware/asm/Type;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v2

    const/16 v3, 0x19

    const/16 v5, 0x15

    const/4 v6, 0x4

    packed-switch v2, :pswitch_data_0

    const-string v2, "set"

    move-object v8, v2

    const/16 v2, 0x19

    goto :goto_2

    :pswitch_0
    const/16 v2, 0x18

    const-string v6, "setDouble"

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x16

    const-string v6, "setLong"

    :goto_0
    move-object v8, v6

    const/4 v12, 0x5

    goto :goto_3

    :pswitch_2
    const/16 v2, 0x17

    const-string v7, "setFloat"

    move-object v8, v7

    goto :goto_2

    :pswitch_3
    const-string v2, "setInt"

    goto :goto_1

    :pswitch_4
    const-string v2, "setShort"

    goto :goto_1

    :pswitch_5
    const-string v2, "setByte"

    goto :goto_1

    :pswitch_6
    const-string v2, "setChar"

    goto :goto_1

    :pswitch_7
    const-string v2, "setBoolean"

    :goto_1
    move-object v8, v2

    const/16 v2, 0x15

    :goto_2
    const/4 v12, 0x4

    :goto_3
    const/4 v7, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(Ljava/lang/Object;I"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")V"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v7, v5, [Lcom/esotericsoftware/asm/Label;

    new-instance v8, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v8}, Lcom/esotericsoftware/asm/Label;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    const/4 v15, 0x1

    if-ge v10, v5, :cond_1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Field;

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v13

    move-object/from16 v14, p3

    invoke-virtual {v13, v14}, Lcom/esotericsoftware/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v13, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v13}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v13, v7, v10

    goto :goto_5

    :cond_0
    aput-object v8, v7, v10

    const/4 v11, 0x1

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_1
    move-object/from16 v14, p3

    new-instance v10, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v10}, Lcom/esotericsoftware/asm/Label;-><init>()V

    add-int/lit8 v13, v5, -0x1

    invoke-virtual {v6, v9, v13, v10, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    :goto_6
    if-ge v9, v5, :cond_3

    aget-object v13, v7, v9

    invoke-virtual {v13, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v19, v13

    check-cast v19, Ljava/lang/reflect/Field;

    aget-object v13, v7, v9

    invoke-virtual {v6, v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v6

    move/from16 v14, v16

    const/4 v4, 0x1

    move/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, v20

    move-object/from16 v18, v21

    invoke-virtual/range {v13 .. v18}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xc0

    move-object/from16 v14, p1

    invoke-virtual {v6, v13, v14}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/4 v13, 0x3

    invoke-virtual {v6, v2, v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xb5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v15, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v13, v3, v4, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb1

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_7

    :cond_2
    move-object/from16 v14, p1

    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v14, p3

    const/16 v3, 0x19

    const/4 v15, 0x1

    goto :goto_6

    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v6, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v6

    invoke-virtual/range {v13 .. v18}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->h(Lcom/esotericsoftware/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    :cond_4
    invoke-virtual {v6, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v6

    invoke-virtual/range {v13 .. v18}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 v4, 0x5

    goto :goto_8

    :cond_5
    const/4 v4, 0x6

    :goto_8
    invoke-static {v6}, Lcom/esotericsoftware/reflectasm/FieldAccess;->g(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v0

    invoke-virtual {v0, v4, v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static g(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;
    .locals 8

    const/16 v0, 0xbb

    const-string v1, "java/lang/IllegalArgumentException"

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v2, 0x59

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const-string v3, "java/lang/StringBuilder"

    invoke-virtual {p0, v0, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "Field not found: "

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb7

    const-string v2, "<init>"

    const-string v4, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    const-string v6, "append"

    const-string v7, "(I)Ljava/lang/StringBuilder;"

    invoke-virtual {p0, v5, v3, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "toString"

    const-string v7, "()Ljava/lang/String;"

    invoke-virtual {p0, v5, v3, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    return-object p0
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/FieldAccess;
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    :goto_0
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "FieldAccess"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reflectasm."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-static {p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->d(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->g(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_6

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/esotericsoftware/asm/ClassWriter;

    invoke-direct {v6, v3}, Lcom/esotericsoftware/asm/ClassWriter;-><init>(I)V

    const v9, 0x3002d

    const/16 v10, 0x21

    const/4 v12, 0x0

    const-string v13, "com/esotericsoftware/reflectasm/FieldAccess"

    const/4 v14, 0x0

    move-object v8, v6

    invoke-virtual/range {v8 .. v14}, Lcom/esotericsoftware/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v6}, Lcom/esotericsoftware/reflectasm/FieldAccess;->a(Lcom/esotericsoftware/asm/ClassWriter;)V

    invoke-static {v6, v1, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->b(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v6, v1, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->e(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v3, Lcom/esotericsoftware/asm/Type;->BOOLEAN_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->c(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->f(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    sget-object v3, Lcom/esotericsoftware/asm/Type;->BYTE_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->c(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->f(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    sget-object v3, Lcom/esotericsoftware/asm/Type;->SHORT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->c(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->f(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    sget-object v3, Lcom/esotericsoftware/asm/Type;->INT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->c(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->f(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    sget-object v3, Lcom/esotericsoftware/asm/Type;->LONG_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->c(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->f(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    sget-object v3, Lcom/esotericsoftware/asm/Type;->DOUBLE_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->c(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->f(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    sget-object v3, Lcom/esotericsoftware/asm/Type;->FLOAT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->c(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->f(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    sget-object v3, Lcom/esotericsoftware/asm/Type;->CHAR_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->c(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->f(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    invoke-static {v6, v1, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->d(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v6}, Lcom/esotericsoftware/asm/ClassWriter;->visitEnd()V

    invoke-virtual {v6}, Lcom/esotericsoftware/asm/ClassWriter;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->b(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v6

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/esotericsoftware/reflectasm/FieldAccess;

    iput-object v2, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->a:[Ljava/lang/String;

    iput-object v4, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->b:[Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->c:[Ljava/lang/reflect/Field;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error constructing field access class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The type must not be the Object class, an interface, a primitive type, or void."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static h(Lcom/esotericsoftware/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;
    .locals 7

    const/16 v0, 0xbb

    const-string v1, "java/lang/IllegalArgumentException"

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v2, 0x59

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const-string v3, "java/lang/StringBuilder"

    invoke-virtual {p0, v0, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field not declared as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 p1, 0xb7

    const-string v0, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x15

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    const-string v5, "append"

    const-string v6, "(I)Ljava/lang/StringBuilder;"

    invoke-virtual {p0, v4, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "toString"

    const-string v6, "()Ljava/lang/String;"

    invoke-virtual {p0, v4, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xbf

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    return-object p0
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getBoolean(Ljava/lang/Object;I)Z
.end method

.method public abstract getByte(Ljava/lang/Object;I)B
.end method

.method public abstract getChar(Ljava/lang/Object;I)C
.end method

.method public abstract getDouble(Ljava/lang/Object;I)D
.end method

.method public getFieldCount()I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->b:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method

.method public getFieldNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public getFieldTypes()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->b:[Ljava/lang/Class;

    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->c:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public abstract getFloat(Ljava/lang/Object;I)F
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find non-private field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public getIndex(Ljava/lang/reflect/Field;)I
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->c:[Ljava/lang/reflect/Field;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->c:[Ljava/lang/reflect/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find non-private field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public abstract getInt(Ljava/lang/Object;I)I
.end method

.method public abstract getLong(Ljava/lang/Object;I)J
.end method

.method public abstract getShort(Ljava/lang/Object;I)S
.end method

.method public abstract getString(Ljava/lang/Object;I)Ljava/lang/String;
.end method

.method public abstract set(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public abstract setBoolean(Ljava/lang/Object;IZ)V
.end method

.method public abstract setByte(Ljava/lang/Object;IB)V
.end method

.method public abstract setChar(Ljava/lang/Object;IC)V
.end method

.method public abstract setDouble(Ljava/lang/Object;ID)V
.end method

.method public setFields([Ljava/lang/reflect/Field;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->c:[Ljava/lang/reflect/Field;

    return-void
.end method

.method public abstract setFloat(Ljava/lang/Object;IF)V
.end method

.method public abstract setInt(Ljava/lang/Object;II)V
.end method

.method public abstract setLong(Ljava/lang/Object;IJ)V
.end method

.method public abstract setShort(Ljava/lang/Object;IS)V
.end method
