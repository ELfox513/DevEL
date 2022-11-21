.class public final Lcom/android/dx/dex/file/FieldAnnotationStruct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/r;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb2/r;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/dex/file/FieldAnnotationStruct;",
        ">;"
    }
.end annotation


# instance fields
.field private annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

.field private final field:Lx1/n;


# direct methods
.method public constructor <init>(Lx1/n;Lcom/android/dx/dex/file/AnnotationSetItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lx1/n;

    iput-object p2, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotations == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->k()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    iget-object v1, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lx1/n;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lx1/n;)Lcom/android/dx/dex/file/FieldIdItem;

    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/MixedItemSection;->intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/file/AnnotationSetItem;

    iput-object p1, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    return-void
.end method

.method public compareTo(Lcom/android/dx/dex/file/FieldAnnotationStruct;)I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lx1/n;

    iget-object p1, p1, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lx1/n;

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/dx/dex/file/FieldAnnotationStruct;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/FieldAnnotationStruct;->compareTo(Lcom/android/dx/dex/file/FieldAnnotationStruct;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/dx/dex/file/FieldAnnotationStruct;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lx1/n;

    check-cast p1, Lcom/android/dx/dex/file/FieldAnnotationStruct;

    iget-object p1, p1, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lx1/n;

    invoke-virtual {v0, p1}, Lx1/x;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnotations()Lv1/c;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/AnnotationSetItem;->getAnnotations()Lv1/c;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lx1/n;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lx1/n;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lx1/n;

    invoke-virtual {v0}, Lx1/x;->hashCode()I

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lx1/n;

    invoke-virtual {v1}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lx1/n;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lx1/n;)I

    move-result p1

    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v0

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lx1/n;

    invoke-virtual {v3}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      field_idx:       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p2, v2, v1}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      annotations_off: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lb2/q;->writeInt(I)V

    invoke-interface {p2, v0}, Lb2/q;->writeInt(I)V

    return-void
.end method
