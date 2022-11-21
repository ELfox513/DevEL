.class public final Lcom/android/dx/dex/file/AnnotationItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/file/AnnotationItem$TypeIdSorter;
    }
.end annotation


# static fields
.field private static final ALIGNMENT:I = 0x1

.field private static final TYPE_ID_SORTER:Lcom/android/dx/dex/file/AnnotationItem$TypeIdSorter;

.field private static final VISIBILITY_BUILD:I = 0x0

.field private static final VISIBILITY_RUNTIME:I = 0x1

.field private static final VISIBILITY_SYSTEM:I = 0x2


# instance fields
.field private final annotation:Lv1/a;

.field private encodedForm:[B

.field private type:Lcom/android/dx/dex/file/TypeIdItem;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/dx/dex/file/AnnotationItem$TypeIdSorter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/dex/file/AnnotationItem$TypeIdSorter;-><init>(Lcom/android/dx/dex/file/AnnotationItem$1;)V

    sput-object v0, Lcom/android/dx/dex/file/AnnotationItem;->TYPE_ID_SORTER:Lcom/android/dx/dex/file/AnnotationItem$TypeIdSorter;

    return-void
.end method

.method public constructor <init>(Lv1/a;Lcom/android/dx/dex/file/DexFile;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/dx/dex/file/AnnotationItem;->type:Lcom/android/dx/dex/file/TypeIdItem;

    iput-object p1, p0, Lcom/android/dx/dex/file/AnnotationItem;->encodedForm:[B

    invoke-virtual {p0, p2}, Lcom/android/dx/dex/file/AnnotationItem;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotation == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic c(Lcom/android/dx/dex/file/AnnotationItem;)Lcom/android/dx/dex/file/TypeIdItem;
    .locals 0

    iget-object p0, p0, Lcom/android/dx/dex/file/AnnotationItem;->type:Lcom/android/dx/dex/file/TypeIdItem;

    return-object p0
.end method

.method public static sortByTypeIdIndex([Lcom/android/dx/dex/file/AnnotationItem;)V
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/AnnotationItem;->TYPE_ID_SORTER:Lcom/android/dx/dex/file/AnnotationItem$TypeIdSorter;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    invoke-virtual {v1}, Lv1/a;->B()Lx1/e0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lx1/e0;)Lcom/android/dx/dex/file/TypeIdItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/file/AnnotationItem;->type:Lcom/android/dx/dex/file/TypeIdItem;

    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    invoke-static {p1, v0}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lv1/a;)V

    return-void
.end method

.method public annotateTo(Lb2/a;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    invoke-virtual {v1}, Lv1/a;->C()Lv1/b;

    move-result-object v1

    invoke-virtual {v1}, Lv1/b;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    invoke-virtual {v2}, Lv1/a;->B()Lx1/e0;

    move-result-object v2

    invoke-virtual {v2}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb2/a;->d(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    invoke-virtual {v0}, Lv1/a;->A()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv1/e;

    invoke-virtual {v2}, Lv1/e;->d()Lx1/d0;

    move-result-object v3

    invoke-virtual {v2}, Lv1/e;->f()Lx1/a;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/dx/dex/file/ValueEncoder;->constantToHuman(Lx1/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lb2/a;->d(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compareTo0(Lcom/android/dx/dex/file/OffsettedItem;)I
    .locals 1

    check-cast p1, Lcom/android/dx/dex/file/AnnotationItem;

    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    iget-object p1, p1, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    invoke-virtual {v0, p1}, Lv1/a;->z(Lv1/a;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    invoke-virtual {v0}, Lv1/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/android/dx/dex/file/ItemType;

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

    iget-object p1, p0, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/dx/dex/file/ValueEncoder;->writeAnnotation(Lv1/a;Z)V

    invoke-virtual {p2}, Lb2/e;->r()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/dex/file/AnnotationItem;->encodedForm:[B

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/OffsettedItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    invoke-virtual {v0}, Lv1/a;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo0(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 6

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    invoke-virtual {v1}, Lv1/a;->C()Lv1/b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " annotation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  visibility: VISBILITY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_0
    sget-object v4, Lcom/android/dx/dex/file/AnnotationItem$1;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    invoke-interface {p2, v2}, Lb2/q;->writeByte(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p2, v3}, Lb2/q;->writeByte(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p2, v2}, Lb2/q;->writeByte(I)V

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/dx/dex/file/ValueEncoder;

    invoke-direct {v0, p1, p2}, Lcom/android/dx/dex/file/ValueEncoder;-><init>(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V

    iget-object p1, p0, Lcom/android/dx/dex/file/AnnotationItem;->annotation:Lv1/a;

    invoke-virtual {v0, p1, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeAnnotation(Lv1/a;Z)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/dx/dex/file/AnnotationItem;->encodedForm:[B

    invoke-interface {p2, p1}, Lb2/q;->write([B)V

    :goto_1
    return-void
.end method
