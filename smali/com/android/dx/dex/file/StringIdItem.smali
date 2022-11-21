.class public final Lcom/android/dx/dex/file/StringIdItem;
.super Lcom/android/dx/dex/file/IndexedItem;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private data:Lcom/android/dx/dex/file/StringDataItem;

.field private final value:Lx1/d0;


# direct methods
.method public constructor <init>(Lx1/d0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/dx/dex/file/IndexedItem;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/dx/dex/file/StringIdItem;->value:Lx1/d0;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/dx/dex/file/StringIdItem;->data:Lcom/android/dx/dex/file/StringDataItem;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/file/StringIdItem;->data:Lcom/android/dx/dex/file/StringDataItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->h()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    new-instance v0, Lcom/android/dx/dex/file/StringDataItem;

    iget-object v1, p0, Lcom/android/dx/dex/file/StringIdItem;->value:Lx1/d0;

    invoke-direct {v0, v1}, Lcom/android/dx/dex/file/StringDataItem;-><init>(Lx1/d0;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/StringIdItem;->data:Lcom/android/dx/dex/file/StringDataItem;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/dx/dex/file/StringIdItem;

    iget-object v0, p0, Lcom/android/dx/dex/file/StringIdItem;->value:Lx1/d0;

    iget-object p1, p1, Lcom/android/dx/dex/file/StringIdItem;->value:Lx1/d0;

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/dx/dex/file/StringIdItem;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/android/dx/dex/file/StringIdItem;

    iget-object v0, p0, Lcom/android/dx/dex/file/StringIdItem;->value:Lx1/d0;

    iget-object p1, p1, Lcom/android/dx/dex/file/StringIdItem;->value:Lx1/d0;

    invoke-virtual {v0, p1}, Lx1/d0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getData()Lcom/android/dx/dex/file/StringDataItem;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/StringIdItem;->data:Lcom/android/dx/dex/file/StringDataItem;

    return-object v0
.end method

.method public getValue()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/StringIdItem;->value:Lx1/d0;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/StringIdItem;->value:Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->hashCode()I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public writeSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 4

    iget-object p1, p0, Lcom/android/dx/dex/file/StringIdItem;->data:Lcom/android/dx/dex/file/StringDataItem;

    invoke-virtual {p1}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result p1

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/IndexedItem;->indexString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/file/StringIdItem;->value:Lx1/d0;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lx1/d0;->D(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lb2/a;->d(ILjava/lang/String;)V

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  string_data_off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lb2/q;->writeInt(I)V

    return-void
.end method
