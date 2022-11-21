.class public abstract Lcom/esotericsoftware/reflectasm/ConstructorAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V
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

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method public static b(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "newInstance"

    const-string v3, "()Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v0, 0xbb

    invoke-virtual {p0, v0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x59

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xb7

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method public static c(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x1

    const-string v2, "newInstance"

    const-string v3, "(Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/4 v0, 0x2

    const-string v1, "<init>"

    const/16 v2, 0xb7

    const/16 v3, 0xbb

    const/16 v4, 0x59

    if-eqz p2, :cond_0

    invoke-virtual {p0, v3, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0x19

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xc0

    invoke-virtual {p0, v3, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0xb6

    const-string v4, "java/lang/Object"

    const-string v5, "getClass"

    const-string v6, "()Ljava/lang/Class;"

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";)V"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p1, v1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    goto :goto_0

    :cond_0
    const-string p1, "java/lang/UnsupportedOperationException"

    invoke-virtual {p0, v3, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const-string p2, "Not an inner class."

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const-string p2, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v2, p1, v1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xbf

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/ConstructorAccess;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/esotericsoftware/reflectasm/ConstructorAccess<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "ConstructorAccess"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "java."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reflectasm."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->d(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    invoke-virtual {v7, v6}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->g(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    if-nez v8, :cond_6

    const/16 v8, 0x2f

    const/16 v9, 0x2e

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x0

    if-nez v4, :cond_3

    :try_start_1
    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    move-object v2, v10

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class cannot be created (the no-arg constructor is private): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :goto_2
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com/esotericsoftware/reflectasm/PublicConstructorAccess"

    goto :goto_3

    :cond_4
    const-string v0, "com/esotericsoftware/reflectasm/ConstructorAccess"

    :goto_3
    new-instance v8, Lcom/esotericsoftware/asm/ClassWriter;

    invoke-direct {v8, v3}, Lcom/esotericsoftware/asm/ClassWriter;-><init>(I)V

    const v11, 0x3002d

    const/16 v12, 0x21

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v10, v8

    move-object v15, v0

    invoke-virtual/range {v10 .. v16}, Lcom/esotericsoftware/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v8, v0}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->a(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V

    invoke-static {v8, v5}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->b(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V

    invoke-static {v8, v5, v2}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->c(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/esotericsoftware/asm/ClassWriter;->visitEnd()V

    invoke-virtual {v8}, Lcom/esotericsoftware/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->b(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v8

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-static member class cannot be created (the enclosing class constructor is private): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-static member class cannot be created (missing enclosing class constructor): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    instance-of v2, v0, Lcom/esotericsoftware/reflectasm/PublicConstructorAccess;

    if-nez v2, :cond_8

    invoke-static {v1, v8}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_7

    const-string v3, "Class cannot be created (the no-arg constructor is protected or package-protected, and its ConstructorAccess could not be defined in the same class loader): "

    goto :goto_5

    :cond_7
    const-string v3, "Non-static member class cannot be created (the enclosing class constructor is protected or package-protected, and its ConstructorAccess could not be defined in the same class loader): "

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iput-boolean v4, v0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->a:Z

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception constructing constructor access class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method


# virtual methods
.method public isNonStaticMemberClass()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->a:Z

    return v0
.end method

.method public abstract newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
