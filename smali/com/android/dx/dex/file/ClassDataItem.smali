.class public final Lcom/android/dx/dex/file/ClassDataItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "SourceFile"


# instance fields
.field private final directMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation
.end field

.field private encodedForm:[B

.field private final instanceFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/file/EncodedField;",
            ">;"
        }
    .end annotation
.end field

.field private final staticFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/file/EncodedField;",
            ">;"
        }
    .end annotation
.end field

.field private final staticValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/dx/dex/file/EncodedField;",
            "Lx1/a;",
            ">;"
        }
    .end annotation
.end field

.field private staticValuesConstant:Lx1/d;

.field private final thisClass:Lx1/e0;

.field private final virtualMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx1/e0;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDataItem;->thisClass:Lx1/e0;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lx1/d;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "thisClass == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static encodeList(Lcom/android/dx/dex/file/DexFile;Lb2/a;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/dex/file/DexFile;",
            "Lb2/a;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/android/dx/dex/file/EncodedMember;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lb2/a;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/EncodedMember;

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/android/dx/dex/file/EncodedMember;->encode(Lcom/android/dx/dex/file/DexFile;Lb2/a;II)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private encodeOutput(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 6

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " class data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dx/dex/file/ClassDataItem;->thisClass:Lx1/e0;

    invoke-virtual {v3}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "static_fields"

    invoke-static {p1, p2, v2, v1}, Lcom/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/android/dx/dex/file/DexFile;Lb2/a;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "instance_fields"

    invoke-static {p1, p2, v3, v1}, Lcom/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/android/dx/dex/file/DexFile;Lb2/a;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v4, "direct_methods"

    invoke-static {p1, p2, v4, v1}, Lcom/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/android/dx/dex/file/DexFile;Lb2/a;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v5, "virtual_methods"

    invoke-static {p1, p2, v5, v1}, Lcom/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/android/dx/dex/file/DexFile;Lb2/a;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-static {p1, p2, v2, v1}, Lcom/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/android/dx/dex/file/DexFile;Lb2/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-static {p1, p2, v3, v1}, Lcom/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/android/dx/dex/file/DexFile;Lb2/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-static {p1, p2, v4, v1}, Lcom/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/android/dx/dex/file/DexFile;Lb2/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-static {p1, p2, v5, v1}, Lcom/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/android/dx/dex/file/DexFile;Lb2/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lb2/a;->i()V

    :cond_1
    return-void
.end method

.method private static encodeSize(Lcom/android/dx/dex/file/DexFile;Lb2/a;Ljava/lang/String;I)V
    .locals 2

    invoke-interface {p1}, Lb2/a;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_size:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v0

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, p2

    const-string p2, "  %-21s %08x"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p3}, Lb2/q;->h(I)I

    return-void
.end method

.method private makeStaticValuesConstant()Lx1/d;
    .locals 6

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/EncodedField;

    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1/a;

    instance-of v2, v1, Lx1/v;

    if-eqz v2, :cond_0

    check-cast v1, Lx1/v;

    invoke-virtual {v1}, Lx1/v;->A()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    new-instance v1, Lx1/d$a;

    invoke-direct {v1, v0}, Lx1/d$a;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/file/EncodedField;

    iget-object v4, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx1/a;

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/android/dx/dex/file/EncodedField;->getRef()Lx1/n;

    move-result-object v3

    invoke-virtual {v3}, Lx1/n;->getType()Ly1/c;

    move-result-object v3

    invoke-static {v3}, Lx1/h0;->a(Ly1/c;)Lx1/a;

    move-result-object v4

    :cond_4
    invoke-virtual {v1, v2, v4}, Lx1/d$a;->z(ILx1/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    new-instance v0, Lx1/d;

    invoke-direct {v0, v1}, Lx1/d;-><init>(Lx1/d$a;)V

    return-object v0
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dx/dex/file/ClassDataItem;->getStaticValuesConstant()Lx1/d;

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/EncodedField;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/EncodedField;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/EncodedField;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/EncodedField;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/EncodedMethod;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/EncodedMethod;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/EncodedMethod;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/EncodedMethod;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public addDirectMethod(Lcom/android/dx/dex/file/EncodedMethod;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addInstanceField(Lcom/android/dx/dex/file/EncodedField;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "field == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addStaticField(Lcom/android/dx/dex/file/EncodedField;Lx1/a;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lx1/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "static fields already sorted"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addVirtualMethod(Lcom/android/dx/dex/file/EncodedMethod;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public debugPrint(Ljava/io/Writer;Z)V
    .locals 6

    invoke-static {p1}, Lb2/u;->a(Ljava/io/Writer;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "]: "

    if-ge v2, v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  sfields["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ifields["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    const-string v3, "]:"

    if-ge v2, v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  dmeths["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/file/EncodedMethod;

    invoke-virtual {v3, p1, p2}, Lcom/android/dx/dex/file/EncodedMethod;->debugPrint(Ljava/io/PrintWriter;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  vmeths["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/file/EncodedMethod;

    invoke-virtual {v2, p1, p2}, Lcom/android/dx/dex/file/EncodedMethod;->debugPrint(Ljava/io/PrintWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public getMethods()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public getStaticValuesConstant()Lx1/d;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lx1/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dx/dex/file/ClassDataItem;->makeStaticValuesConstant()Lx1/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lx1/d;

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lx1/d;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public place0(Lcom/android/dx/dex/file/Section;I)V
    .locals 0

    new-instance p2, Lb2/e;

    invoke-direct {p2}, Lb2/e;-><init>()V

    invoke-virtual {p1}, Lcom/android/dx/dex/file/Section;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/dx/dex/file/ClassDataItem;->encodeOutput(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V

    invoke-virtual {p2}, Lb2/e;->r()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDataItem;->encodedForm:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/OffsettedItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo0(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 1

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/dx/dex/file/ClassDataItem;->encodeOutput(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/dx/dex/file/ClassDataItem;->encodedForm:[B

    invoke-interface {p2, p1}, Lb2/q;->write([B)V

    :goto_0
    return-void
.end method
