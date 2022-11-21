.class public Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;
.super Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedRecordComponents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase<",
        "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final recordComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
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
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;->recordComponents:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;->get(I)Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;->recordComponents:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;->recordComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
