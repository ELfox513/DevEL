.class public final Lcom/android/dx/dex/file/TypeListItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "SourceFile"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final ELEMENT_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x4


# instance fields
.field private final list:Ly1/e;


# direct methods
.method public constructor <init>(Ly1/e;)V
    .locals 2

    invoke-interface {p1}, Ly1/e;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    iput-object p1, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Ly1/e;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Ly1/e;

    invoke-interface {v0}, Ly1/e;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Ly1/e;

    invoke-interface {v2, v1}, Ly1/e;->getType(I)Ly1/c;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Ly1/c;)Lcom/android/dx/dex/file/TypeIdItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compareTo0(Lcom/android/dx/dex/file/OffsettedItem;)I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Ly1/e;

    check-cast p1, Lcom/android/dx/dex/file/TypeListItem;

    iget-object p1, p1, Lcom/android/dx/dex/file/TypeListItem;->list:Ly1/e;

    invoke-static {v0, p1}, Ly1/b;->x(Ly1/e;Ly1/e;)I

    move-result p1

    return p1
.end method

.method public getList()Ly1/e;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Ly1/e;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Ly1/e;

    invoke-static {v0}, Ly1/b;->C(Ly1/e;)I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTo0(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Ly1/e;

    invoke-interface {v0}, Ly1/e;->size()I

    move-result v0

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type_list"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lb2/a;->d(ILjava/lang/String;)V

    const/4 v1, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lb2/a;->d(ILjava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Ly1/e;

    invoke-interface {v3, v1}, Ly1/e;->getType(I)Ly1/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Ly1/c;)I

    move-result v4

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v5, v3}, Lb2/a;->d(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Lb2/q;->writeInt(I)V

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Ly1/e;

    invoke-interface {v1, v2}, Ly1/e;->getType(I)Ly1/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Ly1/c;)I

    move-result v1

    invoke-interface {p2, v1}, Lb2/q;->writeShort(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
