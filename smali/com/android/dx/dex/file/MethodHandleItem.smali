.class public final Lcom/android/dx/dex/file/MethodHandleItem;
.super Lcom/android/dx/dex/file/IndexedItem;
.source "SourceFile"


# instance fields
.field private final ITEM_SIZE:I

.field private final methodHandle:Lx1/y;


# direct methods
.method public constructor <init>(Lx1/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/dx/dex/file/IndexedItem;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/dx/dex/file/MethodHandleItem;->ITEM_SIZE:I

    iput-object p1, p0, Lcom/android/dx/dex/file/MethodHandleItem;->methodHandle:Lx1/y;

    return-void
.end method

.method private getTargetIndex(Lcom/android/dx/dex/file/DexFile;)I
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/file/MethodHandleItem;->methodHandle:Lx1/y;

    invoke-virtual {v0}, Lx1/y;->x()Lx1/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/file/MethodHandleItem;->methodHandle:Lx1/y;

    invoke-virtual {v1}, Lx1/y;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object p1

    check-cast v0, Lx1/n;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lx1/n;)I

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/MethodHandleItem;->methodHandle:Lx1/y;

    invoke-virtual {v1}, Lx1/y;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lx1/q;

    if-eqz v1, :cond_1

    check-cast v0, Lx1/q;

    invoke-virtual {v0}, Lx1/q;->E()Lx1/z;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object p1

    check-cast v0, Lx1/e;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/MethodIdsSection;->indexOf(Lx1/e;)I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unhandled invocation type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getMethodHandles()Lcom/android/dx/dex/file/MethodHandlesSection;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/MethodHandleItem;->methodHandle:Lx1/y;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/MethodHandlesSection;->intern(Lx1/y;)V

    return-void
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_METHOD_HANDLE_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public writeSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/MethodHandleItem;->getTargetIndex(Lcom/android/dx/dex/file/DexFile;)I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/file/MethodHandleItem;->methodHandle:Lx1/y;

    invoke-virtual {v1}, Lx1/y;->n()I

    move-result v1

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/IndexedItem;->indexString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/dx/dex/file/MethodHandleItem;->methodHandle:Lx1/y;

    invoke-virtual {v4}, Lx1/y;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " // "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lx1/y;->u(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type:     "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-interface {p2, v5, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reserved: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/dx/dex/file/MethodHandleItem;->methodHandle:Lx1/y;

    invoke-virtual {v4}, Lx1/y;->x()Lx1/a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/dx/dex/file/MethodHandleItem;->methodHandle:Lx1/y;

    invoke-virtual {v4}, Lx1/y;->z()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fieldId:  "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v5, v0}, Lb2/a;->d(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "methodId: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v5, v0}, Lb2/a;->d(ILjava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v5, v0}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_1
    invoke-interface {p2, v1}, Lb2/q;->writeShort(I)V

    invoke-interface {p2, v3}, Lb2/q;->writeShort(I)V

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/MethodHandleItem;->getTargetIndex(Lcom/android/dx/dex/file/DexFile;)I

    move-result p1

    invoke-interface {p2, p1}, Lb2/q;->writeShort(I)V

    invoke-interface {p2, v3}, Lb2/q;->writeShort(I)V

    return-void
.end method
