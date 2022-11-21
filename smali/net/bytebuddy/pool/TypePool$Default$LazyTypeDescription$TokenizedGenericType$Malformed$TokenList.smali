.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType$Malformed$TokenList;
.super Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType$Malformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenList"
.end annotation


# instance fields
.field private final rawTypeDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType$Malformed$TokenList;->typePool:Lnet/bytebuddy/pool/TypePool;

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType$Malformed$TokenList;->rawTypeDescriptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public asErasures()Lnet/bytebuddy/description/type/TypeList;
    .locals 3

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType$Malformed$TokenList;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType$Malformed$TokenList;->rawTypeDescriptors:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType$Malformed$TokenList;->get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType$Malformed;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType$Malformed$TokenList;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType$Malformed$TokenList;->rawTypeDescriptors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType$Malformed;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType$Malformed$TokenList;->rawTypeDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
