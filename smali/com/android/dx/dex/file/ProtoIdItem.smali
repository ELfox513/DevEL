.class public final Lcom/android/dx/dex/file/ProtoIdItem;
.super Lcom/android/dx/dex/file/IndexedItem;
.source "SourceFile"


# instance fields
.field private parameterTypes:Lcom/android/dx/dex/file/TypeListItem;

.field private final prototype:Ly1/a;

.field private final shortForm:Lx1/d0;


# direct methods
.method public constructor <init>(Ly1/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/dx/dex/file/IndexedItem;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/dx/dex/file/ProtoIdItem;->prototype:Ly1/a;

    invoke-static {p1}, Lcom/android/dx/dex/file/ProtoIdItem;->makeShortForm(Ly1/a;)Lx1/d0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/file/ProtoIdItem;->shortForm:Lx1/d0;

    invoke-virtual {p1}, Ly1/a;->l()Ly1/b;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/dx/dex/file/TypeListItem;

    invoke-direct {v0, p1}, Lcom/android/dx/dex/file/TypeListItem;-><init>(Ly1/e;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/dx/dex/file/ProtoIdItem;->parameterTypes:Lcom/android/dx/dex/file/TypeListItem;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static makeShortForm(Ly1/a;)Lx1/d0;
    .locals 4

    invoke-virtual {p0}, Ly1/a;->l()Ly1/b;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ly1/a;->n()Ly1/c;

    move-result-object p0

    invoke-static {p0}, Lcom/android/dx/dex/file/ProtoIdItem;->shortFormCharFor(Ly1/c;)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_0

    invoke-virtual {v0, p0}, Ly1/b;->getType(I)Ly1/c;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/dex/file/ProtoIdItem;->shortFormCharFor(Ly1/c;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lx1/d0;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lx1/d0;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static shortFormCharFor(Ly1/c;)C
    .locals 1

    invoke-virtual {p0}, Ly1/c;->z()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5b

    if-ne p0, v0, :cond_0

    const/16 p0, 0x4c

    :cond_0
    return p0
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->i()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->j()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    iget-object v2, p0, Lcom/android/dx/dex/file/ProtoIdItem;->prototype:Ly1/a;

    invoke-virtual {v2}, Ly1/a;->n()Ly1/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Ly1/c;)Lcom/android/dx/dex/file/TypeIdItem;

    iget-object v1, p0, Lcom/android/dx/dex/file/ProtoIdItem;->shortForm:Lx1/d0;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lx1/d0;)Lcom/android/dx/dex/file/StringIdItem;

    iget-object v0, p0, Lcom/android/dx/dex/file/ProtoIdItem;->parameterTypes:Lcom/android/dx/dex/file/TypeListItem;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/MixedItemSection;->intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/file/TypeListItem;

    iput-object p1, p0, Lcom/android/dx/dex/file/ProtoIdItem;->parameterTypes:Lcom/android/dx/dex/file/TypeListItem;

    :cond_0
    return-void
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public writeSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->i()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/file/ProtoIdItem;->shortForm:Lx1/d0;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lx1/d0;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object p1

    iget-object v1, p0, Lcom/android/dx/dex/file/ProtoIdItem;->prototype:Ly1/a;

    invoke-virtual {v1}, Ly1/a;->n()Ly1/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Ly1/c;)I

    move-result p1

    iget-object v1, p0, Lcom/android/dx/dex/file/ProtoIdItem;->parameterTypes:Lcom/android/dx/dex/file/TypeListItem;

    invoke-static {v1}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/android/dx/dex/file/OffsettedItem;)I

    move-result v1

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/dx/dex/file/ProtoIdItem;->prototype:Ly1/a;

    invoke-virtual {v3}, Ly1/a;->n()Ly1/c;

    move-result-object v3

    invoke-virtual {v3}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " proto("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dx/dex/file/ProtoIdItem;->prototype:Ly1/a;

    invoke-virtual {v3}, Ly1/a;->l()Ly1/b;

    move-result-object v3

    invoke-virtual {v3}, Lb2/f;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    if-eqz v6, :cond_0

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v6}, Ly1/b;->getType(I)Ly1/c;

    move-result-object v7

    invoke-virtual {v7}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/IndexedItem;->indexString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  shorty_idx:      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/dx/dex/file/ProtoIdItem;->shortForm:Lx1/d0;

    invoke-virtual {v4}, Lx1/d0;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-interface {p2, v4, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  return_type_idx: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dx/dex/file/ProtoIdItem;->prototype:Ly1/a;

    invoke-virtual {v3}, Ly1/a;->n()Ly1/c;

    move-result-object v3

    invoke-virtual {v3}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  parameters_off:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_2
    invoke-interface {p2, v0}, Lb2/q;->writeInt(I)V

    invoke-interface {p2, p1}, Lb2/q;->writeInt(I)V

    invoke-interface {p2, v1}, Lb2/q;->writeInt(I)V

    return-void
.end method
