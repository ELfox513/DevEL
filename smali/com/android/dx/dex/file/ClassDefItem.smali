.class public final Lcom/android/dx/dex/file/ClassDefItem;
.super Lcom/android/dx/dex/file/IndexedItem;
.source "SourceFile"


# instance fields
.field private final accessFlags:I

.field private annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

.field private final classData:Lcom/android/dx/dex/file/ClassDataItem;

.field private interfaces:Lcom/android/dx/dex/file/TypeListItem;

.field private final sourceFile:Lx1/d0;

.field private staticValuesItem:Lcom/android/dx/dex/file/EncodedArrayItem;

.field private final superclass:Lx1/e0;

.field private final thisClass:Lx1/e0;


# direct methods
.method public constructor <init>(Lx1/e0;ILx1/e0;Ly1/e;Lx1/d0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dx/dex/file/IndexedItem;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->thisClass:Lx1/e0;

    iput p2, p0, Lcom/android/dx/dex/file/ClassDefItem;->accessFlags:I

    iput-object p3, p0, Lcom/android/dx/dex/file/ClassDefItem;->superclass:Lx1/e0;

    invoke-interface {p4}, Ly1/e;->size()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/dx/dex/file/TypeListItem;

    invoke-direct {p2, p4}, Lcom/android/dx/dex/file/TypeListItem;-><init>(Ly1/e;)V

    :goto_0
    iput-object p2, p0, Lcom/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/android/dx/dex/file/TypeListItem;

    iput-object p5, p0, Lcom/android/dx/dex/file/ClassDefItem;->sourceFile:Lx1/d0;

    new-instance p2, Lcom/android/dx/dex/file/ClassDataItem;

    invoke-direct {p2, p1}, Lcom/android/dx/dex/file/ClassDataItem;-><init>(Lx1/e0;)V

    iput-object p2, p0, Lcom/android/dx/dex/file/ClassDefItem;->classData:Lcom/android/dx/dex/file/ClassDataItem;

    iput-object p3, p0, Lcom/android/dx/dex/file/ClassDefItem;->staticValuesItem:Lcom/android/dx/dex/file/EncodedArrayItem;

    new-instance p1, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-direct {p1}, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;-><init>()V

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "interfaces == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "thisClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->b()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->k()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->j()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->i()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dx/dex/file/ClassDefItem;->thisClass:Lx1/e0;

    invoke-virtual {v0, v5}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lx1/e0;)Lcom/android/dx/dex/file/TypeIdItem;

    iget-object v5, p0, Lcom/android/dx/dex/file/ClassDefItem;->classData:Lcom/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v5}, Lcom/android/dx/dex/file/ClassDataItem;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->c()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    iget-object v5, p0, Lcom/android/dx/dex/file/ClassDefItem;->classData:Lcom/android/dx/dex/file/ClassDataItem;

    invoke-virtual {p1, v5}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    iget-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->classData:Lcom/android/dx/dex/file/ClassDataItem;

    invoke-virtual {p1}, Lcom/android/dx/dex/file/ClassDataItem;->getStaticValuesConstant()Lx1/d;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v5, Lcom/android/dx/dex/file/EncodedArrayItem;

    invoke-direct {v5, p1}, Lcom/android/dx/dex/file/EncodedArrayItem;-><init>(Lx1/d;)V

    invoke-virtual {v1, v5}, Lcom/android/dx/dex/file/MixedItemSection;->intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/file/EncodedArrayItem;

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->staticValuesItem:Lcom/android/dx/dex/file/EncodedArrayItem;

    :cond_0
    iget-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->superclass:Lx1/e0;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lx1/e0;)Lcom/android/dx/dex/file/TypeIdItem;

    :cond_1
    iget-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/android/dx/dex/file/TypeListItem;

    if-eqz p1, :cond_2

    invoke-virtual {v3, p1}, Lcom/android/dx/dex/file/MixedItemSection;->intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/file/TypeListItem;

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/android/dx/dex/file/TypeListItem;

    :cond_2
    iget-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->sourceFile:Lx1/d0;

    if-eqz p1, :cond_3

    invoke-virtual {v4, p1}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lx1/d0;)Lcom/android/dx/dex/file/StringIdItem;

    :cond_3
    iget-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {p1}, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {p1}, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;->isInternable()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v2, p1}, Lcom/android/dx/dex/file/MixedItemSection;->intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v2, p1}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public addDirectMethod(Lcom/android/dx/dex/file/EncodedMethod;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->classData:Lcom/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/ClassDataItem;->addDirectMethod(Lcom/android/dx/dex/file/EncodedMethod;)V

    return-void
.end method

.method public addFieldAnnotations(Lx1/n;Lv1/c;Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;->addFieldAnnotations(Lx1/n;Lv1/c;Lcom/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method public addInstanceField(Lcom/android/dx/dex/file/EncodedField;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->classData:Lcom/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/ClassDataItem;->addInstanceField(Lcom/android/dx/dex/file/EncodedField;)V

    return-void
.end method

.method public addMethodAnnotations(Lx1/z;Lv1/c;Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;->addMethodAnnotations(Lx1/z;Lv1/c;Lcom/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method public addParameterAnnotations(Lx1/z;Lv1/d;Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;->addParameterAnnotations(Lx1/z;Lv1/d;Lcom/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method public addStaticField(Lcom/android/dx/dex/file/EncodedField;Lx1/a;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->classData:Lcom/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1, p2}, Lcom/android/dx/dex/file/ClassDataItem;->addStaticField(Lcom/android/dx/dex/file/EncodedField;Lx1/a;)V

    return-void
.end method

.method public addVirtualMethod(Lcom/android/dx/dex/file/EncodedMethod;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->classData:Lcom/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/ClassDataItem;->addVirtualMethod(Lcom/android/dx/dex/file/EncodedMethod;)V

    return-void
.end method

.method public debugPrint(Ljava/io/Writer;Z)V
    .locals 4

    invoke-static {p1}, Lb2/u;->a(Ljava/io/Writer;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/dx/dex/file/ClassDefItem;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  accessFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/dx/dex/file/ClassDefItem;->accessFlags:I

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  superclass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDefItem;->superclass:Lx1/e0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  interfaces: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/android/dx/dex/file/TypeListItem;

    const-string v3, "<none>"

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  sourceFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDefItem;->sourceFile:Lx1/d0;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lx1/d0;->C()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDefItem;->classData:Lcom/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v1, p1, p2}, Lcom/android/dx/dex/file/ClassDataItem;->debugPrint(Ljava/io/Writer;Z)V

    iget-object p1, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;->c(Ljava/io/PrintWriter;)V

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAccessFlags()I
    .locals 1

    iget v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->accessFlags:I

    return v0
.end method

.method public getInterfaces()Ly1/e;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/android/dx/dex/file/TypeListItem;

    if-nez v0, :cond_0

    sget-object v0, Ly1/b;->a:Ly1/b;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/dex/file/TypeListItem;->getList()Ly1/e;

    move-result-object v0

    return-object v0
.end method

.method public getMethodAnnotations(Lx1/z;)Lv1/c;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;->getMethodAnnotations(Lx1/z;)Lv1/c;

    move-result-object p1

    return-object p1
.end method

.method public getMethods()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->classData:Lcom/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/ClassDataItem;->getMethods()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getParameterAnnotations(Lx1/z;)Lv1/d;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;->getParameterAnnotations(Lx1/z;)Lv1/d;

    move-result-object p1

    return-object p1
.end method

.method public getSourceFile()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->sourceFile:Lx1/d0;

    return-object v0
.end method

.method public getSuperclass()Lx1/e0;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->superclass:Lx1/e0;

    return-object v0
.end method

.method public getThisClass()Lx1/e0;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->thisClass:Lx1/e0;

    return-object v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public setClassAnnotations(Lv1/c;Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1, p2}, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;->setClassAnnotations(Lv1/c;Lcom/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method public writeSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p2 .. p2}, Lb2/a;->j()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v3

    iget-object v4, v0, Lcom/android/dx/dex/file/ClassDefItem;->thisClass:Lx1/e0;

    invoke-virtual {v3, v4}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lx1/e0;)I

    move-result v4

    iget-object v5, v0, Lcom/android/dx/dex/file/ClassDefItem;->superclass:Lx1/e0;

    const/4 v6, -0x1

    if-nez v5, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v5}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lx1/e0;)I

    move-result v3

    :goto_0
    iget-object v5, v0, Lcom/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/android/dx/dex/file/TypeListItem;

    invoke-static {v5}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/android/dx/dex/file/OffsettedItem;)I

    move-result v5

    iget-object v7, v0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v7}, Lcom/android/dx/dex/file/AnnotationsDirectoryItem;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lcom/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v7}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v7

    :goto_1
    iget-object v9, v0, Lcom/android/dx/dex/file/ClassDefItem;->sourceFile:Lx1/d0;

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/dex/file/DexFile;->i()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v6

    iget-object v9, v0, Lcom/android/dx/dex/file/ClassDefItem;->sourceFile:Lx1/d0;

    invoke-virtual {v6, v9}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lx1/d0;)I

    move-result v6

    :goto_2
    iget-object v9, v0, Lcom/android/dx/dex/file/ClassDefItem;->classData:Lcom/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v9}, Lcom/android/dx/dex/file/ClassDataItem;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    iget-object v9, v0, Lcom/android/dx/dex/file/ClassDefItem;->classData:Lcom/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v9}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v9

    :goto_3
    iget-object v10, v0, Lcom/android/dx/dex/file/ClassDefItem;->staticValuesItem:Lcom/android/dx/dex/file/EncodedArrayItem;

    invoke-static {v10}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/android/dx/dex/file/OffsettedItem;)I

    move-result v10

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/dex/file/IndexedItem;->indexString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/dx/dex/file/ClassDefItem;->thisClass:Lx1/e0;

    invoke-virtual {v11}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  class_idx:           "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x4

    invoke-interface {v1, v11, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  access_flags:        "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/dx/dex/file/ClassDefItem;->accessFlags:I

    invoke-static {v12}, Lw1/a;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  superclass_idx:      "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " // "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/dx/dex/file/ClassDefItem;->superclass:Lx1/e0;

    const-string v14, "<none>"

    if-nez v13, :cond_4

    move-object v13, v14

    goto :goto_4

    :cond_4
    invoke-virtual {v13}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  interfaces_off:      "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lb2/a;->d(ILjava/lang/String;)V

    if-eqz v5, :cond_5

    iget-object v2, v0, Lcom/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/android/dx/dex/file/TypeListItem;

    invoke-virtual {v2}, Lcom/android/dx/dex/file/TypeListItem;->getList()Ly1/e;

    move-result-object v2

    invoke-interface {v2}, Ly1/e;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v15}, Ly1/e;->getType(I)Ly1/c;

    move-result-object v8

    invoke-virtual {v8}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v1, v11, v8}, Lb2/a;->d(ILjava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x4

    goto :goto_5

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  source_file_idx:     "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/dx/dex/file/ClassDefItem;->sourceFile:Lx1/d0;

    if-nez v8, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v14

    :goto_6
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    invoke-interface {v1, v8, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  annotations_off:     "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  class_data_off:      "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  static_values_off:   "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_7
    invoke-interface {v1, v4}, Lb2/q;->writeInt(I)V

    iget v2, v0, Lcom/android/dx/dex/file/ClassDefItem;->accessFlags:I

    invoke-interface {v1, v2}, Lb2/q;->writeInt(I)V

    invoke-interface {v1, v3}, Lb2/q;->writeInt(I)V

    invoke-interface {v1, v5}, Lb2/q;->writeInt(I)V

    invoke-interface {v1, v6}, Lb2/q;->writeInt(I)V

    invoke-interface {v1, v7}, Lb2/q;->writeInt(I)V

    invoke-interface {v1, v9}, Lb2/q;->writeInt(I)V

    invoke-interface {v1, v10}, Lb2/q;->writeInt(I)V

    return-void
.end method
