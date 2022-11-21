.class public final Lcom/android/dx/dex/file/MethodIdItem;
.super Lcom/android/dx/dex/file/MemberIdItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx1/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/MemberIdItem;-><init>(Lx1/x;)V

    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/dx/dex/file/MemberIdItem;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->g()Lcom/android/dx/dex/file/ProtoIdsSection;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodIdItem;->getMethodRef()Lx1/e;

    move-result-object v0

    invoke-virtual {v0}, Lx1/e;->z()Ly1/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/ProtoIdsSection;->intern(Ly1/a;)Lcom/android/dx/dex/file/ProtoIdItem;

    return-void
.end method

.method public getMethodRef()Lx1/e;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MemberIdItem;->getRef()Lx1/x;

    move-result-object v0

    check-cast v0, Lx1/e;

    return-object v0
.end method

.method public getTypoidIdx(Lcom/android/dx/dex/file/DexFile;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->g()Lcom/android/dx/dex/file/ProtoIdsSection;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodIdItem;->getMethodRef()Lx1/e;

    move-result-object v0

    invoke-virtual {v0}, Lx1/e;->z()Ly1/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/ProtoIdsSection;->indexOf(Ly1/a;)I

    move-result p1

    return p1
.end method

.method public getTypoidName()Ljava/lang/String;
    .locals 1

    const-string v0, "proto_idx"

    return-object v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method
