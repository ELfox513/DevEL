.class public Lnet/bytebuddy/description/type/RecordComponentList$Explicit;
.super Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnet/bytebuddy/description/type/RecordComponentDescription;",
        ">",
        "Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final recordComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;->recordComponents:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/description/type/RecordComponentDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;->get(I)Lnet/bytebuddy/description/type/RecordComponentDescription;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/RecordComponentDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;->recordComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/RecordComponentDescription;

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;->recordComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
