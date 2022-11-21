.class public final Lcom/android/dx/dex/code/DalvInsnList;
.super Lb2/f;
.source "SourceFile"


# instance fields
.field private final regCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    iput p2, p0, Lcom/android/dx/dex/code/DalvInsnList;->regCount:I

    return-void
.end method

.method public static makeImmutable(Ljava/util/ArrayList;I)Lcom/android/dx/dex/code/DalvInsnList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;I)",
            "Lcom/android/dx/dex/code/DalvInsnList;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lcom/android/dx/dex/code/DalvInsnList;

    invoke-direct {v1, v0, p1}, Lcom/android/dx/dex/code/DalvInsnList;-><init>(II)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/DalvInsn;

    invoke-virtual {v1, p1, v2}, Lcom/android/dx/dex/code/DalvInsnList;->set(ILcom/android/dx/dex/code/DalvInsn;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    return-object v1
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/DalvInsnList;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getNextAddress()I

    move-result v0

    return v0
.end method

.method public debugPrint(Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 4

    new-instance v0, Lb2/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lb2/h;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_3

    :try_start_0
    invoke-virtual {p0, p2}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/DalvInsn;

    invoke-virtual {v2}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v3, ""

    invoke-virtual {v2, v3, v1, p3}, Lcom/android/dx/dex/code/DalvInsn;->listingString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public get(I)Lcom/android/dx/dex/code/DalvInsn;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/code/DalvInsn;

    return-object p1
.end method

.method public getOutsSize()I
    .locals 8

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/dex/code/DalvInsn;

    instance-of v5, v4, Lcom/android/dx/dex/code/CstInsn;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {v5}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lx1/a;

    move-result-object v5

    instance-of v7, v5, Lx1/e;

    if-eqz v7, :cond_1

    check-cast v5, Lx1/e;

    invoke-virtual {v4}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->getFamily()I

    move-result v4

    const/16 v7, 0x71

    if-ne v4, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lx1/e;->x(Z)I

    move-result v4

    goto :goto_2

    :cond_1
    instance-of v4, v5, Lx1/j;

    if-eqz v4, :cond_2

    check-cast v5, Lx1/j;

    invoke-virtual {v5}, Lx1/j;->u()Ly1/a;

    move-result-object v4

    invoke-virtual {v4}, Ly1/a;->l()Ly1/b;

    move-result-object v4

    invoke-virtual {v4}, Ly1/b;->B()I

    move-result v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    instance-of v5, v4, Lcom/android/dx/dex/code/MultiCstInsn;

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/dex/code/Dop;->getFamily()I

    move-result v5

    const/16 v7, 0xfa

    if-ne v5, v7, :cond_4

    check-cast v4, Lcom/android/dx/dex/code/MultiCstInsn;

    invoke-virtual {v4, v6}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lx1/a;

    move-result-object v4

    check-cast v4, Lx1/b0;

    invoke-virtual {v4}, Lx1/b0;->n()Ly1/a;

    move-result-object v4

    invoke-virtual {v4}, Ly1/a;->l()Ly1/b;

    move-result-object v4

    invoke-virtual {v4}, Ly1/b;->B()I

    move-result v4

    add-int/2addr v4, v6

    :goto_2
    if-le v4, v3, :cond_5

    move v3, v4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting invoke-polymorphic"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v3
.end method

.method public getRegistersSize()I
    .locals 1

    iget v0, p0, Lcom/android/dx/dex/code/DalvInsnList;->regCount:I

    return v0
.end method

.method public set(ILcom/android/dx/dex/code/DalvInsn;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public writeTo(Lb2/a;)V
    .locals 10

    invoke-interface {p1}, Lb2/q;->a()I

    move-result v0

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v1

    invoke-interface {p1}, Lb2/a;->j()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lb2/a;->g()Z

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p0, v4}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/dex/code/DalvInsn;

    invoke-virtual {v5}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p1}, Lb2/a;->c()I

    move-result v7

    const-string v8, "  "

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v7, v9}, Lcom/android/dx/dex/code/DalvInsn;->listingString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_2

    invoke-interface {p1, v6, v5}, Lb2/a;->d(ILjava/lang/String;)V

    goto :goto_3

    :cond_2
    if-eqz v6, :cond_3

    const-string v5, ""

    invoke-interface {p1, v6, v5}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, v3}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/DalvInsn;

    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/dx/dex/code/DalvInsn;->writeTo(Lb2/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...while writing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ll1/d;->d(Ljava/lang/Throwable;Ljava/lang/String;)Ll1/d;

    move-result-object p1

    throw p1

    :cond_5
    invoke-interface {p1}, Lb2/q;->a()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v0

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write length mismatch; expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but actually wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
