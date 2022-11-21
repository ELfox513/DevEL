.class public final Lcom/android/dx/dex/file/StringDataItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "SourceFile"


# instance fields
.field private final value:Lx1/d0;


# direct methods
.method public constructor <init>(Lx1/d0;)V
    .locals 2

    invoke-static {p1}, Lcom/android/dx/dex/file/StringDataItem;->writeSize(Lx1/d0;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    iput-object p1, p0, Lcom/android/dx/dex/file/StringDataItem;->value:Lx1/d0;

    return-void
.end method

.method private static writeSize(Lx1/d0;)I
    .locals 1

    invoke-virtual {p0}, Lx1/d0;->x()I

    move-result v0

    invoke-static {v0}, Lk1/n;->c(I)I

    move-result v0

    invoke-virtual {p0}, Lx1/d0;->z()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 0

    return-void
.end method

.method public compareTo0(Lcom/android/dx/dex/file/OffsettedItem;)I
    .locals 1

    check-cast p1, Lcom/android/dx/dex/file/StringDataItem;

    iget-object v0, p0, Lcom/android/dx/dex/file/StringDataItem;->value:Lx1/d0;

    iget-object p1, p1, Lcom/android/dx/dex/file/StringDataItem;->value:Lx1/d0;

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/StringDataItem;->value:Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo0(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 4

    iget-object p1, p0, Lcom/android/dx/dex/file/StringDataItem;->value:Lx1/d0;

    invoke-virtual {p1}, Lx1/d0;->n()Lb2/d;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/StringDataItem;->value:Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->x()I

    move-result v0

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lk1/n;->c(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "utf16_size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lb2/a;->d(ILjava/lang/String;)V

    invoke-virtual {p1}, Lb2/d;->q()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/dx/dex/file/StringDataItem;->value:Lx1/d0;

    invoke-virtual {v2}, Lx1/d0;->C()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lb2/q;->h(I)I

    invoke-interface {p2, p1}, Lb2/q;->k(Lb2/d;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lb2/q;->writeByte(I)V

    return-void
.end method
