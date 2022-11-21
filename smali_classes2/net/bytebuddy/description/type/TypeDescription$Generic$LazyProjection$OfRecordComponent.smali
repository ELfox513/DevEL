.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfRecordComponent;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfRecordComponent"
.end annotation


# instance fields
.field private final recordComponent:Ljava/lang/Object;

.field private transient synthetic resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfRecordComponent;->recordComponent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->RECORD_COMPONENT:Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfRecordComponent;->recordComponent:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;->getType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedRecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfRecordComponent;->recordComponent:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedRecordComponent;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "resolved"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfRecordComponent;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->RECORD_COMPONENT:Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfRecordComponent;->recordComponent:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;->getGenericType(Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfRecordComponent;->getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfRecordComponent;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfRecordComponent;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_1
    return-object v0
.end method
