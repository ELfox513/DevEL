.class public final Lcom/android/dx/dex/file/ParameterAnnotationStruct;
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
        "Lcom/android/dx/dex/file/ParameterAnnotationStruct;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotationsItem:Lcom/android/dx/dex/file/UniformListItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/dex/file/UniformListItem<",
            "Lcom/android/dx/dex/file/AnnotationSetRefItem;",
            ">;"
        }
    .end annotation
.end field

.field private final annotationsList:Lv1/d;

.field private final method:Lx1/z;


# direct methods
.method public constructor <init>(Lx1/z;Lv1/d;Lcom/android/dx/dex/file/DexFile;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->method:Lx1/z;

    iput-object p2, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->annotationsList:Lv1/d;

    invoke-virtual {p2}, Lb2/f;->size()I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p2, v1}, Lv1/d;->z(I)Lv1/c;

    move-result-object v2

    new-instance v3, Lcom/android/dx/dex/file/AnnotationSetItem;

    invoke-direct {v3, v2, p3}, Lcom/android/dx/dex/file/AnnotationSetItem;-><init>(Lv1/c;Lcom/android/dx/dex/file/DexFile;)V

    new-instance v2, Lcom/android/dx/dex/file/AnnotationSetRefItem;

    invoke-direct {v2, v3}, Lcom/android/dx/dex/file/AnnotationSetRefItem;-><init>(Lcom/android/dx/dex/file/AnnotationSetItem;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/dx/dex/file/UniformListItem;

    sget-object p2, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_LIST:Lcom/android/dx/dex/file/ItemType;

    invoke-direct {p1, p2, v0}, Lcom/android/dx/dex/file/UniformListItem;-><init>(Lcom/android/dx/dex/file/ItemType;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->annotationsItem:Lcom/android/dx/dex/file/UniformListItem;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotationsList == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->k()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    iget-object v1, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->method:Lx1/z;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lx1/e;)Lcom/android/dx/dex/file/MethodIdItem;

    iget-object v0, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->annotationsItem:Lcom/android/dx/dex/file/UniformListItem;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    return-void
.end method

.method public compareTo(Lcom/android/dx/dex/file/ParameterAnnotationStruct;)I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->method:Lx1/z;

    iget-object p1, p1, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->method:Lx1/z;

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/dx/dex/file/ParameterAnnotationStruct;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->compareTo(Lcom/android/dx/dex/file/ParameterAnnotationStruct;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/dx/dex/file/ParameterAnnotationStruct;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->method:Lx1/z;

    check-cast p1, Lcom/android/dx/dex/file/ParameterAnnotationStruct;

    iget-object p1, p1, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->method:Lx1/z;

    invoke-virtual {v0, p1}, Lx1/x;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnotationsList()Lv1/d;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->annotationsList:Lv1/d;

    return-object v0
.end method

.method public getMethod()Lx1/z;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->method:Lx1/z;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->method:Lx1/z;

    invoke-virtual {v0}, Lx1/x;->hashCode()I

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->method:Lx1/z;

    invoke-virtual {v1}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->annotationsItem:Lcom/android/dx/dex/file/UniformListItem;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/UniformListItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/file/AnnotationSetRefItem;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Lcom/android/dx/dex/file/AnnotationSetRefItem;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->method:Lx1/z;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/MethodIdsSection;->indexOf(Lx1/e;)I

    move-result p1

    iget-object v0, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->annotationsItem:Lcom/android/dx/dex/file/UniformListItem;

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

    iget-object v3, p0, Lcom/android/dx/dex/file/ParameterAnnotationStruct;->method:Lx1/z;

    invoke-virtual {v3}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      method_idx:      "

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
