.class public final Lcom/android/dx/dex/file/EncodedArrayItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "SourceFile"


# static fields
.field private static final ALIGNMENT:I = 0x1


# instance fields
.field private final array:Lx1/d;

.field private encodedForm:[B


# direct methods
.method public constructor <init>(Lx1/d;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lx1/d;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->encodedForm:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "array == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lx1/d;

    invoke-static {p1, v0}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lx1/a;)V

    return-void
.end method

.method public compareTo0(Lcom/android/dx/dex/file/OffsettedItem;)I
    .locals 1

    check-cast p1, Lcom/android/dx/dex/file/EncodedArrayItem;

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lx1/d;

    iget-object p1, p1, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lx1/d;

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lx1/d;

    invoke-virtual {v0}, Lx1/d;->hashCode()I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public place0(Lcom/android/dx/dex/file/Section;I)V
    .locals 2

    new-instance p2, Lb2/e;

    invoke-direct {p2}, Lb2/e;-><init>()V

    new-instance v0, Lcom/android/dx/dex/file/ValueEncoder;

    invoke-virtual {p1}, Lcom/android/dx/dex/file/Section;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/android/dx/dex/file/ValueEncoder;-><init>(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V

    iget-object p1, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lx1/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/dx/dex/file/ValueEncoder;->writeArray(Lx1/d;Z)V

    invoke-virtual {p2}, Lb2/e;->r()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->encodedForm:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/OffsettedItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lx1/d;

    invoke-virtual {v0}, Lx1/d;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo0(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 3

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " encoded array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v0, Lcom/android/dx/dex/file/ValueEncoder;

    invoke-direct {v0, p1, p2}, Lcom/android/dx/dex/file/ValueEncoder;-><init>(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V

    iget-object p1, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lx1/d;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/android/dx/dex/file/ValueEncoder;->writeArray(Lx1/d;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->encodedForm:[B

    invoke-interface {p2, p1}, Lb2/q;->write([B)V

    :goto_0
    return-void
.end method
