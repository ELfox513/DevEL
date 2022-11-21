.class public final Lcom/android/dx/dex/file/CallSiteItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "SourceFile"


# instance fields
.field private encodedForm:[B

.field private final value:Lx1/h;


# direct methods
.method public constructor <init>(Lx1/h;)V
    .locals 2

    invoke-static {p1}, Lcom/android/dx/dex/file/CallSiteItem;->writeSize(Lx1/h;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    iput-object p1, p0, Lcom/android/dx/dex/file/CallSiteItem;->value:Lx1/h;

    return-void
.end method

.method private static writeSize(Lx1/h;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteItem;->value:Lx1/h;

    invoke-static {p1, v0}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lx1/a;)V

    return-void
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

    iget-object p1, p0, Lcom/android/dx/dex/file/CallSiteItem;->value:Lx1/h;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/dx/dex/file/ValueEncoder;->writeArray(Lx1/d;Z)V

    invoke-virtual {p2}, Lb2/e;->r()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/dex/file/CallSiteItem;->encodedForm:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/OffsettedItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteItem;->value:Lx1/h;

    invoke-virtual {v0}, Lx1/h;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteItem;->value:Lx1/h;

    invoke-virtual {v0}, Lx1/h;->toString()Ljava/lang/String;

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

    const-string v2, " call site"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v0, Lcom/android/dx/dex/file/ValueEncoder;

    invoke-direct {v0, p1, p2}, Lcom/android/dx/dex/file/ValueEncoder;-><init>(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V

    iget-object p1, p0, Lcom/android/dx/dex/file/CallSiteItem;->value:Lx1/h;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/android/dx/dex/file/ValueEncoder;->writeArray(Lx1/d;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/dx/dex/file/CallSiteItem;->encodedForm:[B

    invoke-interface {p2, p1}, Lb2/q;->write([B)V

    :goto_0
    return-void
.end method
