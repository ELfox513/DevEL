.class public final Lcom/android/dx/dex/file/CallSiteIdItem;
.super Lcom/android/dx/dex/file/IndexedItem;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final ITEM_SIZE:I = 0x4


# instance fields
.field public final a:Lx1/j;

.field public b:Lcom/android/dx/dex/file/CallSiteItem;


# direct methods
.method public constructor <init>(Lx1/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dx/dex/file/IndexedItem;-><init>()V

    iput-object p1, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->a:Lx1/j;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->b:Lcom/android/dx/dex/file/CallSiteItem;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 3

    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->a:Lx1/j;

    invoke-virtual {v0}, Lx1/j;->n()Lx1/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getCallSiteIds()Lcom/android/dx/dex/file/CallSiteIdsSection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/file/CallSiteIdsSection;->b(Lx1/h;)Lcom/android/dx/dex/file/CallSiteItem;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->b()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    new-instance v2, Lcom/android/dx/dex/file/CallSiteItem;

    invoke-direct {v2, v0}, Lcom/android/dx/dex/file/CallSiteItem;-><init>(Lx1/h;)V

    invoke-virtual {p1, v2}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/dx/dex/file/CallSiteIdsSection;->a(Lx1/h;Lcom/android/dx/dex/file/CallSiteItem;)V

    :cond_0
    iput-object v2, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->b:Lcom/android/dx/dex/file/CallSiteItem;

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/dx/dex/file/CallSiteIdItem;

    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->a:Lx1/j;

    iget-object p1, p1, Lcom/android/dx/dex/file/CallSiteIdItem;->a:Lx1/j;

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CALL_SITE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public writeSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 3

    iget-object p1, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->b:Lcom/android/dx/dex/file/CallSiteItem;

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

    iget-object v2, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->a:Lx1/j;

    invoke-virtual {v2}, Lx1/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lb2/a;->d(ILjava/lang/String;)V

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call_site_off: "

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
