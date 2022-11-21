.class public final Lcom/android/dx/dex/file/FieldIdItem;
.super Lcom/android/dx/dex/file/MemberIdItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx1/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/MemberIdItem;-><init>(Lx1/x;)V

    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/dx/dex/file/MemberIdItem;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/FieldIdItem;->getFieldRef()Lx1/n;

    move-result-object v0

    invoke-virtual {v0}, Lx1/n;->getType()Ly1/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Ly1/c;)Lcom/android/dx/dex/file/TypeIdItem;

    return-void
.end method

.method public getFieldRef()Lx1/n;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MemberIdItem;->getRef()Lx1/x;

    move-result-object v0

    check-cast v0, Lx1/n;

    return-object v0
.end method

.method public getTypoidIdx(Lcom/android/dx/dex/file/DexFile;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/FieldIdItem;->getFieldRef()Lx1/n;

    move-result-object v0

    invoke-virtual {v0}, Lx1/n;->getType()Ly1/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Ly1/c;)I

    move-result p1

    return p1
.end method

.method public getTypoidName()Ljava/lang/String;
    .locals 1

    const-string v0, "type_idx"

    return-object v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_FIELD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method
