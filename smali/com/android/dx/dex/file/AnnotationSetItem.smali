.class public final Lcom/android/dx/dex/file/AnnotationSetItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "SourceFile"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final ENTRY_WRITE_SIZE:I = 0x4


# instance fields
.field private final annotations:Lv1/c;

.field private final items:[Lcom/android/dx/dex/file/AnnotationItem;


# direct methods
.method public constructor <init>(Lv1/c;Lcom/android/dx/dex/file/DexFile;)V
    .locals 4

    invoke-static {p1}, Lcom/android/dx/dex/file/AnnotationSetItem;->writeSize(Lv1/c;)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    iput-object p1, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->annotations:Lv1/c;

    invoke-virtual {p1}, Lv1/c;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/dx/dex/file/AnnotationItem;

    iput-object v0, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/android/dx/dex/file/AnnotationItem;

    invoke-virtual {p1}, Lv1/c;->D()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv1/a;

    iget-object v2, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/android/dx/dex/file/AnnotationItem;

    new-instance v3, Lcom/android/dx/dex/file/AnnotationItem;

    invoke-direct {v3, v1, p2}, Lcom/android/dx/dex/file/AnnotationItem;-><init>(Lv1/a;Lcom/android/dx/dex/file/DexFile;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static writeSize(Lv1/c;)I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lv1/c;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x4

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "list == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->b()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/android/dx/dex/file/AnnotationItem;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/android/dx/dex/file/AnnotationItem;

    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Lcom/android/dx/dex/file/MixedItemSection;->intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/file/AnnotationItem;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compareTo0(Lcom/android/dx/dex/file/OffsettedItem;)I
    .locals 1

    check-cast p1, Lcom/android/dx/dex/file/AnnotationSetItem;

    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->annotations:Lv1/c;

    iget-object p1, p1, Lcom/android/dx/dex/file/AnnotationSetItem;->annotations:Lv1/c;

    invoke-virtual {v0, p1}, Lv1/c;->C(Lv1/c;)I

    move-result p1

    return p1
.end method

.method public getAnnotations()Lv1/c;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->annotations:Lv1/c;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->annotations:Lv1/c;

    invoke-virtual {v0}, Lv1/c;->hashCode()I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public place0(Lcom/android/dx/dex/file/Section;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/android/dx/dex/file/AnnotationItem;

    invoke-static {p1}, Lcom/android/dx/dex/file/AnnotationItem;->sortByTypeIdIndex([Lcom/android/dx/dex/file/AnnotationItem;)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->annotations:Lv1/c;

    invoke-virtual {v0}, Lv1/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo0(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 6

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/android/dx/dex/file/AnnotationItem;

    array-length v0, v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " annotation set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lb2/a;->d(ILjava/lang/String;)V

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

    :cond_0
    invoke-interface {p2, v0}, Lb2/q;->writeInt(I)V

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/android/dx/dex/file/AnnotationItem;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v3

    if-eqz p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  entries["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Lb2/a;->d(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/dx/dex/file/AnnotationSetItem;->items:[Lcom/android/dx/dex/file/AnnotationItem;

    aget-object v4, v4, v2

    const-string v5, "    "

    invoke-virtual {v4, p2, v5}, Lcom/android/dx/dex/file/AnnotationItem;->annotateTo(Lb2/a;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p2, v3}, Lb2/q;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
